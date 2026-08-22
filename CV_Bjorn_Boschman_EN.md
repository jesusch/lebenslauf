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
