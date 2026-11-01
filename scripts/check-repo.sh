#!/usr/bin/env bash
# Structural validation of the Website SDD repository. Requires bash and python3.
# On Windows use Git Bash or WSL.
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
python3 - "$root" <<'PY'
import re, sys, pathlib

root = pathlib.Path(sys.argv[1])
errors, warnings = [], []

REQUIRED = [
    "README.md", "TUTORIAL.md", "AGENTS.md", "CLAUDE.md", ".gitignore",
    "workflows/sdd-workflow.md",
    "templates/brief-template.md", "templates/discovery-template.md",
    "templates/spec-template.md", "templates/design-template.md",
    "templates/plan-template.md", "templates/tasks-template.md",
    "templates/report-template.md", "templates/state-template.md",
    "references/sources.md", "references/site-types.md", "references/scope-limits.md",
    "references/frontend-quality.md", "references/seo.md", "references/security-lgpd.md",
    "scripts/sync-skills.sh", "scripts/sync-skills.ps1", "scripts/check-repo.sh",
]
SKILLS = ["website-sdd", "website-discovery", "website-specification",
          "website-architecture", "website-verification"]
GATE_FILES = ["AGENTS.md", "workflows/sdd-workflow.md", ".agents/skills/website-sdd/SKILL.md"]

# 1. Required files
for rel in REQUIRED:
    if not (root / rel).is_file():
        errors.append(f"missing file: {rel}")

# 2. Skills: frontmatter
def frontmatter(text):
    if not text.startswith("---"):
        return None
    end = text.find("\n---", 3)
    if end == -1:
        return None
    data = {}
    for line in text[3:end].strip().splitlines():
        if ":" in line:
            k, v = line.split(":", 1)
            data[k.strip()] = v.strip()
    return data

for name in SKILLS:
    f = root / ".agents/skills" / name / "SKILL.md"
    if not f.is_file():
        errors.append(f"missing skill: {name}")
        continue
    text = f.read_text(encoding="utf-8")
    fm = frontmatter(text)
    if fm is None:
        errors.append(f"{name}: invalid frontmatter")
        continue
    if fm.get("name") != name:
        errors.append(f"{name}: frontmatter name '{fm.get('name')}' differs from directory")
    d = fm.get("description", "")
    if not d:
        errors.append(f"{name}: empty description")
    elif len(d) > 1024:
        errors.append(f"{name}: description over 1024 characters")
    if len(text.splitlines()) > 200:
        warnings.append(f"{name}: SKILL.md over 200 lines (token economy)")

# 3. Mirror .agents/skills == .claude/skills
for name in SKILLS:
    src = root / ".agents/skills" / name
    dst = root / ".claude/skills" / name
    if not src.is_dir():
        continue
    for f in src.rglob("*"):
        if f.is_file():
            g = dst / f.relative_to(src)
            if not g.is_file():
                errors.append(f"mirror missing: .claude/skills/{name}/{f.relative_to(src)} (run scripts/sync-skills.sh)")
            elif f.read_bytes() != g.read_bytes():
                errors.append(f"mirror differs: {name}/{f.relative_to(src)} (run scripts/sync-skills.sh)")

# 4. Text files for link and path checks
md_files = [p for p in root.rglob("*.md") if ".git" + "/" not in p.as_posix()]

path_re = re.compile(r"(?:`|\]\()((?:references|templates|workflows|scripts|\.agents|\.claude)/[^\s`)<>*{}]*)")
link_re = re.compile(r"\[[^\]]*\]\(([^)\s]+)\)")
for p in md_files:
    text = p.read_text(encoding="utf-8")
    rel = p.relative_to(root).as_posix()
    for m in path_re.finditer(text):
        target = m.group(1).split("#")[0].rstrip(".,:;")
        if target and not (root / target).exists():
            errors.append(f"{rel}: broken path reference '{target}'")
    for m in link_re.finditer(text):
        href = m.group(1)
        if href.startswith(("http://", "https://", "mailto:", "#")):
            continue
        t = (p.parent / href.split("#")[0]).resolve()
        if not t.exists():
            errors.append(f"{rel}: broken link '{href}'")

# 5. Absolute paths, personal data
abs_re = re.compile(r"(/home/[A-Za-z0-9_.-]+|/Users/[A-Za-z0-9_.-]+|[A-Za-z]:\\Users)")
email_re = re.compile(r"[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-z]{2,}")
phone_re = re.compile(r"\(\d{2}\)\s?\d{4,5}-\d{4}")
for p in md_files:
    text = p.read_text(encoding="utf-8")
    rel = p.relative_to(root).as_posix()
    if abs_re.search(text):
        errors.append(f"{rel}: absolute machine path")
    for m in email_re.finditer(text):
        if "example" not in m.group(0):
            errors.append(f"{rel}: email address '{m.group(0)}'")
    if phone_re.search(text):
        errors.append(f"{rel}: phone number")

# 6. Gates coherent across rule files
for rel in GATE_FILES:
    f = root / rel
    if f.is_file():
        t = f.read_text(encoding="utf-8")
        for g in ("G1", "G2", "G3"):
            if g not in t:
                errors.append(f"{rel}: gate {g} not mentioned")

# 7. Site code must not live in the template
if (root / "project").exists():
    warnings.append("project/ found: this looks like a project copy, not the clean template")
elif (root / "site").exists():
    errors.append("site/ exists without project/: the template must not contain site files")

# 8. Secrets
for p in root.rglob("*"):
    if p.is_file() and p.name in (".env",) and ".git/" not in p.as_posix():
        errors.append(f"secret file present: {p.relative_to(root)}")

for w in warnings:
    print("WARN ", w)
for e in errors:
    print("ERROR", e)
print(f"\n{len(errors)} error(s), {len(warnings)} warning(s)")
sys.exit(1 if errors else 0)
PY
