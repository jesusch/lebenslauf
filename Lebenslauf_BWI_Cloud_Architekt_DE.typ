// Lebenslauf – BWI / Cloud-Architekt
// Design: einspaltig, ATS-freundlich (2026), clean-print Ästhetik
// Akzent: Stahlblau (kein Lila, kein Foto, keine Sidebar)

#set page(
  paper: "a4",
  margin: (left: 1.6cm, right: 1.6cm, top: 1.4cm, bottom: 1.4cm),
)
#set text(
  font: "Helvetica Neue",
  size: 9.4pt,
  fill: rgb("#1a1a1a"),
  lang: "de",
  tracking: 0.01em,
)
#set par(leading: 0.42em, justify: true)
#set list(indent: 0.65em, body-indent: 0.35em, marker: [•])

#let accent = rgb("#1e3a5f")
#let muted = rgb("#5a5a5a")
#let rule = rgb("#c8cdd3")

#let section(title) = {
  v(0.55em)
  text(size: 10.5pt, weight: "bold", fill: accent, tracking: 0.06em, upper(title))
  v(-0.35em)
  line(length: 100%, stroke: 0.7pt + accent)
  v(0.35em)
}

#let job(role, company, meta, body) = {
  block(breakable: false, {
    v(0.22em)
    grid(
      columns: (1fr, auto),
      gutter: 0.5em,
      [
        #text(weight: "bold", size: 9.7pt)[#role]
        #text(fill: accent, weight: "medium")[ — #company]
      ],
      align(right, text(size: 8.5pt, fill: muted, meta)),
    )
    v(0.08em)
    body
  })
}

// —— Header ——
#text(size: 22pt, weight: "bold", fill: accent)[Björn Boschman]
#v(-0.35em)
#text(size: 10.5pt, weight: "medium", fill: rgb("#2c2c2c"))[Cloud- / Platform-Architekt  ·  Kubernetes & DevSecOps]
#v(0.25em)
#line(length: 100%, stroke: 1.1pt + accent)
#v(0.35em)

#text(size: 8.7pt, fill: muted)[
  São Paulo (Umzug Großraum München, Hybrid)
  · Staatsangehörigkeit: deutsch
  · Bereitschaft zur SÜ \
  +49 175 8533351
  · #link("mailto:bjoern@boschman.de")[bjoern\@boschman.de]
  · #link("https://www.linkedin.com/in/bboschman/")[linkedin.com/in/bboschman]
]

#section("Profil")
Cloud- und Platform-Architekt mit langjähriger Erfahrung im Aufbau und Betrieb skalierbarer, hochverfügbarer Infrastrukturen — inkl. Kubernetes in großem Maßstab (Peak ~1000 Nodes), Multi-Account-/Multi-Environment-Cloud, Observability und Automatisierung. Aktuell technische Leitung einer regulierten Fintech-Plattform mit strikten Umgebungstrennungen, Release-Gates und nachvollziehbaren Betriebsprozessen. Zuvor Cloud-Architekt (München/Edinburgh/São Paulo) und Lead Infrastructure in Telekommunikation mit Betrieb verteilter Rechenzentren. Ziel: Cloud-/DevSecOps-Architektur im Großraum München (Hybrid), z. B. im Umfeld sicherer Private-/Hybrid-Cloud-Plattformen.

#section("Kernkompetenzen")
#grid(
  columns: (auto, 1fr),
  row-gutter: 0.28em,
  column-gutter: 0.7em,
  text(weight: "bold", size: 8.8pt)[Plattformen],
  [Kubernetes (Architektur, Betrieb, Skalierung), Linux, Container-Workloads, Serverless (FastAPI + Lambda)],
  text(weight: "bold", size: 8.8pt)[Cloud],
  [Amazon Web Services (Multi-Account, VPC, EC2, S3, Lambda, Cognito, EventBridge), Azure (eingeführt), FinOps],
  text(weight: "bold", size: 8.8pt)[Betrieb],
  [Prometheus, Grafana, CloudWatch, SIEM, Alerting; HA (Keepalived, Galera)],
  text(weight: "bold", size: 8.8pt)[Automation],
  [IaC (Pulumi), Ansible, Puppet (Legacy), CI/CD (GitLab, TeamCity, Jenkins, GitHub Actions)],
  text(weight: "bold", size: 8.8pt)[Sicherheit],
  [Umgebungsisolation (dev/int/stg/prd), Release-Gates, E2E für kritische Pfade; Netzwerk-/Firewall (Multi-DC)],
  text(weight: "bold", size: 8.8pt)[Daten],
  [Spark, dbt, Argo, S3 Data Lakes, DynamoDB, MySQL (Replikation/Galera)],
  text(weight: "bold", size: 8.8pt)[Methoden],
  [Scrum / agile Liefermodelle; fachliche Führung (Engineering-Team, 3 Personen)],
)

#section("Berufserfahrung")

#job([CTO & Gründer], [adm.doctor S.A.], [06/2023 – heute · São Paulo · Fintech], [
  - Technische Gesamtverantwortung für Multi-Service-Cloud-Plattform mit Hunderten zahlender Kunden; Product-Delivery und AWS-/Cloud-Budget.
  - Leitung Engineering-Team (3); Aufbau zentraler Plattform-API (FastAPI/Lambda, DynamoDB, Cognito, S3, EventBridge) ab Mitte 2023.
  - Multi-Account-Topologie (dev/int/stg/prd) mit Trennung, Release-Gates und Live-E2E — übertragbar auf regulierte / hochsichere Betriebsmodelle.
  - Härtung von Production-Zahlungs- und Abstimmungsflows (Ops-Sichtbarkeit, Retry, Integritätsprüfungen); IaC (Pulumi), CI/CD.
  - Ergänzend: produktive LLM-Unterstützung (Google Gemini) für Dokumentanalyse — nachrangig zur Plattformarchitektur.
])

#job([Cloud-Architekt], [Innovid], [08/2018 – 11/2025 · München / Edinburgh / São Paulo · AdTech], [
  - Multi-Account-AWS und Kubernetes (Peak ~1000 Nodes) für selbst gebauten Pipeline-Orchestrator; Architekturentscheidung gegen reine Off-the-Shelf-Orchestrierung (Kosten-/Skalierungskontrolle).
  - Observability (Prometheus, Grafana, CloudWatch, SIEM); Automatisierung (Ansible, CI/CD GitLab/TeamCity).
  - Serverless Micro-APIs (FastAPI + Lambda); Datenpipelines (Spark, Argo, dbt).
  - FinOps: ca. USD 30k/Monat dauerhafte S3-Einsparungen; Rightsizing von Instanzen und Spark-Jobs.
])

#job([Cloud-Architekt], [draglet GmbH], [03/2017 – 07/2018 · München · Finanz-/Krypto-Plattform], [
  - Ansible-Integration der Kernsysteme; Release Management; End-to-End-Jenkins-CI/CD; automatisierte Provisionierung.
])

#job([Senior DevOps], [cleversoft GmbH], [05/2016 – 02/2017 · München · Finanzdienstleistungen], [
  - Ansible; Azure-Einführung; HA (Keepalived) und MySQL-Galera; Infrastruktur etwa verdoppelt in sechs Monaten (vSphere); SAML-SSO, Jenkins/Nexus.
])

#job([Lead Infrastructure DevOps], [smartblue AG], [08/2014 – 04/2016 · München · Solar-Monitoring], [
  - Leitung redundanter Infrastruktur; Betrieb großer MySQL-Bestände (~1 TB).
])

#job([Lead Infrastructure DevOps], [nfon AG], [07/2008 – 07/2014 · München · Telekommunikation], [
  - Betrieb mehrerer verteilter Rechenzentren (AS8878); Netzwerk-/Firewall und Config Management (Puppet, PXE).
  - MySQL-DBA (Replikation/Galera); Scrum Master und Release-Prozesse; Homogenisierung und Automatisierung des DC-Betriebs.
])

#job([Frühere Stationen], [GFU für Siemens AG / Nokia Siemens Networks], [2004 – 2008 · Mobilfunk], [
  Systemintegration, Leitung Systemtest, Release-/Testmanagement, DVB-H / MobileTV — inkl. internationalem Aufbau (Lissabon).
])

#section("Ausbildung")
#grid(
  columns: (1fr, auto),
  row-gutter: 0.25em,
  [*Hochschule München* — Angewandte Physik],
  text(size: 8.6pt, fill: muted)[09/2003 – 05/2004],
  [*Staatliche BOS/FOS München* — Fachhochschulreife],
  text(size: 8.6pt, fill: muted)[09/1999 – 07/2003],
)

#section("Sprachen")
Deutsch — Muttersprache (C2)  ·  Englisch — C1  ·  Portugiesisch — A2

#v(0.6em)
#align(right, text(size: 8pt, fill: muted)[São Paulo, August 2026])
