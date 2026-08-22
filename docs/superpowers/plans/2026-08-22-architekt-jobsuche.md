# Architekten-Jobsuche Implementation Plan

> **For agentic workers:** Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans. Checkboxes (`- [ ]`) track progress.

**Goal:** Ein Master-CV und die 14-Tage-Spur aus der Spec: Architektur-Vollzeit München/Hybrid, Innovid = Entwurf+Bau (inkl. K8s), adm.doctor ohne K8s aus Fit/Kosten, BWI von 68696 weg umlenken.

**Architecture:** Master `Lebenslauf_Bjorn_Boschman_DE.md`; EN 1:1; LinkedIn = Headline; BWI-CV nur markieren; danach Mail, Anschreiben, Tracker.

**Tech Stack:** Spec `docs/superpowers/specs/2026-08-22-architekt-jobsuche-design.md`; CVs im Root; Checklisten `docs/superpowers/plans/checklists/`.

## Global Constraints

- Headline DE exakt: `Cloud- & Platform-Architekt | Kubernetes · AWS Serverless · Applied AI` (EN: `Cloud & Platform Architect | …`).
- Ein Master-CV; Tailoring nur 3–5 Bullets; BWI-Variante nicht pflegen.
- Innovid = Entwurf und Bau. adm.doctor: K8s bewusst nicht (Fit + Kosten), keine Lücke. Serverless nicht „erst seit Gründung“.
- Ja: Cloud/Platform/Solutions Architect. Nein: K8s-Admin, Helm/GitOps-Kern, 68696, CTO-Suche, Midi als Steuergröße.
- München Hybrid, Umzug Ende 2026, SÜ wenn Architektur. Reihenfolge: CV DE → EN → LinkedIn → BWI → Liste → Bewerbungen.

---

### Task 1: Master-CV DE

**Files:**
- Modify: `Lebenslauf_Bjorn_Boschman_DE.md`
- Modify: `Lebenslauf_BWI_Cloud_Architekt_DE.md` (eine Hinweiszeile oben)

- [x] **Step 1: Fail-Check**

```bash
rg -n "Cloud- & Platform-Architekt" Lebenslauf_Bjorn_Boschman_DE.md
rg -n "Betrieb von Multi-Account-AWS" Lebenslauf_Bjorn_Boschman_DE.md
```

Erwartet: Headline fehlt (Exit 1). Alte Innovid-Zeile „Betrieb von Multi-Account-AWS“ ist noch da.

- [x] **Step 2: `Lebenslauf_Bjorn_Boschman_DE.md` komplett ersetzen** durch:

```markdown
# Björn Boschman

**Cloud- & Platform-Architekt | Kubernetes · AWS Serverless · Applied AI**  
São Paulo (Umzug Großraum München, Hybrid) · Staatsangehörigkeit: deutsch  
+49 175 8533351 · bjoern@boschman.de · [linkedin.com/in/bboschman](https://www.linkedin.com/in/bboschman/)  
Bereitschaft zur Sicherheitsüberprüfung (SÜ)

---

## Profil

Cloud- und Platform-Architekt: entwirft und setzt um — Kubernetes in großer Skala und Serverless-Microservices auf AWS, jeweils nach Fit und Kosten. Bei Innovid Architektur plus komplette Umsetzung (Peak ~1000 Nodes, FastAPI/Lambda, Pipelines, FinOps inkl. dauerhafter S3-Einsparungen von ca. USD 30k/Monat). Als CTO und Gründer von adm.doctor derselbe Ansatz als Produktplattform (Cognito, Event-getriebene Services, Multi-Account, produktive LLM-Features); Kubernetes bewusst nicht, weil es zum Produkt nicht passt und zu teuer wäre. Deutsch Muttersprache; Englisch C1; Umzug Großraum München (Hybrid), Ende 2026.

## Kernkompetenzen

- **Kubernetes & Platform:** Architektur und Umsetzung in Skala (Peak ~1000 Nodes), selbst gebauter Pipeline-Orchestrator, Linux
- **Cloud & Serverless:** Amazon Web Services (Multi-Account, VPC, EC2, S3, Lambda, API Gateway, Cognito, EventBridge), FastAPI auf Lambda; Azure (eingeführt)
- **FinOps:** Kosten- und Kapazitätssteuerung; bewusste Wahl K8s vs. Serverless nach Fit und Kosten
- **AI / LLM:** Google Gemini (Structured Outputs, Dokumentextraktion); Amazon Bedrock; produktives Error-/Quota-Handling
- **Daten:** Spark, dbt, Argo, S3 Data Lakes, DynamoDB; OSS: pydynox (async DynamoDB-ORM, Rust-Kern)
- **IaC & Delivery:** Pulumi, Ansible, Puppet (Legacy), CI/CD (GitLab, TeamCity, Jenkins, GitHub Actions)
- **Observability:** Prometheus, Grafana, CloudWatch, SIEM, Ops-Alerting
- **Methoden:** Scrum; fachliche Führung kleines Engineering-Team

## Berufserfahrung

### CTO & Gründer — adm.doctor S.A.
**06/2023 – heute** · São Paulo · Fintech / Healthcare-Payments

- Technische Gesamtverantwortung für eine Multi-Service-AWS-Plattform mit Hunderten zahlender Medizin-Kunden (E-Invoicing, Echtzeitzahlungen, digitale Wallets); Product-Roadmap, Delivery, Cloud-Budget. Kubernetes bewusst nicht eingesetzt — passt nicht zum Produkt, wäre zu teuer (dieselbe FinOps-Logik wie bei Innovid).
- Leitung eines Engineering-Teams mit 3 Personen; Konzeption und Aufbau der zentralen Abrechnungs- und Zahlungs-API (FastAPI auf AWS Lambda, DynamoDB, Cognito, S3, EventBridge), ab Mitte 2023.
- Multi-Account-Umgebungstopologie (dev/int/stg/prd) mit Release-Gates und Live-E2E-Checks für geldkritische Pfade.
- Unterstützende Dienste (Dokument-/Dateiverarbeitung, Bank-/Provider-Integrationen, Messaging), Infrastructure as Code (Pulumi), Web- und Mobile-Clients.
- Produktive PDF→Strukturierte-Rechnung-Pipeline auf Google Gemini (Structured Outputs) sowie Hybrid-Klassifikation (Heuristik zuerst, Modell als Fallback) mit quotensicherem Fehlerverhalten.
- Härtung von Production-Payout- und Reconciliation-Flows (Ops-Sichtbarkeit, Retry, Integritätsprüfungen) im regulierten Fintech-Kontext.

### Cloud-Architekt — Innovid
**08/2018 – 11/2025** · München / Edinburgh / São Paulo · Advertising Technology

- Architektur und komplette Umsetzung von Multi-Account-AWS und Kubernetes (Peak ~1000 Nodes) für einen selbst gebauten Pipeline-Orchestrator — lastabhängige Skalierung, bewusst gegen reine Off-the-Shelf-Orchestrierung (Kosten, Skala, Kundenanforderungen).
- Entwurf und Bau von Serverless-Micro-APIs (FastAPI + Lambda) für Produktteams; Datenpipelines (Spark, Argo, dbt) mit CI/CD (GitLab, TeamCity).
- FinOps: dauerhafte Einsparungen von ca. USD 30k/Monat durch S3-Optimierungen; Rightsizing von Instanzen und Spark-Jobs.
- Observability (Prometheus, Grafana, CloudWatch, SIEM) als Teil der Plattform, nicht als Nachgedanke.

### Cloud-Architekt — draglet GmbH
**03/2017 – 07/2018** · München · Krypto-Börse

- Integration der Kernkomponenten per Ansible; Release Management.
- End-to-End-Jenkins-CI/CD (Ant, Maven, Phing).
- Automatisierte Provisionierung von Krypto-Wallets (BTC, LTC, ETH).

### Senior DevOps — cleversoft GmbH
**05/2016 – 02/2017** · München · Finanzdienstleistungen

- Ansible-Integration der Kernsysteme; Einführung von Microsoft Azure.
- Infrastruktur etwa verdoppelt innerhalb von sechs Monaten (vSphere); HA (Keepalived) und MySQL-Galera-Migration.
- SAML-SSO, G-Suite-Migration sowie Jenkins/Nexus-CI/CD.

### Lead Infrastructure DevOps — smartblue AG
**08/2014 – 04/2016** · München · Solar-Monitoring

- Leitung der redundanten Infrastruktur für Solar-Monitoring-Produkte.
- Betrieb eines MySQL-Bestands von ~1 TB.

### Lead Infrastructure DevOps — nfon AG
**07/2008 – 07/2014** · München · Telekommunikation

- Betrieb mehrerer verteilter Rechenzentren (AS8878); Netzwerk/Firewall und Config Management (Puppet, PXE).
- MySQL-DBA (Multi-Tier-Replikation, Galera); Scrum Master und Release-Prozessverantwortung.

### Frühere Stationen
**2004 – 2008** · GFU für Siemens AG / Nokia Siemens Networks · Mobilfunk

Systemintegration, Leitung Systemtest, Release-/Testmanagement sowie Plattformarbeit für DVB-H / MobileTV — inkl. internationalem Aufbau und Training (Lissabon).

## Ausbildung

- **Hochschule München** — Angewandte Physik (09/2003 – 05/2004)
- **Staatliche Berufsoberschule / Fachoberschule München** — Fachhochschulreife (09/1999 – 07/2003)

## Sprachen

- Deutsch — Muttersprache (C2)
- Englisch — C1
- Portugiesisch — A2

---

São Paulo, August 2026
```

- [x] **Step 3: Hinweis oben in `Lebenslauf_BWI_Cloud_Architekt_DE.md` einfügen** (erste Zeile, Rest unverändert):

```markdown
> Nicht Master. Nicht für neue Bewerbungen. Master: `Lebenslauf_Bjorn_Boschman_DE.md` (Spec 2026-08-22).

```

- [x] **Step 4: Verify**

```bash
rg -n "Cloud- & Platform-Architekt" Lebenslauf_Bjorn_Boschman_DE.md
rg -n "Architektur und komplette Umsetzung" Lebenslauf_Bjorn_Boschman_DE.md
rg -n "Kubernetes bewusst nicht" Lebenslauf_Bjorn_Boschman_DE.md
rg -n "Betrieb von Multi-Account-AWS" Lebenslauf_Bjorn_Boschman_DE.md
rg -n "Nicht Master" Lebenslauf_BWI_Cloud_Architekt_DE.md
```

Erwartet: die ersten drei und der BWI-Hinweis matchen. „Betrieb von Multi-Account-AWS“: keine Treffer.

- [x] **Step 5: Commit**

```bash
git add Lebenslauf_Bjorn_Boschman_DE.md Lebenslauf_BWI_Cloud_Architekt_DE.md
git commit -m "Rewrite master CV as architect: design-and-build, K8s by fit and cost."
```

---

### Task 2: EN-CV angleichen

**Files:**
- Modify: `CV_Bjorn_Boschman_EN.md`

- [x] **Step 1: Fail-Check**

```bash
rg -n "Cloud & Platform Architect" CV_Bjorn_Boschman_EN.md
rg -n "Operated multi-account AWS" CV_Bjorn_Boschman_EN.md
```

Erwartet: neue Headline fehlt. Alte Innovid-Zeile „Operated multi-account AWS“ ist noch da.

- [x] **Step 2: `CV_Bjorn_Boschman_EN.md` komplett ersetzen** durch:

```markdown
# Björn Boschman

**Cloud & Platform Architect | Kubernetes · AWS Serverless · Applied AI**  
São Paulo (relocating to greater Munich, hybrid) · German citizen  
+49 175 8533351 · bjoern@boschman.de · [linkedin.com/in/bboschman](https://www.linkedin.com/in/bboschman/)  
Willing to undergo German security clearance (SÜ)

---

## Profile

Cloud and platform architect: design and implementation — Kubernetes at scale and serverless microservices on AWS, chosen by fit and cost. At Innovid, architecture plus full implementation (peak ~1000 nodes, FastAPI/Lambda, pipelines, FinOps including ~USD 30k/month lasting S3 savings). As CTO and founder of adm.doctor, the same approach as a product platform (Cognito, event-driven services, multi-account, production LLM features); Kubernetes deliberately omitted because it does not fit the product and would be too expensive. German native; English C1; relocating to greater Munich (hybrid) by end of 2026.

## Core skills

- **Kubernetes & platform:** Architecture and implementation at scale (peak ~1000 nodes), self-built pipeline orchestrator, Linux
- **Cloud & serverless:** Amazon Web Services (multi-account, VPC, EC2, S3, Lambda, API Gateway, Cognito, EventBridge), FastAPI on Lambda; Azure (adopted)
- **FinOps:** Cost and capacity control; K8s vs serverless chosen by fit and cost
- **AI / LLM:** Google Gemini (structured outputs, document extraction); Amazon Bedrock; production error/quota handling
- **Data:** Spark, dbt, Argo, S3 data lakes, DynamoDB; OSS: pydynox (async DynamoDB ORM, Rust core)
- **IaC & delivery:** Pulumi, Ansible, Puppet (legacy), CI/CD (GitLab, TeamCity, Jenkins, GitHub Actions)
- **Observability:** Prometheus, Grafana, CloudWatch, SIEM, ops alerting
- **Ways of working:** Scrum; technical lead of a small engineering team

## Professional experience

### CTO & Founder — adm.doctor S.A.
**06/2023 – present** · São Paulo · Fintech / healthcare payments

- Own product roadmap, delivery, and AWS/cloud budget for a multi-service platform serving hundreds of paying medical customers (e-invoicing, instant payments, digital wallets). Kubernetes deliberately not used — it does not fit the product and would be too expensive (same FinOps logic as at Innovid).
- Led an engineering team of 3; designed and built the central billing and payments API (FastAPI on AWS Lambda, DynamoDB, Cognito, S3, EventBridge), starting mid-2023.
- Multi-account environment topology (dev/int/stg/prd) with release gates and live end-to-end checks for money-critical paths.
- Supporting services (document/file processing, bank/provider integrations, messaging), infrastructure as code (Pulumi), web and mobile clients.
- Production PDF→structured-invoice pipeline on Google Gemini (structured outputs) and hybrid classification (heuristics first, model fallback) with quota-safe failures.
- Hardened production payout and reconciliation flows (ops visibility, retry, integrity checks) in a regulated fintech context.

### Cloud Architect — Innovid
**08/2018 – 11/2025** · Munich / Edinburgh / São Paulo · Advertising technology

- Designed and fully implemented multi-account AWS and Kubernetes (peak ~1000 nodes) for a self-built pipeline orchestrator — scale with workload, deliberately not off-the-shelf orchestration (cost, scale, customer requirements).
- Designed and built serverless micro-APIs (FastAPI + Lambda) for product teams; data pipelines (Spark, Argo, dbt) with CI/CD (GitLab, TeamCity).
- FinOps: ~USD 30k/month lasting savings from S3 optimizations; rightsizing of instances and Spark jobs.
- Observability (Prometheus, Grafana, CloudWatch, SIEM) as part of the platform, not an afterthought.

### Cloud Architect — draglet GmbH
**03/2017 – 07/2018** · Munich · Crypto exchange

- Integrated core platform components with Ansible; owned release management.
- Built end-to-end Jenkins CI/CD (Ant, Maven, Phing).
- Automated provisioning of cryptocurrency wallets (BTC, LTC, ETH).

### Senior DevOps — cleversoft GmbH
**05/2016 – 02/2017** · Munich · Financial services

- Ansible-based integration of core systems; adopted Microsoft Azure services.
- Scaled infrastructure roughly 2× within six months (vSphere); HA (Keepalived) and MySQL Galera migration.
- SAML SSO, G Suite migration, and Jenkins/Nexus CI/CD.

### Lead Infrastructure DevOps — smartblue AG
**08/2014 – 04/2016** · Munich · Solar monitoring

- Led redundant infrastructure for solar monitoring products.
- Operated MySQL footprint of ~1 TB.

### Lead Infrastructure DevOps — nfon AG
**07/2008 – 07/2014** · Munich · Telecommunications

- Operated multiple distributed data centers (AS8878); network/firewall and config management (Puppet, PXE).
- MySQL DBA (multi-tier replication, Galera); Scrum Master and release-process ownership.

### Earlier career
**2004 – 2008** · GFU for Siemens AG / Nokia Siemens Networks · Mobile communications

System integration, system test leadership, release/test management, and platform work for DVB-H / MobileTV — including international setup and training (Lisbon).

## Education

- **Munich University of Applied Sciences** — Applied Physics (09/2003 – 05/2004)
- **State Vocational and Technical High School, Munich** — Fachhochschulreife / advanced technical college entrance qualification (09/1999 – 07/2003)

## Languages

- German — native (C2)
- English — C1
- Portuguese — A2

---

São Paulo, August 2026
```

- [x] **Step 3: Verify**

```bash
rg -n "Cloud & Platform Architect" CV_Bjorn_Boschman_EN.md
rg -n "Designed and fully implemented" CV_Bjorn_Boschman_EN.md
rg -n "deliberately not used" CV_Bjorn_Boschman_EN.md
rg -n "Operated multi-account AWS" CV_Bjorn_Boschman_EN.md
```

Erwartet: die ersten drei matchen. „Operated multi-account AWS“: keine Treffer.

- [x] **Step 4: Commit**

```bash
git add CV_Bjorn_Boschman_EN.md
git commit -m "Align English CV with architect master narrative."
```

---

### Task 3: LinkedIn-Headline

**Files:**
- Create: `docs/superpowers/plans/checklists/17-linkedin-headline.md`

- [ ] **Step 1: Fail-Check** — Datei existiert nicht.

- [x] **Step 2: Datei anlegen** mit genau diesem Inhalt:

```markdown
# LinkedIn — Headline und About

Spec 2026-08-22 § 5: LinkedIn-Headline = CV-Headline, sonst Easy Apply → Ops-Trichter.

## Headline (einfügen, unverändert)

Cloud- & Platform-Architekt | Kubernetes · AWS Serverless · Applied AI

## Unterzeile / Location

Greater Munich (relocating from São Paulo) · Hybrid

## About (optional)

Cloud- und Platform-Architekt: Entwurf und Umsetzung — Kubernetes in Skala und Serverless auf AWS, nach Fit und Kosten. Innovid: Architektur plus komplette Umsetzung. adm.doctor: derselbe Ansatz; Kubernetes bewusst nicht (Fit und Kosten). Umzug München Hybrid, Ende 2026. Offen für Architect-Rollen, nicht für Cluster-Betrieb.

## Human

1. Headline ersetzen.
2. Open-to-Work: Cloud Architect, Platform Architect, Solutions Architect; Standort München + Hybrid; Startdatum Ende 2026.
3. Nicht: DevOps Engineer, Kubernetes Administrator als Titel.
```

- [ ] **Step 3: Human** — Headline in LinkedIn speichern. In der Datei Datum setzen: `Gesetzt: YYYY-MM-DD`.

- [x] **Step 4: Verify** — Datei enthält die exakte Headline-Zeile. Nach Human-Schritt steht `Gesetzt:`.

- [ ] **Step 5: Commit** (nach dem Paste, Datum gesetzt):

```bash
git add docs/superpowers/plans/checklists/17-linkedin-headline.md
git commit -m "Add LinkedIn headline paste matching master CV."
```

---

### Task 4: BWI-Follow-up

**Files:**
- Create: `docs/superpowers/plans/checklists/18-bwi-follow-up.md`

- [ ] **Step 1: Fail-Check** — Datei existiert nicht.

- [x] **Step 2: Datei anlegen** mit genau diesem Inhalt:

```markdown
# BWI-Follow-up nach Erstgespräch 21.08.2026

Kanal: dieselbe Person / dasselbe Portal wie das Erstgespräch (nicht Blind-Mail an Karriere@).
Stelle 68696 nicht weiter als Ziel behandeln. Prozess nicht abbrechen.

## Nachricht (unverändert senden)

Sehr geehrte Damen und Herren,

vielen Dank für das gute Gespräch zur Stelle Lead Cloud DevSecOps Engineer – Kubernetes (ID 68696).

Die Rolle ist für mich zu betriebsnah (Helm/GitOps-Admin, Day-2-Cluster). Mein Profil ist Cloud- und Platform-Architektur inklusive kompletter Umsetzung: Kubernetes in großer Skala und Serverless-Microservices auf AWS — bei Innovid Entwurf und Bau, aktuell als CTO einer Produktplattform (Serverless bewusst statt Kubernetes, weil Fit und Kosten).

Gibt es bei der BWI Architektenstellen (Cloud-/Platform-/Solutions-Architect) im Großraum München, Hybrid, für die ich in Frage komme? Zur Sicherheitsüberprüfung (SÜ) stehe ich bereit. Umzug nach Deutschland ist für Ende 2026 geplant.

Mit freundlichen Grüßen
Björn Boschman
+49 175 8533351
bjoern@boschman.de

## Human

Gesendet: [Datum] · Kanal: [Name/Portal] · Antwort: [offen]
```

- [ ] **Step 3: Human** — Text senden. Datum und Kanal eintragen.

- [x] **Step 4: Verify** — Datei enthält `68696`, `zu betriebsnah`, `Architektenstellen`, `München`.

- [ ] **Step 5: Commit**

```bash
git add docs/superpowers/plans/checklists/18-bwi-follow-up.md
git commit -m "Add BWI follow-up: redirect from cluster admin to architect roles."
```

---

### Task 5: Anschreiben-Vorlage

**Files:**
- Create: `Anschreiben_Architekt_Vorlage.md`

- [x] **Step 1: Fail-Check** — Datei existiert nicht.

- [x] **Step 2: Datei anlegen** mit genau diesem Inhalt:

```markdown
Björn Boschman
São Paulo (Umzug Großraum München, Hybrid)
+49 175 8533351
bjoern@boschman.de

São Paulo, {{DATUM}}

{{FIRMA}}
Bewerbung: {{STELLE}}
{{URL}}
Standort: {{ORT}}

---

Sehr geehrte Damen und Herren,

mit Interesse bewerbe ich mich als {{STELLE}}. Ich suche eine Cloud- bzw. Platform-Architektenrolle im Großraum München (Hybrid) — Entwurf und Umsetzung, nicht reinen Cluster-Betrieb.

Bei Innovid war ich Cloud-Architekt inklusive kompletter Umsetzung: Multi-Account-AWS, Kubernetes (Peak ~1000 Nodes) für einen selbst gebauten Orchestrator, Serverless-Micro-APIs (FastAPI/Lambda), Datenpipelines und FinOps. Als CTO von adm.doctor setze ich denselben Ansatz als Produktplattform um (Cognito, Event-getriebene Services, Multi-Account, produktive LLM-Features). Kubernetes setze ich dort bewusst nicht ein: es passt nicht zum Produkt und wäre zu teuer.

Deutsch ist Muttersprache; Englisch C1. Umzug nach Deutschland Ende 2026. Zur Sicherheitsüberprüfung (SÜ) stehe ich bereit, sofern die Rolle Architektur ist.

Über ein Gespräch freue ich mich.

Mit freundlichen Grüßen

Björn Boschman

Anlagen: Lebenslauf
```

- [x] **Step 3: Verify** — vier Slots `{{FIRMA}}`, `{{STELLE}}`, `{{ORT}}`, `{{URL}}`, `{{DATUM}}` kommen vor; Satz „nicht reinen Cluster-Betrieb“ steht.

- [x] **Step 4: Commit**

```bash
git add Anschreiben_Architekt_Vorlage.md
git commit -m "Add architect cover-letter template with relocation and stack story."
```

---

### Task 6: Stellen-Tracker und Suche

**Files:**
- Create: `docs/superpowers/plans/checklists/19-architekt-stellen-tracker.md`

- [ ] **Step 1: Fail-Check** — Datei existiert nicht.

- [x] **Step 2: Datei anlegen** mit genau diesem Inhalt:

```markdown
# Tracker Architekten-Stellen

Filter (unverändert):

- Ja: Cloud Architect, Platform Architect, Solutions Architect; Staff/Principal Platform nur wenn Architektur die Aufgabe ist; BWI nur Architekten-Titel.
- Nein: Kubernetes-Admin, Helm/GitOps als Jobkern, reines DevOps/SRE-Ticket, Stelle 68696, CTO als Hauptlinie.
- Rahmen: Großraum München, Hybrid; Start Ende 2026; Deutsch; SÜ ok wenn Architektur.
- Kanäle: LinkedIn, Stepstone, Firmen-Karriereseiten; BWI-Portal nur Architekten-IDs.
- Bewerbung: `Lebenslauf_Bjorn_Boschman_DE.md` + `Anschreiben_Architekt_Vorlage.md` (Slots ersetzen). Kein BWI-Admin-CV.

Status: `kandidat` | `nein` | `beworben` | `gespräch` | `absage` | `angebot`

Ziel: 8–12 Zeilen `kandidat` oder `nein` (mit Grund); davon 3–5 `beworben`.

| Datum | Quelle | Arbeitgeber | Stelle | ID/URL | München/Hybrid? | Architektur? | Status | Nächster Schritt |
|---|---|---|---|---|---|---|---|---|

## Suchqueries (copy)

LinkedIn: `Cloud Architect` OR `Platform Architect` OR `Solutions Architect` München Hybrid
Stepstone: `Cloud Architekt` München; `Platform Architect` München
BWI Karriere: `Architekt` Cloud OR Platform; IDs gegen 68696 halten — 68696 nicht bewerben
```

- [ ] **Step 3: Human** — in einer Sitzung 8–12 Live-Inserate eintragen. Jede Nein-Zeile braucht einen Grund in `Nächster Schritt` (z. B. „Helm/GitOps als Jobkern“). Dann 3–5 Ja-Stellen bewerben, Status `beworben`, Datum setzen.

- [x] **Step 4: Verify**

```bash
rg -c "^\|" docs/superpowers/plans/checklists/19-architekt-stellen-tracker.md
rg -c "beworben" docs/superpowers/plans/checklists/19-architekt-stellen-tracker.md
```

Erwartet nach Human: mindestens 9 Tabellenzeilen inkl. Header (8 Datenzeilen); `beworben` mindestens 3.

- [ ] **Step 5: Commit** (nach den Bewerbungen, nicht mit leerer Tabelle als „fertig“):

```bash
git add docs/superpowers/plans/checklists/19-architekt-stellen-tracker.md
git commit -m "Track architect-role search and first applications."
```

---

## Spec-Abgleich

§2–6 → Tasks 1–2; LinkedIn §5 → 3; BWI §8 → 4; Anschreiben+Filter §7 → 5–6; Reihenfolge §9 = Task-Order; Midi §10 = Constraints; Erfolg §11 = Verify 1/4/6.
