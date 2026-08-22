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
