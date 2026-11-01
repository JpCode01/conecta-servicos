# Scope limits

Default scope: static institutional and commercial sites. When a requirement goes beyond it, stop, explain the implications in pt-BR, offer options and wait for the user's decision. Record the decision in `project/STATE.md`.

| Requirement | Implication | Options to present |
|---|---|---|
| Contact form that sends messages | A static site cannot send email by itself; needs a service or backend; personal data handling (LGPD) | WhatsApp or mailto link; third-party form service (privacy and cost review); small backend (out of default scope) |
| User accounts, login, member areas | Backend, database, authentication, security and LGPD obligations | Link to an external system; separate project |
| Online payments, cart, checkout | Payment provider, backend, fiscal and security obligations | Payment link from a provider; hosted store platform; separate project |
| Booking with real-time availability | Backend and calendar logic | Embed or link to a booking service; WhatsApp booking |
| Admin panel or CMS | Backend or headless CMS, authentication, workflow | Content edited in files; hosted CMS evaluated at G3 |
| Large catalog or blog needing frequent updates | Manual updates become costly; may need generation or CMS | Static pages with a documented update process; CMS evaluated at G3 |
| Multiple languages | Content, SEO and maintenance multiply | Single language now; structure ready for later |
| Analytics, ads pixels, chat widgets | Third-party tracking, cookies, LGPD consent | Only with explicit authorization and defined purpose |
| Custom backend, API, database | Different architecture, hosting and security | Separate project outside this framework |

If a requirement is not listed, apply the same reasoning: state what exceeds scope, why, and the lightest alternative.
