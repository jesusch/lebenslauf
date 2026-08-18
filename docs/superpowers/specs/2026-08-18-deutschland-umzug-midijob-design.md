# Design: Leben in Deutschland auf Dividende + Midi-Job

Datum: 2026-08-18  
Status: freigegeben zur Spec-Review  
Person: Björn Boschman (deutscher Staatsbürger, solo, bisher São Paulo)

## 1. Problem

Monatliche Dividende aus der brasilianischen S.A. adm.doctor: R$5.000 (ca. 830 € brutto bei ~6,03 BRL/EUR, Stand 18.08.2026). Bisherige Lebenshaltung in Brasilien: R$15.000–20.000 (ca. 2.500–3.300 €). Nach dem Umzug nach Deutschland reicht die Dividende allein nicht. Ziel ist nicht Tech-Vollzeit als Plan A, sondern ein angepasstes Leben: gesetzliche Absicherung, genug Cash, Firma nur noch als Gesellschafter.

## 2. Ziel

In den ersten 6–12 Monaten in Deutschland:

- Solo in **München** leben (Netzwerk vor Komfort).
- Midi-Job am **Morgen** (Ende spätestens 12:00), 18–22 Stunden/Woche, Brutto im Übergangsbereich 603,01–2.000 €.
- adm.doctor **10–20 Stunden/Woche async/Board**, wenn Brasilien wach ist (DE-Nachmittag/Abend).
- Gesetzliche Krankenversicherung ohne Lücke.
- Monatlich ohne Angreifen des Kapitalpuffers auskommen (Puffer bleibt Reserve für Kaution, Anlauf, Fehlschläge).

## 3. Nicht-Ziele

- Tech-Vollzeit (Cloud/DevSecOps/BWI) als Plan A. Bleibt optionale spätere Spur, steuert Wohnort, Jobwahl und Tagesrhythmus nicht.
- Mini-Job (keine KV).
- Gig-Arbeit (Amazon Flex, Uber, E-Scooter, Solo-Selbstständigkeit).
- Lager/Amazon/klassische Paket-Zustellung als Default.
- Nachmittags-/Abendjobs (Hort, Museum ab 10, Kino, Escape-Room, Spätschicht), weil sie in der Brasilien-Overlap liegen.
- Auto anschaffen.
- Lebenshaltung auf 2.500–3.300 € halten.
- Operative CTO-Rolle beibehalten.

## 4. Entscheidungen

| Thema | Festlegung |
|---|---|
| Haushalt | Solo |
| Stadt | München zuerst; Leipzig nur als Abbruch-Switch |
| Wohnen | WG in der Stadt oder hartes Umland, warm 750–950 € |
| Firma | Passive Gesellschafterrolle; Team führt operativ |
| Geldfluss Firma | Dividende, kein Geschäftsführer-Gehalt |
| Job-Rhythmus | Früh in DE, damit BR-Bürozeit (9–18 BRT = 13/14–22/23 MEZ/MESZ) frei bleibt |
| Job-Art | Mix: zuerst Menschen am Morgen, Fallback Dasein am Morgen; kein Lager |
| KV | K1 anstreben (Pflicht über Midi-Job), schriftliche Bestätigung der Kasse |
| Puffer | >12 Monate; Kaution und Anlauf sind kein Engpass |

## 5. Tagesarchitektur

Zeitverschiebung São Paulo: Winter 4 Stunden, Sommer 5 Stunden hinter Deutschland.

| Block DE | Inhalt |
|---|---|
| 5:30–12:00 | Midi-Job |
| 12:00–14:00 | Puffer (Essen, Sport, Amt) |
| 14:00–20:00 | adm.doctor, 10–20 Std/Woche verteilt, async/Board |
| danach | nur Eskalation, kein fester Job |

Job-Muster: 4× ~5 Stunden oder 5× ~4 Stunden. Vertraglich: Ende ≤12:00, keine Springer nach 13:00.

## 6. Einnahmen und München-Budget

Annahmen: Mindestlohn 2026 13,90 €; Midi-Job 603,01–2.000 €; Kurs ~6,03 BRL/EUR.

**Einnahmen (Monat):**

- Dividende R$5.000 ≈ 830 € brutto. Nach Abgeltungsteuer und DBA-Anrechnung Planwert **650–750 €** netto. Exakte Behandlung klärt ein Steuerberater vor oder unmittelbar nach Anmeldung.
- Midi-Job 18–22 Std zu 14–16 €: ca. **1.150–1.550 €** brutto, ca. **1.000–1.350 €** netto im Übergangsbereich (KV/Pflege/Rente/Arbeitslosenversicherung enthalten, wenn K1 greift).
- Verfügbares Einkommen Planwert: **1.650–2.100 €**.

**Ausgaben München (WG, kein Auto, K1):**

| Posten | Rahmen |
|---|---|
| Miete warm | 750–950 € |
| Essen, Haushalt | 280–350 € |
| ÖPNV | 0–60 € (Jobticket falls vorhanden) |
| Rest (Handy, Haftpflicht, Kleinigkeiten) | 150–220 € |
| **Summe** | **1.200–1.580 €** |

Die Rechnung ist knapp, aber tragbar, solange KV im Lohn steckt. Freiwillige KV (K2) von 250–500 €+ würde denselben Schnitt sprengen oder den Puffer zur Regel machen — das ist Abbruchkriterium, nicht Dauerzustand.

Leipzig (kleine Wohnung, all-in ca. 950–1.280 €) bleibt der günstigere Switch, nicht der Start.

## 7. Krankenversicherung und Steuer

### 7.1 Was die Dividende ändert — und was nicht

Dividende der S.A. ist in Deutschland **Kapitalertrag**, kein Arbeitslohn. Das steuert Einkommensteuer (Abgeltungsteuer, DBA Brasilien), nicht automatisch den KV-Status.

Die Kasse prüft die **Tätigkeit**: weisungsgebundene operative Leitung vs. Gesellschafter ohne Alltagsführung. Die Auszeichung als Dividende ersetzt diese Prüfung nicht.

### 7.2 Zielstatus K1

Weil die Rolle nach Umzug **passiv** ist (Team operativ, 10–20 Std nur async/Board), ist der Zielstatus: **nicht selbstständig im Sinne der Kasse**, Pflichtversicherung über den Midi-Job.

Voraussetzungen, die gegenüber der Kasse haltbar sein müssen:

- Keine Mitarbeiterführung, kein On-Call, kein Solo-Ops.
- Zeit im Job ≥ Zeit für die Firma.
- Einkünfte aus dem Job > Dividende (bei den Planwerten typischerweise erfüllt).
- Schriftliche Beschreibung der Rolle, bevor der WG-Vertrag langfristig bindet.

Auch als passiver Gesellschafter bleibt ein Risiko: Manche Kassen rechnen **Mitarbeiter der S.A.** dem Gesellschafter als Arbeitgeber zu. Deshalb ist die schriftliche Einschätzung die Gate, nicht die Selbstzuordnung „ich bin nur Dividende“.

### 7.3 Fallback K2

Stuft die Kasse trotzdem hauptberuflich selbstständig ein (z. B. wegen Mitarbeitern der S.A. oder weil 10–20 Std als operative Leitung gelesen werden), gilt:

- Midi-Job weiter für Cash, Rente, Arbeitslosenversicherung — nicht als KV-Träger.
- Freiwillige GKV oder Auffangversicherung ohne Lücke.
- München-WG nur halten, wenn die Monatsrechnung inkl. KV-Beitrag ohne Puffer aufgeht. Sonst Switch Leipzig.

### 7.4 Lücke bei Einreise

Ohne Job gibt es keine Arbeitgeber-KV. Reihenfolge: Anmeldung → sofort Krankenkasse → erst dann längerer Mietvertrag. Bis der Midi-Job startet: Auffang oder freiwillig, finanziert aus Puffer.

### 7.5 Explizit ungeeignet

Mini-Job; Gig-Apps; Annahme „angestellt = KV“ ohne schriftliche Einschätzung.

## 8. Arbeit: Suche und Verträge

### 8.1 Cluster A — zuerst (Menschen, Morgen)

1. Senioren-Morgenhilfe / Alltagsbegleitung / Aufstehhilfe (Pflegedienste, Caritas, AWO, private Dienste), typisch 6:00–11:00.
2. Hotel-Frühstück, ggf. plus kurzes Housekeeping, Ende ~11:00.
3. Schulmensa / Kita-Küche, Vorbereitung Vormittag.
4. Arztpraxis / MVZ-Anmeldung 7:30–12:00.
5. Apotheke Vormittag.

### 8.2 Cluster B — Fallback (Dasein, Morgen)

Fitness- oder Schwimmbad-Empfang zur Öffnung; Praxis-/Kanzlei-Empfang; Hotel-Pforte Früh.

Suche: Wochen 1–5 Cluster A, ab Woche 4 parallel Cluster B. Büroreinigung 5:00–9:00 nur in Woche 6–8, wenn A/B nichts Schriftliches liefern — früh fertig, aber näher an Körperarbeit. Nach 8 Wochen ohne Vertrag gilt Abschnitt 11.3 (Leipzig), nicht eine dritte Job-Philosophie.

### 8.3 Vertragsregeln

- 18–22 Stunden/Woche, Monat brutto 603,01–2.000 € (Midi, nicht Mini, nicht Vollzeit über 2.000 € als Ziel — mehr Stunden nur wenn Dividende ausfällt).
- Ende der Schicht ≤12:00.
- Keine verpflichtenden Dienste nach 13:00.
- Unbefristet oder befristet ≥3 Monate. Kein reiner Abruf ohne feste Morgenzeiten.
- Arbeitsweg: S-Bahn/Bus, der die Schicht vor 6:00 erreicht. Wohnen danach wählen, nicht umgekehrt.

### 8.4 Bewusst nicht suchen

Amazon-Lager, DHL-Zustellung als Default, Hort/Ganztag, Museum/Bibliothek mit Beginn ab 10:00, Abendgastronomie, Theater/Kino, Escape-Room, Scooter/Flex.

## 9. Wohnen München

- WG-Zimmer in der Stadt oder kleines Umland mit nachgewiesenem Frühverkehr.
- Warmmiete 750–950 €.
- Bevorzugte Lagen mit Früh-ÖPNV: z. B. Giesing, Ramersdorf, Neuperlach, Laim, Pasing; Umland nur mit echtem Betrieb vor 6:00 (z. B. Pasing, Germering, Unterhaching).
- Kein „schönes Dorf, erster Bus 7:12“.
- Langfristigen Vertrag erst, wenn der Arbeitsweg zur konkreten Frühschicht sitzt. Bis dahin: befristetes Zimmer / Zwischenmiete aus Puffer.

## 10. Landungssequenz (erste 14 Tage)

1. Einreise, Anmeldung beim Bürgerbüro.
2. Krankenkasse: Sachverhalt schriftlich (passive Gesellschafterrolle, Dividende, geplanter Midi-Job, Stunden).
3. Steuer-ID / Finanzamt; Steuerberater für Dividende BR→DE beauftragen.
4. Jobsuche Cluster A, parallel 3–5 Bewerbungen.
5. Midi-Vertrag unterschreiben.
6. Erst dann WG/Untermiete auf den Schichtweg zuschneiden.

Kapitalpuffer deckt Kaution, erste Mieten, KV-Überbrückung und Möbel/WG-Einlage.

## 11. Erfolg, Abbruch, Risiken

### 11.1 Erfolg nach 30 Tagen

- Angemeldet, Steuer-ID vorhanden, Krankenkasse hat den Sachverhalt schriftlich.
- Wohnen: WG oder befristetes Zimmer, warm ≤950 €, Früh-ÖPNV möglich.
- Midi-Vertrag unterschrieben **oder** drei laufende, zum Rhythmus passende Bewerbungen in Cluster A/B.

### 11.2 Erfolg nach 90 Tagen

- Midi-Job 18–22 Std, Ende ≤12:00, Brutto im Übergangsbereich.
- KV über den Job (K1) oder bewusst K2 ohne Versicherungslücke.
- Monat: Dividende netto + Lohn netto − Miete − Leben ≥ 0, Puffer unangetastet für den laufenden Konsum.
- Firma 10–20 Std nur async/Board in der BR-Overlap.

### 11.3 Abbruch München → Leipzig

Ein Switch, kein Scheitern, wenn eines eintritt:

- 8 Wochen kein passender Frühjob in A/B, oder
- Kasse stuft hauptberuflich selbstständig ein **und** freiwillige KV macht die WG-Rechnung dauerhaft negativ, oder
- Dividende fällt weg und auch ~25 Std Midi (oberes Übergangsbereich) reichen in München nicht.

In Leipzig gilt dasselbe Tagesgerüst und dieselbe Job-Logik, nur mit eigener kleiner Wohnung statt WG.

### 11.4 Risiken

| Risiko | Gegenmaßnahme |
|---|---|
| Kasse wertet CTO-Restarbeit oder S.A.-Mitarbeiter als Hauptberuf | Schriftlicher Status vor Mietbindung; K2 oder Leipzig |
| Kein Frühjob in 8 Wochen | Cluster B, dann Switch; kein Gig, kein Lager-Default |
| Dividende schwankt oder stoppt | Stunden Richtung 25 / oberes Midi; Switch Leipzig |
| Schicht rutscht in den Nachmittag | Vertrag ablehnen oder kündigen; BR-Overlap hat Vorrang |
| WG-Kosten >950 € warm | Nicht nehmen; Umland nur mit Frühverkehr |
| Passive Rolle driftet zurück in Ops | Stunden- und Entscheidungsregeln mit dem Team; sonst KV-Status in Gefahr |

## 12. Offene Ausführungspunkte (keine Design-Lücken)

Diese Punkte sind absichtlich der Umsetzung, nicht der Architektur:

- Konkrete Krankenkasse und Termin zur Statusklärung.
- Steuerberater und Bankweg für die Dividende.
- Bewerbungsliste Cluster A in München.
- WG-Suche entlang der ersten ernsthaften Job-Adresse.

## 13. Nächster Schritt

Nach Freigabe dieser Spec: Umsetzungsplan (Anmeldungs-Checkliste, KV-Brief, Bewerbungsreihenfolge, 30/90-Tage-Kontrolle).
