# Mirrors .agents/skills (source) into .claude/skills (generated, used by Claude Code).
# Only skills present in the source are replaced; other skills in .claude/skills are left alone.
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$src  = Join-Path $root ".agents/skills"
$dst  = Join-Path $root ".claude/skills"

if (-not (Test-Path $src)) { throw "Source not found: .agents/skills" }
New-Item -ItemType Directory -Force -Path $dst | Out-Null

Get-ChildItem -Directory $src | ForEach-Object {
  $target = Join-Path $dst $_.Name
  if (Test-Path $target) { Remove-Item -Recurse -Force $target }
  Copy-Item -Recurse $_.FullName $target
  Write-Host "synced: $($_.Name)"
}
Write-Host "Done: .agents/skills -> .claude/skills"
