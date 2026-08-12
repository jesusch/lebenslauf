// Anschreiben – aligned with Lebenslauf_BWI_Cloud_Architekt_DE.typ
// Design: einspaltig, Stahlblau-Akzent, Helvetica Neue, 1 Seite

#set page(
  paper: "a4",
  margin: (left: 2cm, right: 2cm, top: 1.8cm, bottom: 1.8cm),
)
#set text(
  font: "Helvetica Neue",
  size: 10.5pt,
  fill: rgb("#1a1a1a"),
  lang: "de",
  tracking: 0.01em,
)
#set par(leading: 0.55em, justify: true, spacing: 0.85em)

#let accent = rgb("#1e3a5f")
#let muted = rgb("#5a5a5a")

// —— Header (same identity as Lebenslauf) ——
#text(size: 20pt, weight: "bold", fill: accent)[Björn Boschman]
#v(-0.3em)
#text(size: 10pt, weight: "medium", fill: rgb("#2c2c2c"))[Cloud- / Platform-Architekt  ·  Kubernetes & DevSecOps]
#v(0.28em)
#line(length: 100%, stroke: 1.1pt + accent)
#v(0.35em)

#text(size: 9pt, fill: muted)[
  São Paulo (Umzug Großraum München, Hybrid)
  · +49 175 8533351
  · #link("mailto:bjoern@boschman.de")[bjoern\@boschman.de]
  · #link("https://www.linkedin.com/in/bboschman/")[linkedin.com/in/bboschman]
]

#v(1.1em)

#grid(
  columns: (1fr, auto),
  [
    #text(weight: "medium")[BWI GmbH] \
    #text(fill: muted, size: 9.5pt)[Bewerbung über das Online-Portal]
  ],
  align(right, text(fill: muted, size: 9.5pt)[São Paulo, 12. August 2026]),
)

#v(0.9em)

#text(weight: "bold", fill: accent)[Bewerbung als Lead Cloud DevSecOps Engineer – Kubernetes (m/w/d)]
#v(0.15em)
#text(size: 9pt, fill: muted)[
  Stellenausschreibung: #link("https://www.bwi.de/karriere/stellenangebote/job/lead-cloud-devsecops-engineer-kubernetes-m-w-d-68696")[bwi.de/…/lead-cloud-devsecops-engineer-kubernetes-m-w-d-68696] \
  Standort laut Ausschreibung: Berlin, Bonn, Hamburg, Meckenheim oder München
]

#v(0.75em)

Sehr geehrte Damen und Herren,

mit großem Interesse bewerbe ich mich als Lead Cloud DevSecOps Engineer – Kubernetes (m/w/d). Als Cloud- und Platform-Architekt mit langjähriger Erfahrung im Betrieb skalierbarer Kubernetes- und Cloud-Umgebungen möchte ich die Private-Cloud-Plattform der BWI mitgestalten — bevorzugt am Standort München (Hybrid). Zur Sicherheitsüberprüfung (SÜ) stehe ich bereit.

In meiner aktuellen Rolle verantworte ich als CTO und Gründer einer regulierten Fintech-Plattform Architektur, Delivery und Cloud-Budget: Multi-Account-Umgebungen mit klarer Trennung (dev/int/stg/prd), Release-Gates, Live-Verifikation kritischer Pfade sowie Infrastructure as Code und CI/CD. Zuvor war ich als Cloud-Architekt (u. a. München) für Multi-Account-AWS und Kubernetes mit Peak von ca. 1000 Nodes verantwortlich — inkl. Observability (Prometheus, Grafana, CloudWatch/SIEM), Automatisierung und kostenbewusstem Betrieb. Frühere Stationen als Lead Infrastructure in Telekommunikation umfassen den Betrieb verteilter Rechenzentren, Netzwerk-/Firewall-Management und Config Management.

Damit bringe ich die für die Stelle zentralen Themen mit: Aufbau und Betrieb hochautomatisierter Kubernetes-Infrastrukturen, CI/CD und IaC, Hochverfügbarkeit sowie Sicherheits- und Compliance-Anforderungen in komplexen Umgebungen. Public-Cloud- und Fintech-Erfahrung übersetze ich bewusst auf souveräne / private Betriebsmodelle — mit Fokus auf Isolation, Standardisierung und sichere Betriebsprozesse.

Deutsch ist meine Muttersprache; Englisch beherrsche ich auf C1-Niveau. Ich wohne derzeit in São Paulo / Brasilien und plane, gegen Ende des Jahres dauerhaft nach Deutschland zurückzukehren — angestrebt ist der Großraum München (Hybrid).

Über die Einladung zu einem Gespräch freue ich mich.

#v(0.9em)
Mit freundlichen Grüßen

#v(1.4em)
#text(weight: "bold", fill: accent)[Björn Boschman]

#v(1.0em)
#line(length: 35%, stroke: 0.5pt + rgb("#c8cdd3"))
#v(0.25em)
#text(size: 9pt, fill: muted)[Anlagen: Lebenslauf]
