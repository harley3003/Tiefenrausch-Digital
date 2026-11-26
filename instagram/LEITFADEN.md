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
**Die Formate wechseln sich ab: Reel → Karussell → Reel → …** (Format = Gegenteil des letzten Eintrags im Log). Reels erreichen neue Leute, Karussells werden gespeichert.

**Musik wird vor dem Posten fest ins Video eingebaut** (seit 26.11.2026). Über die Schnittstelle gepostete Reels ohne Tonspur lassen sich in der App nicht nachträglich vertonen. Nur lizenzfreie Musik von Pixabay ohne „Content ID Registered“; **jedes Reel bekommt einen anderen Track** (Liste: `Musik-lizenzfrei/QUELLEN.md`). Künstler in der Bildunterschrift nennen („Musik: Titel – Künstler / Pixabay“).

**Hintergründe: jedes Mal kreativ und anders.** Kein Post darf denselben schlichten Verlauf wie der vorige haben. Der Hintergrund greift das Thema auf, z. B.:
- **Realistisches Foto** passend zum Thema (Kassenbon, Küche mit Geschirr, Fenster mit Regen, Bett um 3 Uhr nachts …), wenn ein Bild-Werkzeug verbunden ist (Unsplash: freie Fotos; Adobe: KI-Bilder). Foto im Post-Ordner als `bg.jpg` ablegen, mit dunklem Blau-Verlauf überlagern (mind. 55 % Deckkraft), damit der Text gut lesbar bleibt. Bei Unsplash den Fotografen in der Bildunterschrift nennen („Foto: Name / Unsplash“).
- **Gezeichnete Motive** (HTML/CSS/SVG), wenn kein Bild-Werkzeug da ist: z. B. Kassenbon-Papier, Sprechblasen, Wellen/Tiefsee mit Lichtstrahlen, Notizzettel, Uhr, Kalenderblatt, Papierstruktur, Lichtpunkte.
- Markenfarben (Blau + Gold) bleiben als roter Faden erhalten; Text immer gut lesbar, Logo sichtbar.
- Im Log in der Spalte „Thema“ kurz das Hintergrund-Motiv vermerken, damit es sich nicht wiederholt.

### Reel (9:16)
- 1080×1920 px, 6–8 Szenen, gesamt 12–20 Sekunden. Vorlage: `reel-vorlage.html` (Szenen-Logik und sichere Zonen sind dort erklärt).
- Szene 1 = Hook, sofort lesbar (große Schrift, Frage oder starker Satz) – die ersten 2 Sekunden entscheiden.
- Danach baut sich der Inhalt Schritt für Schritt auf (2–3 Sek. pro Szene, genug Zeit zum Lesen), letzte Szene = Logo + „Speichern“ + @tiefenrausch_digital.
- Oben 260 px und unten 440 px freihalten (Instagram-Bedienelemente).
- Ergebnis: `reel.mp4` (ohne Ton) → mit Musik: `reel-musik.mp4` (das wird gepostet), Titelbild = `scene-01.jpg`.

### Karussell (4:5)
- **5–7 Folien**, 1080×1350 px. JPEG für den Upload.
- Aufbau: 1 Hook-Folie (scroll-stoppend, mit „WISCHEN →“) → 3–5 Inhaltsfolien → letzte Folie Call-to-Action (Folgen, Speichern, Kommentar-Frage).
- Design wie `post-01/slides.html`: Hintergrund Tiefseeblau-Verlauf (#15304d → #0b1a2b → #06111d), Gold #e0af5c, Creme #fdf0dc, Grau #a9b6c6; Überschriften Georgia fett, Text Segoe UI; Logo `LOGO.png` (transparent) auf Hook- und CTA-Folie; Fußzeile mit @tiefenrausch_digital und Fortschrittspunkten.
- Nach dem Rendern jede Folie ansehen: nichts darf überlaufen oder sich überlappen, keine großen leeren Flächen.

## Bildunterschrift
- Erste Zeile = Hook. Dann kurzer Nutzen, Kernaussage, Kommentar-Frage, Speichern- und Folgen-Aufruf.
- 10–15 passende deutsche Hashtags am Ende, immer inkl. `#tiefenrausch`.
- Max. 2.200 Zeichen.

## Ablauf pro Post
1. Entwurf im Ordner `instagram/post-NN/` (fortlaufende Nummer): `slides.html` (Karussell) bzw. `reel.html` (Reel) und `caption.txt`.
2. Rendern:
   - Karussell: `render.ps1 -Dir <Ordner> -Count <Folien>`
   - Reel: `render.ps1 -Dir <Ordner> -Count <Szenen> -File reel.html -Prefix scene -Width 1080 -Height 1920`
3. Nur beim Reel: Video bauen mit `videos.ps1 -Dir <Ordner> -Count <Szenen>` (optional `-Durations "2;2.5;…"`).
4. **Freigabe durch den Inhaber einholen. Ohne ausdrückliches „Ja“ wird nichts veröffentlicht.**
5. Nach Freigabe: Claude lädt selbst hoch (GitHub-App verbunden seit 26.11.) – nur `instagram/post-NN` und `posts-log.md` committen (die anderen Ordner unter `instagram/` bleiben privat), `git push`, dann über Windsor veröffentlichen – Reel mit `create_video_post`, Karussell mit `create_carousel_post` (image_url = slide-XX.jpg + alt_text je Folie) – mit raw.githubusercontent.com-URLs (an den Commit-Hash gebunden).
6. Eintrag in `posts-log.md` ergänzen (Status, Link).
