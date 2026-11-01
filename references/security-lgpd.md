# Security and LGPD

Not legal advice. Flag topics and recommend legal review when the business collects personal data.

## Security
- No secrets in the repository. `.env.example` for variables, real `.env` ignored.
- External links to new tabs use `rel="noopener noreferrer"`.
- Avoid inline scripts and `eval`; if a Content Security Policy is used, document it in `plan.md`.
- Third-party scripts, embeds and fonts are dependencies: justify, pin versions, check privacy impact.
- Serve over HTTPS; set the hosting security headers the platform allows.
- Treat user input in forms as untrusted; validate client-side for UX and server-side wherever a server exists.

## LGPD (Lei 13.709/2018)
- Collect only the data needed for a stated purpose; state the purpose near the form.
- Websites with forms or tracking need a privacy policy written for the business: leave `[PREENCHER: ...]` for controller identity and contact; do not invent them.
- No analytics, pixels or non-essential cookies without authorization and a defined purpose; if present, consent and an opt-out are needed.
- Google Maps, YouTube, social embeds and external fonts transfer visitor data to third parties. Prefer links, static map images or self-hosted fonts, or document the choice.
- Do not store form data in the browser without need.
- Cookie banner only when non-essential cookies exist.
