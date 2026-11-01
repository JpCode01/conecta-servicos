# Plan — Conecta Serviços

## 1. Stack

The site will use the default stack:

- semantic HTML5 for the single institutional page;
- CSS3 with custom properties, mobile-first media queries and native layout;
- vanilla JavaScript only for progressive enhancement of the mobile menu and FAQ;
- no build tool, framework, TypeScript or CSS framework.

This stack directly meets the one-page, static-site scope and keeps the page fast,
portable and easy to maintain (FR-07, FR-09, NFR-02, NFR-05, NFR-10).

### Deviations (only if any)

None.

## 2. Directory structure

```text
site/
├── index.html
├── css/
│   ├── tokens.css
│   ├── base.css
│   ├── components.css
│   └── page.css
├── js/
│   └── main.js
├── assets/
│   └── img/
├── robots.txt       # deferred until the final domain is known
└── sitemap.xml      # deferred until the final domain is known
```

The site has one URL, so no page subdirectory is needed. `robots.txt` and `sitemap.xml`
will only be materialized once the canonical domain is supplied; a sitemap without an
absolute final URL would be invalid (NFR-07).

## 3. File responsibilities

| Path | Responsibility | Requirements |
|---|---|---|
| `site/index.html` | Semantic document, pt-BR content, section anchors, contact links, SEO metadata, accessible menu and FAQ markup | FR-01–FR-09, NFR-01, NFR-03, NFR-07, NFR-08 |
| `site/css/tokens.css` | Color, typography, spacing, container, radius and focus tokens from `design.md` | FR-10, NFR-04, NFR-05 |
| `site/css/base.css` | Reset, document defaults, landmarks, typography, focus treatment and reduced-motion baseline | NFR-02–NFR-06, NFR-10 |
| `site/css/components.css` | Header, navigation, buttons, service blocks, process line, FAQ controls, contact links and footer | FR-02, FR-05–FR-08, NFR-04, NFR-10 |
| `site/css/page.css` | Hero composition, section-specific grid, responsive breakpoints and page composition | FR-01, FR-02, FR-10, NFR-02, NFR-05 |
| `site/js/main.js` | Progressive enhancement for menu state, menu focus return and FAQ disclosure state | FR-08, NFR-04, NFR-05, NFR-10 |
| `site/assets/img/` | Only authorized, optimized image assets; the hero may remain CSS/SVG-like markup if decorative | NFR-05, AC-10, AC-15 |
| `site/robots.txt` | Production crawler policy after domain confirmation | NFR-07 |
| `site/sitemap.xml` | Production URL declaration after domain confirmation | NFR-07 |

## 4. CSS strategy

- Define design tokens in `tokens.css`, including the approved colors:
  `#0E4180`, `#092E5C`, `#FFFFFF`, `#70A3D7` and `#9CC2EE`.
- Use the system font stack from `design.md`; do not load external fonts.
- Use mobile-first CSS with a small number of breakpoint ranges:
  `min-width: 48rem` for tablet composition and `min-width: 64rem` for desktop
  navigation/grid.
- Use the 1180 px maximum content container and the spacing scale 8/16/24/32/48/64/96.
- Keep selectors flat and component-oriented; avoid IDs for styling and avoid specificity
  escalation.
- Use CSS Grid for the hero and desktop sections, Flexbox for navigation and inline
  contact groups, and a single-column flow on small screens.
- Define `:hover`, `:focus-visible` and `:active` states without layout shifts.
- Use `scroll-margin-top` for anchored sections if the header is sticky.
- Use `@media (prefers-reduced-motion: reduce)` to remove non-essential transitions.
- Prevent horizontal overflow at 320 px; use relative sizing and `clamp()` for type.

## 5. JavaScript organization

`main.js` will be a small, defer-loaded module-free script because only two behaviors
are needed:

1. mobile navigation toggle, with `aria-expanded`, `aria-controls`, Escape handling and
   focus return to the menu button;
2. FAQ disclosure enhancement, with button-controlled answers and synchronized
   `aria-expanded`/`hidden`.

The HTML navigation remains usable as links without JavaScript. FAQ answers should be
available in the source markup and progressively enhanced; if the disclosure behavior
cannot be initialized, the answers remain readable. No globals, inline event handlers,
`eval`, storage or third-party scripts will be used (FR-08, FR-09, NFR-04, NFR-05,
NFR-09).

## 6. Components and reuse

Reuse only patterns that repeat on this page:

- `site-header` and `mobile-menu`;
- `button-primary` and `contact-link`;
- `service-item`;
- `process-step`;
- `faq-item`;
- `site-footer`.

The three services will share a semantic service-item pattern, but their composition
will vary through layout rather than duplicated card chrome. The hero composition will
remain page-specific to preserve the design direction.

## 7. External dependencies

None.

The system font stack avoids external font requests and privacy transfer. No icon,
analytics, chat widget, map, embed, framework or form service is required by the approved
scope (NFR-05, NFR-09).

## 8. Images and assets

- No portfolio, case-study or testimonial image will be included.
- Reference files in `project/brief-assets/` will not be copied into `site/`.
- The hero visual will use CSS shapes or inline decorative markup created for this site;
  it will be `aria-hidden="true"` if it conveys no information.
- Any later authorized informative image must have a descriptive filename, explicit
  dimensions, an equivalent `alt`, and an appropriate responsive source strategy.
- Images below the fold must use lazy loading; a future meaningful hero image must not
  be lazy loaded.
- There are no font files in the first version (NFR-05, NFR-09, AC-10, AC-15).

## 9. SEO strategy

- Use one `h1`, ordered headings and `lang="pt-BR"`.
- Add a unique pt-BR `title` and `meta description` using approved copy; keep the
  specification placeholders until the business approves final wording.
- Add `meta name="viewport"`, canonical only after the domain is known, and Open Graph
  metadata only when a real share image and final URL are available.
- Use descriptive anchors: `#inicio`, `#servicos`, `#processo`, `#duvidas`, `#contato`.
- Use descriptive link text rather than bare URLs where possible while keeping contact
  destinations available to assistive technology.
- Create `robots.txt` and `sitemap.xml` only after the canonical domain is confirmed.
- Do not add `LocalBusiness` or other structured data because address, hours and
  location scope are not defined.

## 10. Accessibility strategy

- Use `header`, `nav`, `main`, `section` and `footer` landmarks with accessible names
  where needed.
- Keep one `h1` and a logical heading sequence.
- Use real links for WhatsApp, phone, e-mail, Instagram and section navigation.
- Give the menu button an accessible name and keep `aria-expanded` synchronized.
- Implement FAQ controls as real buttons with `aria-controls` and `aria-expanded`.
- Provide visible `:focus-visible` styling with sufficient contrast and a target of at
  least 44 CSS px for primary touch controls.
- Ensure text/background pairs meet WCAG AA; do not use `#70A3D7` for normal text on
  white or blue backgrounds where it fails the required ratio.
- Mark decorative hero shapes as hidden from assistive technology.
- Verify keyboard order, 200% zoom, reduced motion and screen-reader labels (NFR-04,
  NFR-10, AC-08–AC-10).

## 11. Forms and data handling

There is no contact form in the first version. The site collects and stores no visitor
data. Contact intent is handed off to the visitor's WhatsApp, phone, e-mail client or
Instagram through ordinary links.

If a form is requested later, implementation must stop for a scope review because a
static page cannot deliver messages by itself. The project would need a service or
backend, a stated purpose, privacy wording and LGPD review before implementation
(FR-06, NFR-09, AC-11).

## 12. Security

- Keep all content and links free of secrets, tokens and credentials.
- Use no inline script, `eval`, third-party runtime or unnecessary embed.
- Use `rel="noopener noreferrer"` for any external link opened in a new tab.
- Do not open contact links in a new tab unless there is a clear UX reason.
- Treat future external content as untrusted; do not inject it into the DOM.
- Deploy only over HTTPS and configure security headers at the hosting layer when the
  hosting provider is known.
- Do not add cookies, local storage or tracking (NFR-08, NFR-09, AC-11).

## 13. Testing and verification strategy

| Acceptance criteria | Planned verification |
|---|---|
| AC-01–AC-02 | Manual content review of `index.html` and browser review of hero, presentation and exactly three service items |
| AC-03–AC-05 | Manual click-through of all WhatsApp/contact links and section anchors; inspect final href values |
| AC-06 | Content audit against the approved spec; search rendered page for unapproved claims, prices, proof or location data |
| AC-07 | Browser/device checks at 320, 375, 768, 1024 and 1440 px; inspect horizontal overflow |
| AC-08–AC-10 | HTML inspection, keyboard walkthrough, focus review, contrast check and axe/Lighthouse if available |
| AC-11 | Inspect source, network requests and browser storage in a clean session |
| AC-12 | Inspect head metadata and heading tree; run an SEO audit if available |
| AC-13 | Disable JavaScript and repeat navigation, FAQ reading and contact-link checks |
| AC-14 | Run Lighthouse or equivalent mobile performance test; record each metric as PASSED, FAILED or NOT RUN |
| AC-15 | Compare final assets with `project/brief-assets/` and confirm only authorized assets are used |

Validation commands and browser checks will be run during stage 7 and stage 8; this plan
does not claim those checks have already run.

## 14. Deployment target

The target is a static HTTPS host capable of serving the `site/` directory. The hosting
provider, domain, redirect policy and security-header configuration remain
`[PREENCHER: confirm before deployment]`.

Until the domain is known:

- keep canonical metadata and sitemap generation deferred;
- do not claim production indexing;
- use a staging/noindex decision only if a staging host is created.

## 15. Risks and open questions

### Risks

- Missing approved logo, final service copy and process details may leave visible
  placeholders; resolve before publication.
- The final domain is unknown, preventing valid canonical, sitemap and production Open
  Graph URL values.
- A decorative hero built with CSS may be visually insufficient if the business later
  requires a brand asset; keep it replaceable.
- Without portfolio or testimonials, the page must avoid implying proof and rely on clear
  scope/process.
- A future request for a form, analytics or CMS would change privacy, architecture and
  validation requirements.

### Open questions

- What is the approved final logo, or is a typographic mark authorized?
- What exact deliverables and boundaries apply to sites, content and visual identity?
- Which process steps and response expectations can be published?
- Which FAQ answers about price, timing and delivery are authorized?
- What is the final domain and hosting target?
- Should the phone link open only the phone dialer or also offer WhatsApp?

## 16. Traceability

| Requirement | Files | Tasks |
|---|---|---|
| FR-01, FR-02, FR-03, FR-04 | `site/index.html`, `site/css/page.css` | T-01 structure/content, T-04 page sections |
| FR-05, FR-06, FR-07 | `site/index.html`, `site/css/components.css`, `site/js/main.js` | T-03 header/contact, T-05 navigation |
| FR-08, FR-09 | `site/index.html`, `site/js/main.js` | T-05 FAQ enhancement, T-06 no-JS/accessibility pass |
| FR-10 | `site/css/tokens.css`, `site/css/page.css` | T-01 tokens, T-02 visual foundation |
| NFR-01–NFR-03 | `site/index.html`, `site/css/base.css` | T-01 structure/content, T-06 quality pass |
| NFR-04 | `site/css/base.css`, `site/css/components.css`, `site/js/main.js` | T-02 styling, T-05 interactions, T-06 accessibility pass |
| NFR-05–NFR-06 | all `site/` files | T-02 styling/assets, T-07 performance pass |
| NFR-07 | `site/index.html`, deferred `robots.txt`, deferred `sitemap.xml` | T-06 SEO pass |
| NFR-08–NFR-09 | `site/index.html`, `site/js/main.js` | T-03 contact links, T-06 security pass |
| NFR-10 | all `site/` files | T-02 responsive styling, T-06 browser pass |
