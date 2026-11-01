# Site types

Guidance for spec and design. Sections are starting points, not mandatory. Never invent data; mark gaps with `[PREENCHER: ...]`.

| Type | Main goal | Typical sections | Data the business must supply |
|---|---|---|---|
| Landing page | One conversion | Hero with offer, benefits, proof, how it works, FAQ, final call to action | Offer, contact channel, real proof |
| Company site | Credibility and contact | Home, about, services, differentials, contact | History, services, contact, team (optional) |
| Restaurant | Visits, reservations, orders | Home, menu, location and hours, gallery, contact | Menu and prices, hours, address, photos |
| Salon and aesthetics | Bookings | Home, services and prices, team, gallery, location, booking channel | Services, prices, hours, booking channel, photos |
| Shop and small commerce | Visits and contact | Home, products or categories, location, contact | Product list, hours, address, contact |
| Service provider | Quote requests | Home, services, how it works, portfolio, contact | Services, area served, contact, real work samples |
| Commercial multi-page | Present offer | Presentation, products, services, contact, optional blog or FAQ | Per-page content |

## Common patterns
- Mobile first: most visitors arrive from a phone. Primary action (WhatsApp, call, directions) stays reachable.
- Local businesses benefit from address, hours, map link and `LocalBusiness` structured data, only with real data.
- Online checkout, accounts, availability-based booking or a CMS are out of default scope: see `scope-limits.md`.
