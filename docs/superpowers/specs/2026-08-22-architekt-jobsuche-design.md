# Design: Architekten-Jobsuche (Kubernetes + aktuelle Plattform)

Datum: 2026-08-22  
Status: freigegeben (22.08.2026)  
Person: Björn Boschman (deutsch, São Paulo → Großraum München, Hybrid)

## 1. Problem

Erstgespräch bei der BWI (21.08.2026) zur Stelle *Lead Cloud DevSecOps Engineer – Kubernetes* (ID 68696) lief gut. Die Rolle ist Cluster-Betrieb (Helm, GitOps, Day-2-Admin). Der dortige Ausschnitt ist schmaler als das Profil.

Bei Innovid war die Rolle **Cloud-Architekt inkl. kompletter Umsetzung**, nicht Kubernetes-Admin. Derselbe Stack: Multi-Account-AWS, Kubernetes in Skala, Serverless-Micro-APIs (FastAPI + Lambda), Datenpipelines, Observability, FinOps.

adm.doctor setzt denselben Architektur-Ansatz als Produktplattform fort (Cognito, EventBridge, Multi-Account, Applied AI). Kubernetes läuft dort **nicht**, weil es nicht zum Produkt passt und zu teuer wäre — bewusste Architektur-/FinOps-Entscheidung, kein Skill-Abbau. Bei Innovid war K8s die richtige Wahl (Peak ~1000 Nodes); beim Payments-Produkt ist Serverless die richtige Wahl.

Der BWI-Lebenslauf hat den Admin-Trichter geöffnet, weil Kubernetes als Betriebs-Skill vorne stand und Architektur plus Umsetzung (Innovid und adm.doctor) nachrangig wirkten.

Die Spec [2026-08-18 Midi-Job](2026-08-18-deutschland-umzug-midijob-design.md) setzte Tech-Vollzeit explizit nicht als Plan A. Das ist für die Jobsuche überholt.

## 2. Ziel

- Plan A: **Architektur-Vollzeit** in DACH, Standort Großraum München, Hybrid, Start mit Umzug Ende 2026.
- Ein Master-CV: durchgehende Architekten-Story. Innovid = Entwurf + Bau (K8s + Serverless). adm.doctor = derselbe Ansatz im Produkt, plus Identity/Events/AI; kein K8s, weil Fit und Kosten dagegen sprechen.
- Bewerben auf Cloud- / Platform- / Solutions-Architect-Rollen, nicht auf Cluster-Admin.
- BWI-Kontakt halten, Stelle 68696 nicht weiter als Ziel behandeln; nach Architektenstellen München/Hybrid fragen.
- In 14 Tagen: Master-CV, LinkedIn-Headline, BWI-Follow-up, 8–12 gefilterte Live-Stellen, 3–5 Bewerbungen.

## 3. Nicht-Ziele

- Zweites, auf Kubernetes-Admin getrimmtes CV (Ansatz 2 verworfen).
- CTO- / Head-of-Engineering-Suche als Hauptlinie (Ansatz 3 verworfen; Gründerrolle bleibt Positionsbezeichnung bei adm.doctor).
- Stelle 68696 weiter pushen oder den BWI-Prozess ohne Kommentar abbrechen.
- Midi-Job als Steuergröße für Tech-Suche, Wohnort oder Headline.
- Helm/GitOps-Tiefe im CV erfinden, die nicht Arbeitsschwerpunkt war.
- Kubernetes aus dem CV nehmen oder Innovid als reine Cluster-Ops-Station erzählen.
- Serverless/Cognito/Microservices so erzählen, als gäbe es sie erst seit adm.doctor.
- Fehlendes Kubernetes bei adm.doctor als „kein K8s mehr“ oder Skill-Lücke erzählen. Es ist Fit + Kosten.

## 4. Entscheidungen

| Thema | Festlegung |
|---|---|
| Plan A | Architektur-Vollzeit |
| Ansatz | Ein Architekten-CV, ein Stack, zwei Stationen |
| Innovid | Cloud-Architekt inkl. kompletter Umsetzung (nicht K8s-Admin) |
| Stack | Derselbe Ansatz: AWS, Serverless-APIs, IaC, Observability. K8s dort, wo Skala es trägt (Innovid). Bei adm.doctor bewusst kein K8s (passt nicht, zu teuer). |
| Headline | Cloud- & Platform-Architekt \| Kubernetes · AWS Serverless · Applied AI |
| Unterzeile | São Paulo → Großraum München, Hybrid · deutsch · SÜ möglich |
| Master-Datei | `Lebenslauf_Bjorn_Boschman_DE.md`; EN danach angleichen |
| BWI-Variante | Nicht weiter als Admin-CV pflegen; Tailoring = 3–5 Bullets pro Stelle |
| Zielrollen | Cloud Architect, Platform Architect, Solutions Architect; Staff/Principal Platform nur wenn Architektur die Aufgabe ist |
| BWI weiter | Nur Architekten-Titel (z. B. DevSecOps Architekt Cloud Plattform, Service Architect) |
| SÜ | Ja, wenn die Rolle Architektur ist |
| Midi-Job-Spec | Fallback; steuert diese Suche nicht. Konflikt in § 10 |

## 5. Positionierung

Eine Headline, ein Stack, ein Master-CV.

**Profilsatz:** Cloud- und Platform-Architekt: entwirft und setzt um — Kubernetes in großer Skala und Serverless-Microservices auf AWS, jeweils nach Fit und Kosten. Bei Innovid Architektur plus komplette Umsetzung (Peak ~1000 Nodes, FastAPI/Lambda, Pipelines, FinOps). Als CTO von adm.doctor derselbe Ansatz als Produktplattform (Cognito, Events, Multi-Account, LLM); Kubernetes bewusst nicht, weil es zum Produkt nicht passt und zu teuer wäre.

CTO & Gründer bleibt die Rollenbezeichnung bei adm.doctor, nicht die Such-Headline.

LinkedIn-Headline = CV-Headline. Sonst zieht Easy Apply wieder in den Ops-Trichter.

Innovid-Bullets im Master-CV müssen **Entwurf und Bau** tragen (Orchestrator, Serverless-APIs, Account-Topologie, Pipelines), nicht nur „Betrieb von ~1000 Nodes“.

## 6. Stack — durchgehend, nicht nacheinander

### 6.1 Innovid (08/2018–11/2025) — Architektur + Umsetzung

Multi-Account-AWS; Kubernetes Peak ~1000 Nodes für einen selbst gebauten Pipeline-Orchestrator (Architekturentscheidung, nicht Off-the-Shelf-Admin); Serverless-Micro-APIs (FastAPI + Lambda) für Produktteams; Datenpipelines (Spark, Argo, dbt); Observability (Prometheus, Grafana, CloudWatch, SIEM); FinOps (dauerhaft ca. USD 30k/Monat S3). Frühere Lead-Infrastructure-Stationen (nfon Multi-DC, cleversoft Azure) sind Vorgeschichte, nicht die Innovid-Rolle.

### 6.2 adm.doctor (06/2023–heute) — derselbe Ansatz im Produkt

Belegt in `~/git`: `core-api`, `file-api`, `extract-api`, `callback-api`, `message-svc`, `chat-svc`, `ops-svc`, `bank-sim`, Frontends `admdoc-cra` / `flutter-app`, IaC `pulumi`, Koordination `platform`. Fünf AWS-Accounts (dev/int/stg/prd/org). FastAPI auf Lambda, Cognito, DynamoDB, EventBridge, API Gateway, S3, SES, Release-Gates, int-E2E. Zweites Produkt: `admhospital`. OSS: `pydynox` (async DynamoDB-ORM, Rust-Kern, PyPI).

Kubernetes ist hier **absichtlich nicht** im Einsatz: passt nicht zum Projekt, wäre zu teuer. Das ist dieselbe FinOps-Logik wie die S3-Einsparungen bei Innovid, nicht eine Abkehr von Kubernetes.

Was hier **neu** ist gegenüber Innovid: Healthcare-Payments-Domäne, Cognito als Identity, EventBridge-Flows, Applied AI, Gründer-/CTO-Verantwortung. Was **nicht** neu ist: Serverless auf AWS, Microservices, Multi-Account, IaC, Produktionsbetrieb.

### 6.3 Applied AI im Produkt (dazu)

Gemini Structured Outputs (Rechnungen), Bedrock + Transcribe (WhatsApp/`chat-svc`), Slack-Ops-Agent (`ops-svc`).

Nicht im CV aufblasen: Helm-Charts, Argo CD/Flux, Service Mesh als Jobkern.

## 7. Stellenfilter

**Ja:** Cloud / Platform / Solutions Architect. Staff/Principal Platform, wenn Architektur die Aufgabe ist. BWI nur bei Architekten-Titel.

**Nein:** Kubernetes-Admin, Helm/GitOps als Jobkern, reines DevOps/SRE-Ticket, Stelle 68696 als Ziel, CTO als Hauptlinie, Midi-Job als Steuergröße.

**Rahmen:** Großraum München, Hybrid; Start mit Umzug Ende 2026; Deutsch Muttersprache.

**Kanäle:** LinkedIn, Stepstone, Firmen-Karriereseiten; BWI-Portal nur Architekten-IDs. Pro Bewerbung Master-CV plus kurzes Architekten-Anschreiben (Umzug, Hybrid, München klar). Kein zweites Admin-CV.

## 8. BWI

Prozess nicht abbrechen. Rolle 68696 nicht weiter als Ziel behandeln.

Nächster Kontakt sinngemäß: Das Gespräch war gut; die Stelle ist zu betriebsnah (Helm/GitOps-Admin). Das Profil ist Architektur plus Umsetzung (Kubernetes und Serverless), wie bei Innovid und adm.doctor. Frage: gibt es Architektenstellen (Cloud/Platform) in München/Hybrid?

## 9. Erste 14 Tage (Reihenfolge)

1. Master-CV DE schreiben (`Lebenslauf_Bjorn_Boschman_DE.md`); EN angleichen. Innovid-Bullets auf Entwurf + Bau schärfen.
2. LinkedIn-Headline auf CV-Headline setzen.
3. BWI-Follow-up senden (§ 8).
4. 8–12 Live-Stellen nach § 7 sammeln.
5. 3–5 Bewerbungen absenden.

Nicht alles parallel in Schritt 1 starten.

## 10. Verhältnis zur Midi-Job-Spec

[2026-08-18](2026-08-18-deutschland-umzug-midijob-design.md) § 3 (Tech-Vollzeit nicht Plan A) und die Aussage, BWI steuere Wohnort/Jobwahl nicht, gelten **nicht** für diese Jobsuche.

Midi-Job bleibt Fallback, falls Architektur-Vollzeit in der Landungsphase nicht greift. Wohnung, KV und Gesellschaftsstatus bleiben in jener Spec, soweit sie nicht der Vollzeit-Suche widersprechen.

## 11. Erfolg

- Master-CV erzählt einen Architekten-Ansatz über Innovid und adm.doctor; Innovid ist Entwurf + Bau (inkl. K8s), adm.doctor ohne K8s aus Fit/Kosten — nicht als Lücke.
- Keine Bewerbung auf Stellen, deren Kern Helm/GitOps-Admin ist.
- BWI hat eine klare, höfliche Umlenkung gehört.
- Mindestens 3 Architekten-Bewerbungen in 14 Tagen, Standort/Hybrid/Umzug explizit.

## 12. Nächster Schritt nach Freigabe

Implementation Plan (writing-plans): Master-CV, EN-Sync, LinkedIn-Zeile, BWI-Nachrichtentext, Stellensuche, Anschreiben-Vorlage.
