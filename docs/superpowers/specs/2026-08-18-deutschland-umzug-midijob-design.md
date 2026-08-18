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
- Lager/Amazon/klassische Paket-Zustellung als Default.
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
| Job-Art | Mix: zuerst Menschen am Morgen, Fallback Dasein am Morgen; kein Lager |
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

Suche: Indeed/Stepstone Filter Teilzeit + „Vormittag“ / „Frühschicht“; Arbeitgeber-Karriereseiten direkt; Agentur für Arbeit München; Aushang Praxen/Hotels. Keywords: `Teilzeit Vormittag`, `Frühstück`, `Alltagsbegleitung`, `Betreuungskraft`, `Küchenhilfe`, `Empfang Praxis`, `Hauswirtschaft`, `Servicehilfskraft Mensa`.

### 8.1 Cluster A — zuerst (Menschen, Morgen)

**1. Alltagsbegleitung / Senioren-Morgenhilfe (höchste Trefferquote, oft bester Lohn)**  
Aufstehen, Frühstück, Anziehen, kurze Hauswirtschaft, Arztweg nur wenn vor 12:00. Typisch 6:00–11:00, Einsätze 2–4 Std, 15–25 Std/Woche kombinierbar.  
Pay: Anzeigen München 2026 ca. **17,50–20 €/h** (Home Instead um 20,01 €; Alltagshelfer um 17,50 €). 20 Std bleiben im Midi.  
Einstieg: viele Dienste nehmen Quereinsteiger und schulen intern. Stationäre „Betreuungskraft § 53b SGB XI“ will oft den Kurs (ca. 160 UE + Praktikum, 6–16 Wochen, ~1.050–1.350 €, teils Bildungsgutschein). Für den Start **ambulante Alltagsbegleitung ohne Kurs** priorisieren; § 53b nur wenn der Arbeitgeber bezahlt oder der Job sonst nicht kommt.  
Arbeitgeber: Home Instead München-Zentrum (Graf&Trepte), Senioren und Alltagshilfe München, Caritas, AWO, Diakonie, BRK, Malteser, Johanniter, Münchenstift (eher Tarif/TVöD, oft 30 Std — auf 20 Std runterhandeln), private Pflegedienste.  
Risiko: Touren rutschen in den Nachmittag; Körperpflege kann kommen. Vertrag: Morgenfenster, keine Einsätze nach 13:00.

**2. Hotel-Frühstück / Morning-Service**  
Schicht oft 5:30–11:00 oder 6:00–11:30: Buffet aufbauen, Service, Abräumen. 4–6 Std, 4–5 Tage → Midi. Quereinstieg üblich, Deutsch + Englisch hilft. Pay oft 14–16 € plus Trinkgeld.  
Arbeitgeber: Motel One, Premier Inn, Holiday Inn, 25hours, NH, Leonardo, Stadthotels entlang S-Bahn. Mehrere Häuser am Hbf/Ostbahnhof = kurzer Weg.  
Risiko: Wochenende; Springer in den Lunch. Samstagfrüh ist für BR unkritisch, Sonntag verhandelbar. Kein Empfang 15–23 Uhr.

**3. Seniorenheim- und Klinik-Küche / Speiseversorgung**  
Frühstück und Mittagsvorbereitung, Ausgabe, Spüle. Start oft 6:00–6:30, Ende vor oder um 12:00 verhandelbar. Hygienebelehrung § 43 Infektionsschutzgesetz (kurz, Arbeitgeber). Pay Tarif oder 14–16 €.  
Arbeitgeber: Domicil u. a. Seniorencentren (z. B. Haidhausen), Münchenstift, Klinikum rechts der Isar / LMU / Schwabing Speiseversorgung, Caritas-Häuser.  
Risiko: Manche Pläne gehen bis 14:00 (Mittagessens-Peak). Nur nehmen, wenn Schicht **vor** dem Mittagsrush endet oder der Peak nicht deine Schicht ist.

**4. Kita- / Schul-Hauswirtschaft und Mensa-Vorbereitung**  
Frühstück und Mittagessen vorbereiten, nicht die pädagogische Nachmittagsschicht. BRK und städtische Häuser schreiben Hauswirtschaft Teilzeit aus (Beispiel: Kita-Hauswirtschaft ~25 Std — auf 20–22 drücken).  
Arbeitgeber: BRK Kreisverband München, Stadt München Kita, Caterer in Schulen (Sodexo, Apetito, regional).  
Risiko: 25–30 Std-Inserate; Nachmittag Hort. Schriftlich: Ende ≤12:00.

**5. Studierendenwerk-Mensa (Service/Küche, Mo–Fr, kein Abend)**  
Studierendenwerk München Oberbayern: Mensen Garching, Pasing, Lothstraße, Arcisstraße, Ottobrunn. Inserate betonen **keine Wochenend- und Abenddienste**, Start im Küchenbereich oft ab 6:00. TV-L, unbefristet, 30 Urlaubstage — strukturell einer der saubersten Arbeitgeber.  
Risiko: Viele Anzeigen **30 oder ≥35 Std** (über Midi oder knapp). Nur bewerben mit klarem Wunsch **20 Std / Vormittag bis 12:00**. Ottobrunn/Garching nur mit Wohnen an der Linie.

**6. Arztpraxis / MVZ / Physio / Zahnarzt / Dermatologie-Empfang Vormittag**  
Öffnung oft 7:30 oder 8:00, Vormittagsschicht bis 12:00/12:30. Quereinstieg häufig, Praxissoftware wird gelernt. Manche Praxen geschlossen am Wochenende.  
Arbeitgeber: Einzelpraxen, MVZ, Ketten (u. a. Physio, Haut, Zähne) — laufend Inserate „Empfang Teilzeit“.  
Risiko: Fast alle wollen **auch Nachmittag bis 18/19 Uhr**. Bewerbung nur mit Satz: ausschließlich Vormittag, 18–22 Std. Absage einkalkulieren, Volumen ist groß genug zum Filtern.

**7. Apotheke Vormittag (Botendienst oder HV-Hilfe)**  
Botendienst 8:00–12:00 oder Handverkauf/Warenannahme früh. Führerschein nützlich, kein eigenes Auto nötig wenn Dienstfahrrad/Jobrad.  
Risiko: Boten-Touren dehnen sich; Mini-Verträge. Midi und Ende 12:00 festschreiben.

**8. Bäckerei- / Café-Verkauf Früh**  
Backstube Wünsche u. a.: Quereinstieg, Inserate um **14 €/h**, Frühschicht. Filialen überall, Wohnen nah zur Filiale.  
Risiko: Manche Schichten nur **6:00–8:30** → 12,5 Std/Woche = **Mini**, keine KV. Nur Schichten **≥4 Std** oder Kombination die 18+ Std und >603 € sicher macht. Kein 30-Std-Vertrag.

**9. LEH Frische / Convenience / Backtheke 6:00–12:00**  
REWE/Edeka/Lidl: Verräumen, Backwaren, Convenience. Inserate mit Fenster 6:00–14:00 — **bei 12:00 kappen**. Samstagfrüh ok. Pay meist etwas über Mindestlohn, unbefristet üblich.  
Risiko: Inserat sagt Teilzeit, Planer schiebt Mittag/Abend. Schriftlich: keine Schicht nach 12:00, keine Mini-Auffüll-Aushilfe.

### 8.2 Cluster B — Fallback ab Woche 4 (Dasein, Morgen)

**10. Fitnessstudio-Empfang Öffnung**  
McFit, Fitness First, High 5, St. Martins, lokale Hallen: 6:00–12:00 Check-in, Handtücher, Störungsannahme. Quereinstieg, ruhiger als Gastro. Pay nahe Mindestlohn–15 €.  
Risiko: Split-Schicht früh+abend — ablehnen.

**11. Schwimmbad / Sauna Kasse oder Garderobe Früh**  
SWM-Bäder und private Bäder: Öffnung oft 7:00. Bademeister braucht Qualifikation — **nicht** der Einstieg. Kasse/Garderobe/Kiosk ja.  
Risiko: Wochenende, Nachmittag. Nur Frühschicht-Vertrag.

**12. Hotel-Housekeeping / Wäsche Morgen**  
5–6 Std, Start 7:00–8:00, Zimmer bis 12/13 Uhr. Pay 14–16 €, körperlich. Ende 12:00 verhandeln (weniger Zimmer, Teilzeit).  
Risiko: Quota-Druck, Ende 14:00. Näher an Körperarbeit als A — deshalb B.

**13. Praxis-/Kanzlei-/Notariat-Empfang nur vormittags**  
Steuerberater, Anwalt, Notar: 8:00–12:00 Telefon und Post. Ruhiger als Klinik, weniger Inserate.

**14. Post-/Paket-Filiale (Schalter), nicht Zustellung**  
Filiale öffnet oft 9:00 — spät fürs Fenster, nur wenn 9:00–13:00 wirklich auf 12:00 kürzt oder du 9:00–12:00 plus zweite Frühmorgenstelle nicht brauchst. Zustellrunden 6:00–15:00 bleiben draußen.

**15. Tankstelle / Bahnhofskiosk Früh**  
5:00–12:00, Alleinbesetzung möglich. Pay Mindestlohn-nah. Risiko: Abende und Nächte im Plan.

**16. Industrie-/Hotelwäsche, Sterilisation Klinik**  
Schicht 6:00–12:00, wenig Kundenkontakt, stabil. Hygienebelehrung.

### 8.3 Cluster C — nur Woche 6–8, wenn A/B nichts Schriftliches haben

Büroreinigung Gewerbe 5:00–9:00 (zu wenige Stunden pro Tag — 5 Tage × 4 Std = 20 Std möglich, aber Mini-Falle wenn 3 Tage). Hausmeister Wohnanlage Morgen. Großmarkt München Warenannahme 4:00–9:00 (sehr früh, Körper). Flughafen-Catering **nicht** Default: Schichten oft bis 13:30/14:30 plus Zuverlässigkeitsüberprüfung Wochen Verzug.

Nach 8 Wochen ohne Vertrag: Abschnitt 11.3 (Leipzig), keine vierte Philosophie, kein Lager-Default, kein Flex/Uber.

### 8.4 Vertragsregeln

- 18–22 Stunden/Woche, Monat brutto 603,01–2.000 €.
- Ende der Schicht ≤12:00. Keine verpflichtenden Dienste nach 13:00.
- Unbefristet oder befristet ≥3 Monate. Kein Abruf ohne feste Morgenzeiten.
- Arbeitsweg: ÖPNV, der die Schicht vor 6:00 erreicht. Wohnen danach wählen.
- In der Bewerbung ein Satz: „Teilzeit 18–22 Std, ausschließlich Vormittag, Schichtende spätestens 12:00, sozialversicherungspflichtig (kein Mini-Job).“

### 8.5 Bewusst nicht suchen

Amazon-Lager und -Flex; DHL/Brief-Zustellung als Default; Hort/Ganztag; Museum/Bibliothek ab 10:00; Abendgastro; Theater/Kino/Escape-Room; Scooter/Uber; Flughafen-Vollschicht mit ZÜP als Erstversuch; Bäckerei-Mini mit 2,5-Std-Schicht; Mensa/Studierendenwerk **30+ Std** ungefiltert; Praxis-Empfang mit Pflicht bis 19:00.

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
4. Jobsuche Cluster A (mind. 8 gezielte Bewerbungen in zwei Wochen: Alltagsbegleitung, Hotel-Frühstück, Heim-/Klinik-Küche, Praxis-Vormittag).
5. Midi-Vertrag unterschreiben.
6. Erst dann WG/Untermiete auf den Schichtweg zuschneiden.

Kapitalpuffer deckt Kaution, erste Mieten, KV-Überbrückung und Möbel/WG-Einlage.

## 11. Erfolg, Abbruch, Risiken

### 11.1 Erfolg nach 30 Tagen

- Angemeldet, Steuer-ID vorhanden, Krankenkasse hat den Sachverhalt schriftlich.
- Wohnen: WG oder befristetes Zimmer, warm ≤950 €, Früh-ÖPNV möglich.
- Midi-Vertrag unterschrieben **oder** drei laufende, zum Rhythmus passende Bewerbungen in Cluster A (ab Woche 4 auch B).

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
| Kein Frühjob in 8 Wochen | A → B → kurzes C; dann Switch; kein Gig, kein Lager-Default |
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
