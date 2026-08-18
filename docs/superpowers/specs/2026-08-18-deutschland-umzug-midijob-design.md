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
- adm.doctor: **nur Gesellschafter**, keine Organfunktion. Brasilien-Zeit bleibt frei für unregelmäßigen Kontakt, nicht fürs Tagesgeschäft.
- Gesetzliche Krankenversicherung ohne Lücke.
- Monatlich ohne Angreifen des Kapitalpuffers auskommen (Puffer bleibt Reserve für Kaution, Anlauf, Fehlschläge).

## 3. Nicht-Ziele

- Tech-Vollzeit (Cloud/DevSecOps/BWI) als Plan A. Bleibt optionale spätere Spur, steuert Wohnort, Jobwahl und Tagesrhythmus nicht.
- Mini-Job (keine KV).
- Gig-Arbeit (Amazon Flex, Uber, E-Scooter, Solo-Selbstständigkeit).
- Amazon-FC / klassische Paket-Zustellung als Default (Produktion/Band mit Midi-Vormittag ist erlaubt).
- Nachmittags-/Abendjobs (Hort, Museum ab 10, Kino, Escape-Room, Spätschicht), weil sie in der Brasilien-Overlap liegen.
- Auto anschaffen.
- Lebenshaltung auf 2.500–3.300 € halten.
- Operative CTO- oder Geschäftsführer-Rolle, auch informell.
- Gesellschaftsvertrag oder Titel so umschreiben, dass sie zur Kasse „passen“, während faktisch weiter geleitet wird. Vertrag und Alltag müssen übereinstimmen.

## 4. Entscheidungen

| Thema | Festlegung |
|---|---|
| Haushalt | Solo |
| Stadt | München zuerst; Leipzig nur als Abbruch-Switch |
| Wohnen | WG in der Stadt oder hartes Umland, warm 750–950 € |
| Firma | Nur Gesellschafter; keine Rolle im Gesellschaftsvertrag (oder Vertrag so bereinigen, dass keine Organ-/Geschäftsführerfunktion bleibt). Team führt operativ. |
| Geldfluss Firma | Dividende, kein Geschäftsführer-Gehalt |
| Job-Rhythmus | Früh in DE, damit BR-Bürozeit (9–18 BRT = 13/14–22/23 MEZ/MESZ) frei bleibt |
| Job-Art | Viele Branchen, solange Frühfenster + Midi. Menschen, Dasein **und** Produktion/Band; kein Amazon-Default |
| KV | K1 anstreben (Pflicht über Midi-Job), schriftliche Bestätigung der Kasse |
| Puffer | >12 Monate; Kaution und Anlauf sind kein Engpass |

## 5. Tagesarchitektur

Zeitverschiebung São Paulo: Winter 4 Stunden, Sommer 5 Stunden hinter Deutschland.

| Block DE | Inhalt |
|---|---|
| 5:30–12:00 | Midi-Job |
| 12:00–14:00 | Puffer (Essen, Sport, Amt) |
| 14:00–20:00 | Frei: Leben, Sport, optional kurzer Gesellschafter-Kontakt (kein Ops) |
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

### 7.1 Was die Dividende und der Gesellschaftsvertrag ändern

Dividende der S.A. ist in Deutschland **Kapitalertrag**, kein Arbeitslohn. Das steuert Einkommensteuer (Abgeltungsteuer, DBA Brasilien), nicht automatisch den KV-Status.

Im Gesellschaftsvertrag ist **keine Organ- oder Geschäftsführerrolle** hinterlegt (oder der Vertrag wird so bereinigt). Das ist die richtige Papierlage für K1 — **wenn der Alltag dazu passt**. Die Kasse prüft Fakten: Wer entscheidet, wer Mitarbeiter anleitet, wer im Chat um 15 Uhr DE steuert. Titel streichen und weiter CTO spielen zählt als Selbstständigkeit.

### 7.2 Zielstatus K1

Ziel: **Kapitalanleger plus Arbeitnehmer**. Keine selbstständige Erwerbstätigkeit im Kassen-Sinn, Pflichtversicherung über den Midi-Job.

Haltbar gegenüber der Kasse:

- Vertrag: Gesellschafter, kein Direktor/CTO/Geschäftsführer, keine Prokura, keine Mitarbeiterführung.
- Alltag: Team vor Ort führt; du bist nicht On-Call und nicht im Tagesgeschäft.
- Zeit im Job klar größer als jeder Restkontakt zur Firma.
- Einkünfte aus dem Job > Dividende (Planwerte erfüllen das).
- Schriftliche Bestätigung **bevor** der WG-Vertrag langfristig bindet.

Restrisiko: Manche Kassen rechnen **Mitarbeiter der S.A.** dem Gesellschafter zu, auch ohne Organfunktion. Deshalb bleibt die schriftliche Einschätzung die Gate.

### 7.3 Fallback K2

Stuft die Kasse trotzdem hauptberuflich selbstständig ein (z. B. wegen Mitarbeitern der S.A. oder weil faktisch weiter geleitet wird), gilt:

- Midi-Job weiter für Cash, Rente, Arbeitslosenversicherung — nicht als KV-Träger.
- Freiwillige GKV oder Auffangversicherung ohne Lücke.
- München-WG nur halten, wenn die Monatsrechnung inkl. KV-Beitrag ohne Puffer aufgeht. Sonst Switch Leipzig.

### 7.4 Lücke bei Einreise

Ohne Job gibt es keine Arbeitgeber-KV. Reihenfolge: Anmeldung → sofort Krankenkasse → erst dann längerer Mietvertrag. Bis der Midi-Job startet: Auffang oder freiwillig, finanziert aus Puffer.

### 7.5 Explizit ungeeignet

Mini-Job; Gig-Apps; Annahme „angestellt = KV“ ohne schriftliche Einschätzung.

## 8. Arbeit: Suche und Verträge

Filter für **jede** Anzeige, sonst landet der Job in der BR-Overlap oder unter der Mini-Grenze:

- Schicht **endet ≤12:00**, Beginn typisch 5:00–8:00. „Teilzeit flexibel“ ohne Uhrzeiten = nachfragen, nicht bewerben.
- **18–22 Std/Woche**, Monat brutto **603,01–2.000 €**. Bei ≥17 €/h eher 18–22 Std; bei 13,90–15 € eher 20–22 Std. 25 Std nur wenn Dividende ausfällt.
- Angestellt, nicht Honorarkraft, nicht Solo, nicht Mini, nicht Abruf ohne Plan.
- Deutsch reicht; Muttersprache ist Vorteil bei Empfang/Betreuung.
- Unbefristet oder ≥3 Monate. Arbeitsweg mit ÖPNV vor 6:00.

Stundenlohn → Midi-Fenster (ca. 4,33 Wochen/Monat): 13,90 € × 20 Std ≈ 1.200 €; 15,50 € × 20 ≈ 1.340 €; 17,50 € × 20 ≈ 1.520 €; 20 € × 20 ≈ 1.730 €; 20 € × 23 Std ≈ 1.990 € (knapp unter der Midi-Decke).

Kanal: Indeed/Stepstone (`Teilzeit` + `Vormittag` / `Frühschicht` / `Produktionshelfer`); Agentur für Arbeit; **Zeitarbeit** (Adecco, Randstad, Hofmann, Franz & Wach, Orizon, Formel Zeitarbeit) mit einem Satz: „20 Std, 6:00–12:00, Produktion oder Verpackung, sozialversicherungspflichtig“. Direkt: Hotelketten, Pflegedienste, Studierendenwerk, Kliniken, Stadt/SWM.

### 8.1 Fließband / Produktion — ja, aber selten im Midi-Schnitt

Das Band ist eine eigene Branche, kein Amazon-Ersatz. In München gibt es sie.

**Was der Markt wirklich ist:** BMW Stammwerk, MAN, Siemens Mobility Allach suchen laufend Montage/Produktionshelfer, oft über Zeitarbeit. Lohn 2026 grob **18,70–19,30 €** Einstieg, später höher. Quereinstieg üblich. Standard ist **Vollzeit**, Frühschicht oft **5:45–14:55**, plus Wechselschicht. 8 Std × 5 Tage × 19 € ≈ 3.300 € — **über Midi** und **nach 12:00**. Das ist Plan-A-unfähig.

**Was davon brauchbar ist:** nur ein schriftliches Modell **18–22 Std, Schichtende ≤12:00** (z. B. 4×5 Std oder 3×6,5 Std). Das gibt es am Auto-Band kaum; eher in **Lebensmittelverpackung, Pharma-Pack, Druck-Weiterverarbeitung, Recycling-Sortierung, Kunststoff/Elektronik-Helfer**. Zeitarbeit gezielt fragen, Inserat „Vollzeit 2-Schicht“ ablehnen. Paulaner-Abfüllung Teilzeit existiert, aktuell eher 1 Tag/Woche oder Fachausbildung — nicht der Default.

**Pay-Effekt:** Bei 19 €/h reichen **20 Std** für ~1.650 € brutto (Midi, KV). Weniger Stunden als in der Pflege bei gleichem oder besserem Brutto — wenn die Uhrzeiten stimmen.

### 8.2 Branchenkatalog (Früh + Midi)

Eine Zeile = eine Branche. Filter aus dem Abschnittskopf gilt überall.

| Branche | Typische Früh-Arbeit | Midi-Fit | München / Umland | Falle |
|---|---|---|---|---|
| Alltagsbegleitung / ambulante Seniorenhilfe | Aufstehen, Frühstück, Haushalt 6–11 | Gut; 17,50–20 €/h | Home Instead, Caritas, AWO, Diakonie, BRK, private Dienste | Touren nach 13:00; § 53b-Kurs nur wenn AG zahlt |
| Hotellerie | Frühstücksbuffet 5:30–11:30 | Gut | Motel One, Premier Inn, Holiday Inn, 25hours, NH | Lunch-Springer, Abend-Rezeption |
| Gemeinschaftsverpflegung | Heim-/Klinik-/Kita-Küche, Mensa ab 6:00 | Gut, Std. verhandeln | Münchenstift, Domicil, Kliniken, Studierendenwerk, BRK-Kitas | Inserate 30–35 Std; Mittagspeak bis 14:00 |
| Praxis / MVZ / Apotheke | Empfang oder Botendienst 7:30–12:00 | Mittel (viele wollen Nachmittag) | Physio, Haut, Zähne, MVZ, Apotheken | Pflicht bis 18/19 Uhr |
| LEH | Frische, Backtheke, Verräumen 6–12 | Gut wenn gekappt | REWE, Edeka, Lidl | Planer schiebt 6–14 oder Mini-Aushilfe |
| Bäckerei / Metzgerei (Handwerk) | Verkauf oder Produktion früh | Mittel | Backstube Wünsche, Filialbäcker, Metzgereien | 6:00–8:30 = Mini |
| Sport / Bad | Empfang Öffnung, Kasse, Garderobe | Gut | McFit, High 5, SWM-Bäder (nicht Bademeister) | Split früh+abend |
| Facility | Housekeeping, Büroreinigung 5–9, Industriewäsche | Mittel | Hotels, Gebäudereiniger, Klinik-Steri | Zu wenig Std/Tag → Mini; Ende 14:00 |
| Kanzlei / Notar / Steuerberater | Post, Telefon 8–12 | Schmal, ruhig | Kanzleien Stadt | Wenig Inserate |
| Tankstelle / Kiosk / Post-Filiale | Frühschicht Schalter | Mittel | Aral, Bahnhof, Postfiliale (nicht Zustellung) | Nachtplan; Filiale öffnet oft erst 9:00 |
| Automotive-Montage (Band) | Takt, Sichtkontrolle, Baugruppen | Schlecht als Vollzeit; nur bei Teilzeit-Vormittag | BMW Werk, MAN, Siemens Allach via Zeitarbeit | 5:45–15:00 und 35–40 Std |
| Lebensmittelindustrie | Abfüllen, Verpacken, QS, Hygiene | Besser als Auto-Band | Zeitarbeit Lebensmittel, Werke Eching u. a. | 2-/3-Schicht-Pflicht im Inserat |
| Pharma / Medtech Pack | Blister, Beipack, Reinraum-Helfer | Gut wenn Vormittagsschicht | Umland (Penzberg o. ä.), Packdienstleister | Quali/Reinraum; Schichtrotation |
| Elektronik / Kunststoff | Bestücken, Spritzguss-Entnahme, Prüfen | Mittel | Zulieferer Umland, Zeitarbeit | Lärm, Stehen, Vollzeit-Default |
| Metall / einfache Montage | Schrauben, Kommissionieren in Fertigung | Mittel | Siemens-Umfeld, Schlossereien | Oft Fachkraft; sonst Helfer Vollzeit |
| Brauerei / Getränke | Abfülllinie, Leergut, Reinigung | Schmal | Paulaner Langwied, andere Brauer | Fachausbildung oder 1-Tag-Teilzeit |
| Druck / Weiterverarbeitung | Falzen, Kuvertieren, Zeitungsstraße früh | Mittel | Druckereien Umland | Nachtschicht Zeitung |
| Recycling / Sortierung | Band sortieren, Wertstoffe | Mittel | Wertstoffhöfe, Sortieranlagen | Körper, Geruch, oft 8-Std-Schicht |
| Großmarkt / Foodservice-Lager | Annahme 4–9, Kommission | Mittel | Großmarkthalle, Gastronomie-Großhandel | Sehr früh; nicht Amazon-FC |
| Krankenhaus-Logistik | Patiententransport, Steri, Laborannahme 6–12 | Gut | LMU, r. d. Isar, Schwabing | Tarif kann >22 Std wollen |
| Blutspende / Dialyse-Service | Aufbau, Empfang, Snacks 7–12 | Mittel | DRK, Dialysezentren | Medizin-Nähe, unregelmäßige Tage |
| Leitstelle / Callcenter Morgen | 7–12 Tickets, Sachbearbeitung | Gut | Stadtwerke, Versicherer, Dienstleister | Schicht nach 12; Honorarkraft |
| Stadtgrün / Friedhof / Garten | Gießen, Laub, Gräberpflege früh | Saisonal | Stadt München, Friedhofsgärtnereien | Winterloch; Wetter |
| Zoo / Tierheim | Fütterung, Reinigung früh | Schmal | Hellabrunn, Tierschutzvereine | Wenig Stellen, oft Vollzeit |
| KFZ-Aufbereitung / Flotte | Waschen, Umparken Carsharing 6–11 | Mittel | Vermieter, Flottenbetreiber angestellt | Solo-Selbstständig ablehnen |
| Bestattung | Überführungen, Halle, Büro früh | Schmal | Bestatter Stadt | Rufbereitschaft |
| Bau / Gerüst Helfer | Baustelle 7–12 | Schlecht | Gewerke Stadt | 8–10 Std Default |
| SWM / Betriebshof | Fahrzeuge, Anlage, Betrieb | Mittel | Stadtwerke | Langsam; oft 50–100 % |
| Uni-Labor / Spüle / Medien | Glas, Medien 7–12 | Schmal | LMU, TUM, Helmholtz | Hiwi/Mini-Falle |

### 8.3 Suchreihenfolge (8 Wochen)

1. Wochen 1–5 parallel, **nicht** nur Pflege: Alltagsbegleitung, Hotel-Frühstück, Gemeinschaftsverpflegung, Praxis-Vormittag, **Zeitarbeit Produktion/Verpackung mit Vormittags-Midi**.
2. Ab Woche 4: Facility, Sport/Bad, LEH gekappt, Leitstelle, Klinik-Logistik.
3. Woche 6–8: Recycling, Großmarkt, Reinigung 5–9, Friedhof/Garten — nur wenn 1/2 nichts Schriftliches haben.
4. Nach 8 Wochen ohne Vertrag: Leipzig (11.3). Kein Flex/Uber, kein BMW-Vollzeit „nur zum Anfangen“.

### 8.4 Vertragsregeln

- 18–22 Stunden/Woche, Monat brutto 603,01–2.000 €.
- Ende der Schicht ≤12:00. Keine verpflichtenden Dienste nach 13:00.
- Unbefristet oder befristet ≥3 Monate. Kein Abruf ohne feste Morgenzeiten.
- Arbeitsweg: ÖPNV, der die Schicht vor 6:00 erreicht. Wohnen danach wählen.
- In der Bewerbung ein Satz: „Teilzeit 18–22 Std, ausschließlich Vormittag, Schichtende spätestens 12:00, sozialversicherungspflichtig (kein Mini-Job).“

### 8.5 Bewusst nicht suchen

Amazon-FC und -Flex; DHL/Brief-**Zustellung** als Default; Hort/Ganztag; Museum ab 10:00; Abendgastro; Theater/Kino; Scooter/Uber; Flughafen-Vollschicht mit ZÜP als Erstversuch; Bäckerei-Mini 2,5 Std; Mensa **30+ Std** ungefiltert; Praxis bis 19:00; **Automotive-Vollzeit 5:45–15:00** „nur zum Einstieg“. Fließband selbst ist nicht verboten — nur dieses Schichtmaß.

## 9. Wohnen München

- WG-Zimmer in der Stadt oder kleines Umland mit nachgewiesenem Frühverkehr.
- Warmmiete 750–950 €.
- Bevorzugte Lagen mit Früh-ÖPNV: z. B. Giesing, Ramersdorf, Neuperlach, Laim, Pasing; Umland nur mit echtem Betrieb vor 6:00 (z. B. Pasing, Germering, Unterhaching).
- Kein „schönes Dorf, erster Bus 7:12“.
- Langfristigen Vertrag erst, wenn der Arbeitsweg zur konkreten Frühschicht sitzt. Bis dahin: befristetes Zimmer / Zwischenmiete aus Puffer.

## 10. Landungssequenz (erste 14 Tage)

1. Einreise, Anmeldung beim Bürgerbüro.
2. Krankenkasse: Sachverhalt schriftlich (nur Gesellschafter, keine Organfunktion, Dividende, geplanter Midi-Job).
3. Steuer-ID / Finanzamt; Steuerberater für Dividende BR→DE beauftragen.
4. Jobsuche über mind. 8 Bewerbungen in zwei Wochen, **mindestens vier Branchen**: Alltagsbegleitung, Hotel-Frühstück, Gemeinschaftsverpflegung, Zeitarbeit Produktion/Verpackung Vormittag.
5. Midi-Vertrag unterschreiben.
6. Erst dann WG/Untermiete auf den Schichtweg zuschneiden.

Kapitalpuffer deckt Kaution, erste Mieten, KV-Überbrückung und Möbel/WG-Einlage.

## 11. Erfolg, Abbruch, Risiken

### 11.1 Erfolg nach 30 Tagen

- Angemeldet, Steuer-ID vorhanden, Krankenkasse hat den Sachverhalt schriftlich.
- Wohnen: WG oder befristetes Zimmer, warm ≤950 €, Früh-ÖPNV möglich.
- Midi-Vertrag unterschrieben **oder** drei laufende Bewerbungen in **mindestens drei Branchen** aus Abschnitt 8 (inkl. Produktion/Verpackung, nicht nur Pflege).

### 11.2 Erfolg nach 90 Tagen

- Midi-Job 18–22 Std, Ende ≤12:00, Brutto im Übergangsbereich.
- KV über den Job (K1) oder bewusst K2 ohne Versicherungslücke.
- Monat: Dividende netto + Lohn netto − Miete − Leben ≥ 0, Puffer unangetastet für den laufenden Konsum.
- Firma: keine operative Leitung; höchstens unregelmäßiger Gesellschafter-Kontakt, nicht im DE-Frühfenster.

### 11.3 Abbruch München → Leipzig

Ein Switch, kein Scheitern, wenn eines eintritt:

- 8 Wochen kein passender Frühjob in A/B, oder
- Kasse stuft hauptberuflich selbstständig ein **und** freiwillige KV macht die WG-Rechnung dauerhaft negativ, oder
- Dividende fällt weg und auch ~25 Std Midi (oberes Übergangsbereich) reichen in München nicht.

In Leipzig gilt dasselbe Tagesgerüst und dieselbe Job-Logik, nur mit eigener kleiner Wohnung statt WG.

### 11.4 Risiken

| Risiko | Gegenmaßnahme |
|---|---|
| Kasse wertet S.A.-Mitarbeiter oder faktische Leitung als Hauptberuf | Vertrag und Alltag deckungsgleich halten; Status schriftlich vor Mietbindung; sonst K2 oder Leipzig |
| Kein Frühjob in 8 Wochen | Branchenkatalog 8.3; dann Switch; kein Gig, kein BMW-Vollzeit |
| Dividende schwankt oder stoppt | Stunden Richtung 25 / oberes Midi; Switch Leipzig |
| Schicht rutscht in den Nachmittag | Vertrag ablehnen oder kündigen; BR-Nachmittag bleibt frei |
| WG-Kosten >950 € warm | Nicht nehmen; Umland nur mit Frühverkehr |
| „Umschreiben“ ohne Verhaltensänderung | Unterlassen — Kasse prüft Tätigkeit, nicht den schönen Vertrag |

## 12. Offene Ausführungspunkte (keine Design-Lücken)

Diese Punkte sind absichtlich der Umsetzung, nicht der Architektur:

- Konkrete Krankenkasse und Termin zur Statusklärung (mit Gesellschaftsvertrag ohne Organfunktion).
- Steuerberater und Bankweg für die Dividende.
- Bewerbungen entlang Abschnitt 8, nicht eine neue Job-Philosophie.
- WG-Suche entlang der ersten ernsthaften Job-Adresse.

## 13. Nächster Schritt

Nach Freigabe dieser Spec: Umsetzungsplan (Anmeldungs-Checkliste, KV-Brief, Bewerbungsreihenfolge, 30/90-Tage-Kontrolle).
