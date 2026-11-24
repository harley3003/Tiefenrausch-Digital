# Instagram-Leitfaden – Tiefenrausch Digital

Konto: **@tiefenrausch_digital** (Instagram Business, verbunden über Windsor.ai, Account-ID `17841454925616709`)

## Worum es geht
Ratgeber für den Alltag, in drei Themensäulen:
1. **Konflikte lösen** – Partnerschaft, Familie, Freunde, Kollegen; Kommunikation, Streitkultur, Versöhnung.
2. **Psyche stärken** – Stress, Grübeln, Überforderung, Selbstwert, Achtsamkeit (alltagstauglich, keine Diagnosen, keine Therapieversprechen).
3. **Geld & Sparen** – Spartipps, Budget, Konsumverhalten, bewusster Umgang mit Geld (keine Anlage- oder Finanzprodukt-Empfehlungen, keine Aktien/Krypto).

Die Säulen rotieren, damit kein Thema zweimal hintereinander kommt (siehe `posts-log.md`).

## Ton
- Deutsch, Du-Form, warm, ehrlich, praktisch, ohne Fachchinesisch.
- Jeder Post liefert **konkreten Nutzen**, den man heute umsetzen kann.
- Keine reißerischen Versprechen, keine Angstmache. Bei psychischen Themen bei Bedarf Hinweis auf professionelle Hilfe (z. B. TelefonSeelsorge 0800 111 0 111).

## Format
- **Karussell, 5–7 Folien**, 1080×1350 px (4:5), JPEG für den Upload.
- Aufbau: 1 Hook-Folie (scroll-stoppend, mit „WISCHEN →“) → 3–5 Inhaltsfolien → letzte Folie Call-to-Action (Folgen, Speichern, Kommentar-Frage).
- Design wie `post-01/slides.html`: Hintergrund Tiefseeblau-Verlauf (#15304d → #0b1a2b → #06111d), Gold #e0af5c, Creme #fdf0dc, Grau #a9b6c6; Überschriften Georgia fett, Text Segoe UI; Logo `LOGO.png` (transparent) auf Hook- und CTA-Folie; Fußzeile mit @tiefenrausch_digital und Fortschrittspunkten.
- Nach dem Rendern jede Folie ansehen: nichts darf überlaufen oder sich überlappen, keine großen leeren Flächen.

## Bildunterschrift
- Erste Zeile = Hook. Dann kurzer Nutzen, Kernaussage, Kommentar-Frage, Speichern- und Folgen-Aufruf.
- 10–15 passende deutsche Hashtags am Ende, immer inkl. `#tiefenrausch`.
- Max. 2.200 Zeichen.

## Ablauf pro Post
1. Entwurf im Ordner `instagram/post-NN/` (fortlaufende Nummer): `slides.html`, `slide-0X.png`, `caption.txt`.
2. Rendern mit `instagram/render.ps1 -Dir <Ordner> -Count <Anzahl>`.
3. **Freigabe durch den Inhaber einholen. Ohne ausdrückliches „Ja“ wird nichts veröffentlicht.**
4. Nach Freigabe: JPEGs erzeugen (passiert in render.ps1), committen, `git push`, dann über Windsor `create_carousel_post` mit raw.githubusercontent.com-URLs (an den Commit-Hash gebunden) und Alt-Texten veröffentlichen.
5. Eintrag in `posts-log.md` ergänzen (Status, Link).
