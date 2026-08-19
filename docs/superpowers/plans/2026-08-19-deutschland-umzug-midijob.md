# Deutschland-Umzug Midi-Job Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Björn landet in München als alleiniger Gesellschafter (keine Organfunktion) mit Früh-Midi-Job (18–22 Std, Ende ≤12:00), gesetzlicher KV ohne Lücke und Monatsrechnung ohne Puffer-Konsum.

**Architecture:** Zuerst Papier und Kasse (sonst bindet die WG die falsche KV). Parallel Bewerbungs-Kit und Welle 1 über mindestens vier Branchen. Einreise: anmelden → Kasse → Steuer → Job unterschreiben → erst dann langfristig wohnen. 30/90-Tage-Gates und Leipzig-Switch sind fest verdrahtet, keine Bauchentscheidung.

**Tech Stack:** Spec `docs/superpowers/specs/2026-08-18-deutschland-umzug-midijob-design.md`; Checklisten unter `docs/superpowers/plans/checklists/`; GKV (AOK Bayern oder TK); Finanzamt München; Jobportale Indeed/Stepstone plus Zeitarbeit; Bürgerbüro München.

## Global Constraints

- Midi-Job 18–22 Std/Woche, Brutto 603,01–2.000 €, Schichtende ≤12:00, keine Dienste nach 13:00.
- München zuerst (WG warm 750–950 €); Leipzig nur nach Abort-Regel.
- Nur Gesellschafter, keine Organ-/Geschäftsführerfunktion; Dividende, kein GF-Gehalt; Alltag = Vertrag.
- K1 anstreben (KV über den Job), schriftlich vor langfristigem Mietvertrag; bei Einreise keine KV-Lücke.
- Kein Mini-Job, kein Gig (Flex/Uber/Scooter), kein Amazon-FC-Default, kein Automotive-Vollzeit 5:45–15:00, kein Auto, kein 2.500–3.300-€-Lifestyle.
- Puffer bleibt Reserve; laufender Monat: Dividende netto + Lohn netto − Leben ≥ 0.

---

### Task 1: Gesellschaft und Alltag deckungsgleich machen

**Files:**
- Create: `docs/superpowers/plans/checklists/01-gesellschaft-status.md`

**Interfaces:**
- Consumes: Spec §§ 3, 4, 7.1–7.2
- Produces: `GESELLSCHAFTER_STATUS` — eine Seite, die die Kasse und der Steuerberater unverändert als Anlage bekommen

- [ ] **Step 1: Fail-Check**

Datei `docs/superpowers/plans/checklists/01-gesellschaft-status.md` existiert nicht. Erwartet: fehlend.

- [ ] **Step 2: Datei anlegen** mit genau diesem Inhalt:

```markdown
# Gesellschafter-Status adm.doctor S.A.

Stand: [Datum]

- Rolle: ausschließlich Gesellschafter.
- Gesellschaftsvertrag: keine Organ-, Direktor-, CTO- oder Geschäftsführerfunktion, keine Prokura.
- Alltag: Team in Brasilien führt operativ. Kein On-Call, keine Mitarbeiterführung, kein Tagesgeschäft.
- Kontakt: unregelmäßig, nicht im deutschen Frühfenster (5:30–12:00).
- Geldfluss: nur Dividende, kein Geschäftsführergehalt.
- Falls der Vertrag noch eine Leitungsrolle nennt: vor dem KV-Brief streichen. Nicht den Titel streichen und faktisch weiter leiten.
```

- [ ] **Step 3: Human — Vertrag prüfen**

Gesellschaftsvertrag auf Organ-/Geschäftsführertitel durchsuchen. Wenn vorhanden: Änderung beauftragen, **bevor** Task 2 rausgeht. Wenn schon sauber: in der Datei das Datum setzen.

- [ ] **Step 4: Verify**

Datei existiert; drei Sätze stehen wörtlich darin: „ausschließlich Gesellschafter“, „nur Dividende“, „kein On-Call“.

- [ ] **Step 5: Commit**

```bash
git add docs/superpowers/plans/checklists/01-gesellschaft-status.md
git commit -m "Add shareholder-status sheet for KV and tax."
```

---

### Task 2: KV-Sachverhalt schreiben und absenden

**Files:**
- Create: `docs/superpowers/plans/checklists/02-kv-sachverhalt.md`

**Interfaces:**
- Consumes: `GESELLSCHAFTER_STATUS`
- Produces: `KV_BRIEF` — sendefertiger Text plus Adresse

Kasse: **AOK Bayern** (Wohnsitz München nach Anmeldung) oder **TK**, wenn bereits frühere Mitgliedschaft. Eine wählen, nicht beide parallel mit widersprüchlichem Sachverhalt.

- [ ] **Step 1: Fail-Check** — `02-kv-sachverhalt.md` fehlt.

- [ ] **Step 2: Datei anlegen** mit diesem Brief (Absender/Anschrift nach Wahl der Kasse ersetzen):

```markdown
# KV-Sachverhalt

Kasse: [AOK Bayern | Techniker Krankenkasse]
Weg: Mitgliederservice schriftlich (Portal oder Einschreiben), Betreff wie unten.

---

[Name]
[Anschrift DE sobald vorhanden, sonst BR mit Hinweis „Zuzug München geplant [Monat]“]
Mitgliedsnummer falls vorhanden: […]

Betreff: Versicherungsrechtliche Einordnung bei Zuzug — Gesellschafter einer brasilianischen S.A. plus geplante Midi-Beschäftigung

Sehr geehrte Damen und Herren,

ich bin deutscher Staatsangehöriger und ziehe nach München. Ich bitte um eine **schriftliche** Einschätzung meines Status in der gesetzlichen Krankenversicherung.

Sachverhalt:

1. Ich bin Gesellschafter der brasilianischen Aktiengesellschaft adm.doctor S.A. Im Gesellschaftsvertrag ist **keine** Organ-, Geschäftsführer- oder vergleichbare Leitungsfunktion hinterlegt. Ich übe keine operative Leitung aus (kein On-Call, keine Mitarbeiterführung, kein Tagesgeschäft). Das Team vor Ort führt die Gesellschaft.
2. Persönliche Einnahmen aus der Gesellschaft sind **Dividenden** (Kapitalertrag), kein Arbeitslohn und kein Geschäftsführergehalt. Höhe derzeit ca. R$ 5.000 im Monat.
3. Ich beabsichtige in München eine **abhängige Beschäftigung** im Übergangsbereich: 18–22 Wochenstunden, regelmäßiges Arbeitsentgelt zwischen 603,01 € und 2.000 €, Arbeitszeit ausschließlich vormittags, Schichtende spätestens 12:00 Uhr.

Bitte teilen Sie schriftlich mit:

- Ob ich mit Aufnahme dieser Beschäftigung versicherungspflichtig nach § 5 Abs. 1 Nr. 1 SGB V bin, und
- ob Sie eine hauptberuflich selbstständige Tätigkeit nach § 5 Abs. 5 SGB V annehmen, insbesondere wegen der Gesellschafterstellung oder wegen Mitarbeitern der S.A.

Anlage: Kurzdarstellung Gesellschafter-Status.

Mit freundlichen Grüßen
[Name]
```

- [ ] **Step 3: Human — senden**

Brief + `01-gesellschaft-status.md` an die gewählte Kasse. Eingangsbestätigung oder Sendungsnummer in `02-kv-sachverhalt.md` unter `Gesendet: [Datum / Kanal / Referenz]` ergänzen.

- [ ] **Step 4: Verify**

Datei enthält den §-5-Abs.-5-Satz. `Gesendet:` ist ausgefüllt. Keine KV-Lücken-Annahme „wird schon“.

- [ ] **Step 5: Commit**

```bash
git add docs/superpowers/plans/checklists/02-kv-sachverhalt.md
git commit -m "Add GKV status letter for the Brazil dividend plus midi-job setup."
```

---

### Task 3: Steuerberater-Briefing

**Files:**
- Create: `docs/superpowers/plans/checklists/03-steuer-dividende.md`

**Interfaces:**
- Consumes: `GESELLSCHAFTER_STATUS`
- Produces: `STEUER_BRIEFING` — eine Seite für den Termin

- [ ] **Step 1: Fail-Check** — Datei fehlt.

- [ ] **Step 2: Datei anlegen:**

```markdown
# Steuer-Briefing Dividende BR → DE

Auftrag an Steuerberater (München, international / DBA Brasilien):

- Qualifikation der R$ 5.000 als Dividende (Kapitalertrag), nicht als Arbeitslohn.
- Abgeltungsteuer, Solidaritätszuschlag, DBA Brasilien: Anrechnung ausländischer Steuer.
- Bankweg: Konto DE für den Eingang; Mitteilungspflicht gegenüber der Bank (Herkunft).
- Nach Anmeldung: Steuer-ID, Veranlagung vs. Abgeltung, Kirchensteuer ja/nein.
- Planwert zum Leben: 650–750 € netto/Monat; Abweichung schriftlich schätzen lassen.

Nicht fragen: ob die Kasse mich als selbstständig führt (das ist Task 2).
```

- [ ] **Step 3: Human — Termin**

Steuerberater mit DBA-Erfahrung buchen (DATEV-Suche „international“, Stichwort Brasilien/Auslandskapital). Briefing als PDF/Mail vorher schicken.

- [ ] **Step 4: Verify**

`Termin: [Datum]` und `Berater: [Name]` stehen in der Datei. Planwert 650–750 € ist als Annahme markiert, nicht als Gesetz.

- [ ] **Step 5: Commit**

```bash
git add docs/superpowers/plans/checklists/03-steuer-dividende.md
git commit -m "Add tax briefing for Brazilian dividend treatment in Germany."
```

---

### Task 4: Bewerbungs-Kit (Filter, Satz, Tracker)

**Files:**
- Create: `docs/superpowers/plans/checklists/04-bewerbung-kit.md`
- Create: `docs/superpowers/plans/checklists/04-bewerbungs-tracker.md`

**Interfaces:**
- Consumes: Spec §§ 8.1–8.5
- Produces: `BEWERBUNG_SATZ` (string, unverändert in jede Bewerbung) und Tracker-Tabelle

- [ ] **Step 1: Fail-Check** — beide Dateien fehlen.

- [ ] **Step 2: `04-bewerbung-kit.md` anlegen:**

```markdown
# Bewerbungs-Kit

## Pflichtsatz (in jede Bewerbung, unverändert)

Teilzeit 18–22 Std, ausschließlich Vormittag, Schichtende spätestens 12:00, sozialversicherungspflichtig (kein Mini-Job).

## Sofort-Nein (nicht bewerben)

Amazon-FC, Amazon Flex, DHL/Brief-Zustellung, Hort/Ganztag, Museum ab 10:00, Abendgastro, Theater/Kino, Scooter/Uber, Flughafen-Vollschicht mit ZÜP als Erstversuch, Bäckerei-Schicht unter 4 Std, Mensa 30+ Std ungefiltert, Praxis mit Pflicht bis 19:00, Automotive-Vollzeit 5:45–15:00.

## Midi-Rechnung vor Klick

Stundenlohn × Wochenstunden × 4,33 muss zwischen 603,01 und 2.000 liegen.
Beispiel: 19 € × 20 × 4,33 ≈ 1.645 € (Midi, ok). 19 € × 35 × 4,33 ≈ 2.879 € (raus).
```

- [ ] **Step 3: `04-bewerbungs-tracker.md` anlegen** mit Kopf und null Datenzeilen:

```markdown
# Tracker

| Datum | Branche | Arbeitgeber | Uhrzeiten laut Inserat | Std/Woche | €/h | Ende≤12? | Midi? | Status | Nächster Schritt |
|---|---|---|---|---|---|---|---|---|---|
```

Branche nur Werte aus Spec § 8.2. Status nur: `offen` | `gefragt` | `beworben` | `gespräch` | `angebot` | `absage` | `vertrag`.

- [ ] **Step 4: Verify**

Pflichtsatz kommt in `04-bewerbung-kit.md` genau einmal vor. Tracker hat 10 Spalten. Sofort-Nein enthält `Automotive-Vollzeit`.

- [ ] **Step 5: Commit**

```bash
git add docs/superpowers/plans/checklists/04-bewerbung-kit.md docs/superpowers/plans/checklists/04-bewerbungs-tracker.md
git commit -m "Add midi-job application filter, cover sentence, and tracker."
```

---

### Task 5: Welle 1 — acht Bewerbungen, vier Branchen

**Files:**
- Modify: `docs/superpowers/plans/checklists/04-bewerbungs-tracker.md`

**Interfaces:**
- Consumes: `BEWERBUNG_SATZ`, Spec § 8.3 Punkt 1 und § 10 Punkt 4
- Produces: mindestens 8 Tracker-Zeilen mit Status `beworben`, mindestens die Branchen `Alltagsbegleitung / ambulante Seniorenhilfe`, `Hotellerie`, `Gemeinschaftsverpflegung`, `Lebensmittelindustrie` (oder `Automotive-Montage (Band)` nur wenn Teilzeit-Vormittag schriftlich im Inserat steht)

Startadressen (Human klickt, Inserate ändern sich; Filter gilt trotzdem):

1. Alltagsbegleitung: Home Instead / Caritas München / AWO München Karriere — Suche `Teilzeit Vormittag`.
2. Hotellerie: Motel One, Premier Inn, Holiday Inn München — `Frühstück Teilzeit`.
3. Gemeinschaftsverpflegung: Studierendenwerk München Oberbayern Karriere; Münchenstift; Klinik-Küche LMU / r. d. Isar — nur wenn auf 18–22 Std / Ende 12:00 runterverhandelbar.
4. Produktion/Verpackung: Mail an Zeitarbeit mit Pflichtsatz, z. B. Formel Zeitarbeit `bewerbung-m@formel-zeitarbeit.de`; Adecco/Randstad/Hofmann/Franz & Wach/Orizon München. Text:

```
Ich suche eine sozialversicherungspflichtige Teilzeit (18–22 Std/Woche) als Produktionshelfer oder in der Verpackung, Schicht 6:00–12:00, nicht Vollzeit, nicht 2-Schicht. Wohnortziel München.
```

- [ ] **Step 1: Fail-Check**

Tracker hat 0 Zeilen mit Status `beworben`. Erwartet: leer.

- [ ] **Step 2: Human — acht Bewerbungen in zwei Wochen**, jede mit Pflichtsatz. Keine zweite Bewerbung in dieselbe Branche, bevor vier Branchen je mindestens eine Zeile haben.

- [ ] **Step 3: Jede Bewerbung sofort als Zeile eintragen** (kein Stapel am Sonntag).

- [ ] **Step 4: Verify**

```
beworben-Zeilen ≥ 8
distinct Branche ≥ 4
keine Zeile mit Amazon oder 5:45–15:00 Vollzeit
```

- [ ] **Step 5: Commit**

```bash
git add docs/superpowers/plans/checklists/04-bewerbungs-tracker.md
git commit -m "Record first-wave morning midi-job applications."
```

---

### Task 6: Landungs-Checkliste (Anmeldung vor Miete)

**Files:**
- Create: `docs/superpowers/plans/checklists/06-landung-14-tage.md`

**Interfaces:**
- Consumes: Spec § 7.4, § 10
- Produces: `LANDUNG_CHECKLISTE` mit Reihenfolge, die nicht umgedreht werden darf

- [ ] **Step 1: Fail-Check** — Datei fehlt.

- [ ] **Step 2: Datei anlegen:**

```markdown
# Landung 14 Tage (Reihenfolge bindend)

Tag 0 — Mitbringen: Reisepass oder Personalausweis, Wohnungsgeberbestätigung (auch Zwischenmiete/Airbnb mit schriftlicher Bestätigung), Gesellschaftsstatus-Blatt, KV-Brief-Kopie.

1. Bürgerbüro München: Anmeldung. Ohne Anmeldung keine Steuer-ID-Automatik und schlechte KV-Lage.
2. Krankenkasse: Mitgliedschaft / Auffang **am selben oder nächsten Werktag**. Kein Tag ohne Versicherung. Bis Midi-Job startet: Auffang oder freiwillig, aus Puffer.
3. Finanzamt / Steuer-ID; Steuerberater (Task 3) mit neuer Anschrift nachziehen.
4. Jobsuche Welle 1 weiter (Task 5), nicht pausieren für Wohnungssuche in Toplagen.
5. Arbeitsvertrag erst prüfen (Task 7), dann unterschreiben.
6. Erst danach WG/Untermiete auf den **konkreten** Schichtweg zuschneiden. Warm ≤ 950 €. Früh-ÖPNV vor 6:00 (Giesing, Ramersdorf, Neuperlach, Laim, Pasing; Umland nur mit nachgewiesenem Frühverkehr).

Verboten in den 14 Tagen: unbefristeter Mietvertrag ohne Jobadresse; Mini-Job „übergangsweise“; Gig-Apps.
```

- [ ] **Step 3: Verify** — Satz „Erst danach WG“ steht nach „Arbeitsvertrag“. KV-Lücke ist als verboten markiert.

- [ ] **Step 4: Commit**

```bash
git add docs/superpowers/plans/checklists/06-landung-14-tage.md
git commit -m "Add 14-day Munich landing sequence with KV-before-lease order."
```

---

### Task 7: Vertragsprüfung vor Unterschrift

**Files:**
- Create: `docs/superpowers/plans/checklists/07-vertrag-pruefung.md`

**Interfaces:**
- Consumes: Spec § 8.4
- Produces: `VERTRAG_GATE` — alle Fragen müssen `ja` sein, sonst nicht unterschreiben

- [ ] **Step 1: Fail-Check** — Datei fehlt.

- [ ] **Step 2: Datei anlegen:**

```markdown
# Vertrag — nur unterschreiben wenn alles ja

- [ ] Arbeitsentgelt regelmäßig 603,01–2.000 €/Monat
- [ ] 18–22 Wochenstunden (25 nur wenn Dividende ausgefallen ist)
- [ ] Schichtende ≤ 12:00, keine Pflicht nach 13:00, kein Abruf ohne Morgenplan
- [ ] Unbefristet oder ≥ 3 Monate
- [ ] Abhängig beschäftigt (kein Honorar, kein Mini, kein Solo)
- [ ] Arbeitgeber meldet Sozialversicherung (KV/PV/RV/AV) — nachfragen, schriftlich
- [ ] Arbeitsweg mit ÖPNV zur ersten Schicht vor 6:00 machbar
- [ ] KV-Antwort (Task 2) liegt vor **oder** Auffang/freiwillig läuft ohne Lücke, und K2-Beitrag ist in der Monatsrechnung ohne Puffer-Konsum tragbar

Nein zu einem Punkt = ablehnen oder nachverhandeln, nicht „erstmal anfangen“.
```

- [ ] **Step 3: Verify** — acht Checkboxen, Midi-Grenzen 603,01 und 2.000 wörtlich.

- [ ] **Step 4: Commit**

```bash
git add docs/superpowers/plans/checklists/07-vertrag-pruefung.md
git commit -m "Add midi-job contract gate before signing."
```

---

### Task 8: 30-Tage-Gate

**Files:**
- Create: `docs/superpowers/plans/checklists/08-gate-30.md`

**Interfaces:**
- Consumes: Spec § 11.1, Tracker, KV-Antwort
- Produces: `GATE_30` mit `pass` oder `fail`

- [ ] **Step 1: Datei anlegen:**

```markdown
# Gate Tag 30

Datum Anmeldung: […]
Bewertung: pass | fail

- [ ] Angemeldet, Steuer-ID vorhanden
- [ ] Kasse hat den Sachverhalt schriftlich (Eingang reicht, Bescheid besser)
- [ ] Wohnen: WG oder befristetes Zimmer, warm ≤ 950 €, Früh-ÖPNV möglich
- [ ] Midi-Vertrag unterschrieben **oder** Tracker: ≥ 3 Status `beworben`/`gespräch` in ≥ 3 Branchen inkl. Produktion/Verpackung, nicht nur Pflege

Fail: nicht Leipzig sofort, sondern Welle 1/2 nach Spec § 8.3 zu Ende führen. Leipzig erst bei Gate 8 Wochen (Task 9).
```

- [ ] **Step 2: Human — am Tag 30 ausfüllen**, `Bewertung:` setzen.

- [ ] **Step 3: Verify** — `Bewertung` ist `pass` oder `fail`, nicht leer.

- [ ] **Step 4: Commit**

```bash
git add docs/superpowers/plans/checklists/08-gate-30.md
git commit -m "Record day-30 landing gate."
```

---

### Task 9: 90-Tage-Gate und Leipzig-Switch

**Files:**
- Create: `docs/superpowers/plans/checklists/09-gate-90.md`

**Interfaces:**
- Consumes: Spec §§ 6, 11.2–11.3
- Produces: `GATE_90` = `halten` | `leipzig`

- [ ] **Step 1: Datei anlegen:**

```markdown
# Gate Tag 90 / Woche 8

## Rechnung (K1)

Dividende netto (Steuerberater-Zahl, sonst 650–750 €) + Lohn netto − Miete warm − Essen − Ticket − Rest.
Soll ≥ 0. Puffer nicht für Konsum.

## Halten wenn alles wahr

- [ ] Midi-Job 18–22 Std, Ende ≤ 12:00, Brutto 603,01–2.000 €
- [ ] KV über den Job (K1) **oder** K2 ohne Lücke **und** Rechnung ≥ 0 inkl. KV-Beitrag
- [ ] Keine operative Leitung der S.A.
- [ ] Rechnung ≥ 0 ohne Puffer-Konsum

## Leipzig (ein Ja reicht)

- [ ] 8 Wochen kein passender Frühjob nach Spec § 8.3
- [ ] Kasse = hauptberuflich selbstständig **und** K2 macht WG-Rechnung dauerhaft negativ
- [ ] Dividende weg **und** 25 Std Midi reicht in München nicht

Leipzig: gleiches Tagesgerüst, gleiche Filter, eigene kleine Wohnung statt WG, all-in-Ziel 950–1.280 €.
Nicht tun: Amazon-FC, BMW-Vollzeit, Gig.
```

- [ ] **Step 2: Human — Woche 8 und Tag 90** je einmal ausfüllen. `halten` oder `leipzig` oben in die Datei schreiben.

- [ ] **Step 3: Verify** — Entscheidungswort steht; wenn `leipzig`, ist mindestens eine Abort-Box angehakt.

- [ ] **Step 4: Commit**

```bash
git add docs/superpowers/plans/checklists/09-gate-90.md
git commit -m "Record day-90 keep-or-Leipzig gate."
```

---

## Spec-Abdeckung

| Spec | Task |
|---|---|
| §§ 2–5 Rhythmus, Gesellschafter | 1, 6, 7 |
| § 6 Budget | 3, 9 |
| § 7 KV/Steuer | 2, 3, 6 |
| § 8 Arbeit/Branchen | 4, 5, 7 |
| § 9 Wohnen | 6, 7 |
| § 10 Landung | 6 |
| § 11 Gates/Abort | 8, 9 |
| § 12 offene Punkte | 2, 3, 5, 6 |
