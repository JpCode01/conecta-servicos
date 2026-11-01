# Tasks — Conecta Serviços

<!-- English. Each task needs its own user authorization before implementation. -->

## T-01 — Creating the semantic page structure

- **Objective:** Build the single-page HTML foundation and approved Portuguese content structure.
- **Description:** Create the semantic document with `lang="pt-BR"`, metadata placeholders, header, navigation, hero, presentation, services, process, FAQ, contact and footer sections. Add the approved contact destinations and the three confirmed services without inventing business data.
- **Files:** `site/index.html`
- **Depends on:** none
- **Acceptance criteria:** AC-01, AC-02, AC-03, AC-04, AC-05, AC-06, AC-08, AC-12
- **Validation:** Inspect the HTML structure and content; check one `h1`, heading order, section IDs, contact `href` values and absence of unapproved claims.
- **Status:** done
- **Notes / problems:** Final logo, service copy, process copy, FAQ answers, title and meta description remain placeholders until approved. CSS and JavaScript are deferred to later authorized tasks.

## T-02 — Establishing design tokens and base styles

- **Objective:** Implement the visual foundation from the approved design.
- **Description:** Add the custom-property token system, system font stack, reset, typography, container, spacing scale, semantic defaults, focus-visible treatment, contrast-safe text colors and reduced-motion baseline.
- **Files:** `site/css/tokens.css`, `site/css/base.css`
- **Depends on:** T-01
- **Acceptance criteria:** AC-07, AC-08, AC-09, AC-10, AC-12
- **Validation:** Review computed styles at the five required widths; check focus visibility, color contrast, text zoom behavior and reduced-motion behavior.
- **Status:** done
- **Notes / problems:** Base styles created. Component and page-specific styling are deferred to later authorized tasks.

## T-03 — Styling the header, navigation and contact controls

- **Objective:** Style the persistent navigation and all primary/secondary contact actions.
- **Description:** Implement desktop and mobile header layouts, menu button presentation, primary WhatsApp button, phone/e-mail/Instagram links and footer contact presentation according to the design.
- **Files:** `site/css/components.css`, `site/css/page.css`
- **Depends on:** T-01, T-02
- **Acceptance criteria:** AC-03, AC-04, AC-05, AC-07, AC-09
- **Validation:** Click through all contact and anchor links; verify visual states, touch target sizes, keyboard focus and no horizontal overflow at 320 px.
- **Status:** done
- **Notes / problems:** CTA label remains consistent as “Falar no WhatsApp”. Removed the base `body` minimum width after responsive validation exposed horizontal overflow at 320 px.

## T-04 — Building the hero and content sections

- **Objective:** Apply the distinctive “Conexão em camadas” composition to the page content.
- **Description:** Style the hero, presentation, three service items, process sequence, FAQ layout, contact panel and footer. Create the decorative three-plane hero visual without copying reference assets.
- **Files:** `site/css/page.css`, `site/css/components.css`
- **Depends on:** T-02, T-03
- **Acceptance criteria:** AC-01, AC-02, AC-05, AC-06, AC-07, AC-15
- **Validation:** Review the page against the approved design wireframes at 320, 375, 768, 1024 and 1440 px; compare used assets with `project/brief-assets/`.
- **Status:** done
- **Notes / problems:** No portfolio, testimonials, metrics, prices, address or unsupported claims may be introduced.

## T-05 — Adding progressive menu and FAQ behavior

- **Objective:** Enhance interaction without making content or navigation depend on JavaScript.
- **Description:** Implement the mobile menu toggle with synchronized ARIA state, Escape handling and focus return; implement FAQ disclosure controls with synchronized `aria-expanded` and `hidden`.
- **Files:** `site/js/main.js`, `site/index.html`, `site/css/page.css`
- **Depends on:** T-03, T-04
- **Acceptance criteria:** AC-05, AC-09, AC-13
- **Validation:** Use mouse, touch and keyboard; test Enter, Space and Escape; disable JavaScript and confirm content, anchors and contact links remain usable.
- **Status:** done
- **Notes / problems:** Uses a scoped IIFE, native `details` fallback and no storage, `eval` or third-party scripts. The mobile menu visibility rule was added to `page.css` because the behavior requires a visible progressive-enhancement control.

## T-06 — Completing accessibility, SEO and security checks

- **Objective:** Close the quality requirements before performance verification.
- **Description:** Replace approved placeholders where available, review metadata and headings, verify link security attributes, check decorative/informative asset semantics, confirm no unauthorized tracking or data collection, and resolve accessibility issues.
- **Files:** `site/index.html`, `site/css/base.css`, `site/css/components.css`, `site/js/main.js`
- **Depends on:** T-05
- **Acceptance criteria:** AC-06, AC-08, AC-09, AC-10, AC-11, AC-12, AC-13
- **Validation:** Run HTML/accessibility checks when available; perform keyboard and 200% zoom walkthrough; inspect source, network requests and browser storage in a clean session.
- **Status:** done
- **Notes / problems:** No approved SEO title or meta description was available, so those placeholders remain. Canonical, Open Graph image, `robots.txt` and `sitemap.xml` remain deferred until the final domain and share asset are known.

## T-07 — Verifying performance and responsive behavior

- **Objective:** Measure the finished page against the documented performance and browser targets.
- **Description:** Run responsive browser checks, inspect overflow and layout stability, optimize any authorized asset that causes a measurable issue, and run Lighthouse or an equivalent mobile performance audit when available.
- **Files:** `site/index.html`, `site/css/tokens.css`, `site/css/base.css`, `site/css/components.css`, `site/css/page.css`, `site/assets/img/`
- **Depends on:** T-06
- **Acceptance criteria:** AC-07, AC-10, AC-14, AC-15
- **Validation:** Test 320, 375, 768, 1024 and 1440 px; record LCP, INP and CLS as PASSED, FAILED or NOT RUN; confirm no unauthorized reference assets are shipped.
- **Status:** done
- **Notes / problems:** Responsive and overflow checks PASSED at 320, 375, 768, 1024 and 1440 px; LCP observed at 76 ms and CLS at 0 in the local browser check; reduced-motion check PASSED. INP p75 is NOT RUN because only synthetic local events were available (maximum observed event duration: 32 ms). Lighthouse is NOT RUN because it is unavailable. `check-repo.sh` reports the authorized project e-mail addresses as repository scan errors.

## T-08 — Adding the brand icon to the header and favicon

- **Objective:** Use the authorized brand icon consistently in the site header and browser tab.
- **Description:** Copy `project/brief-assets/icone-site.png` to the public site assets, render it inside the header brand link with an accessible label, and register it as the PNG favicon.
- **Files:** `site/assets/icone-site.png`, `site/index.html`, `site/css/components.css`
- **Depends on:** T-07
- **Acceptance criteria:** AC-03, AC-07, AC-09, AC-12
- **Validation:** Confirm the header image and favicon load locally, verify the brand link remains keyboard accessible, check responsive overflow at the required widths, and run `git diff --check`.
- **Status:** done
- **Notes / problems:** The source asset remains in `project/brief-assets/`; the public copy is referenced with a relative URL from `site/index.html`.

## T-09 — Replacing the header icon

- **Objective:** Replace only the header logo asset with the newly authorized higher-contrast icon.
- **Description:** Copy `project/brief-assets/icone-cabecalho.png` to the public site assets and update the header image source, while keeping the existing `icone-site.png` favicon and all other page content unchanged.
- **Files:** `site/assets/icone-cabecalho.png`, `site/index.html`
- **Depends on:** T-08
- **Acceptance criteria:** AC-03, AC-07, AC-09, AC-12
- **Validation:** Confirm the header uses `icone-cabecalho.png`, confirm the favicon still uses `icone-site.png`, verify both assets load locally, check responsive overflow at the required widths, and run `git diff --check`.
- **Status:** done
- **Notes / problems:** The public copy is referenced with a relative URL from `site/index.html`; no CSS, footer logo, content or favicon changes were made.
