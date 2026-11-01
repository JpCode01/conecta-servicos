# Frontend quality checklist

Used in design, implementation and verification. Visual direction comes from the `frontend-design` skill; this file lists technical quality gates.

## HTML
- Semantic landmarks (`header`, `nav`, `main`, `footer`), one `h1`, ordered headings.
- `lang="pt-BR"`, charset, viewport meta, unique `title` per page.
- Valid markup (W3C validator when available).

## CSS
- Tokens as custom properties (colors, type, spacing). Avoid selector specificity wars; keep selectors flat.
- Mobile-first, relative units, no horizontal scroll at 320 px.
- Visible `:focus-visible` styles. Hover, focus, active and disabled states defined.
- `@media (prefers-reduced-motion: reduce)` disables non-essential motion.

## JavaScript
- Progressive enhancement: content and navigation work without JS where feasible.
- No unused code, no dependencies without justification, no inline event handlers.
- Menus and dialogs: keyboard operable, focus managed, `aria-expanded` kept in sync.

## Accessibility (WCAG 2.2 AA)
- Contrast: 4.5:1 normal text, 3:1 large text and UI components.
- Everything keyboard operable; logical focus order; focus not hidden by sticky elements (2.4.11).
- Target size at least 24x24 CSS px (2.5.8). Consistent help or contact placement (3.2.6). No redundant entry (3.3.7).
- Images with meaningful `alt` (empty for decorative). Form fields with visible `label`, clear errors.
- Do not rely on color alone. Text can be zoomed to 200% without loss.

## Performance
- Targets (good): LCP ≤ 2.5 s, INP ≤ 200 ms, CLS ≤ 0.1.
- Responsive images (`srcset`, `sizes`), modern formats when supported, explicit `width` and `height`, `loading="lazy"` below the fold, hero image not lazy.
- Limit font files and weights, `font-display: swap`, prefer self-hosting.
- Minimal JavaScript, no render-blocking third-party scripts.

## How to verify
| Check | Executable with |
|---|---|
| HTML validity | W3C validator or `vnu` if available |
| Responsiveness | Browser device mode at 320, 375, 768, 1024, 1440 px |
| Accessibility | Keyboard walkthrough, contrast checks, axe or Lighthouse if available |
| Performance and SEO | Lighthouse if available; otherwise mark NOT RUN |
| Links and forms | Manual or scripted click-through |

Never report a check as PASSED without running it. Tools unavailable in the environment mean NOT RUN, with the reason.
