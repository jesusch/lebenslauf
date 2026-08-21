# Wohnung Social Kampagne Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Björn hat ein fertiges Content-Kit und führt Phase 0 (Setup) bis Pin + Hero live; danach Phasen 1–3 nach Kalender — 2-Zimmer-Suche München über bestehende IG/FB-Profile.

**Architecture:** Texte und Checklisten im Repo; Dreh in São Paulo; CapCut für Schnitt und eingebrannte DE-Untertitel; Canva für Statics mit eigenen Fotos; Meta Business Suite für Feed/Reels; Stories und Gruppen nativ. Kein AI-Avatar, kein Gruppen-Autopost.

**Tech Stack:** Spec `docs/superpowers/specs/2026-08-21-wohnung-social-kampagne-design.md`; Checklisten `10`–`16`; CapCut Free; Canva Free; Meta Business Suite; bestehende Instagram- und Facebook-Profile.

## Global Constraints

- 2 Zimmer, allein, langfristig; nur Stadt München (kein Umland); Budget nicht öffentlich.
- Bestehende Accounts; selbst filmen; CapCut DE-Untertitel eingebrannt; kein EN/PT im Video.
- Kein AI-Avatar, kein Predis/Fliki/HeyGen/Poppify-Autopost in Gruppen.
- Kein Midi-Job / Dividende / €-Limit in Bio, Reel, Pin oder Standard-Mappe.
- Finanz-/KV-Spec (`2026-08-18-deutschland-umzug-midijob-design.md`) bleibt unverändert; langfristiger Mietvertrag erst nach Umzugs-Landungslogik.
- Stories + Facebook-Gruppen = nativ; Feed/Reels = Meta Business Suite ok.

## File map

| File | Responsibility |
|---|---|
| `docs/superpowers/specs/2026-08-21-wohnung-social-kampagne-design.md` | Design / Guardrails |
| `docs/superpowers/plans/checklists/10-ig-fb-profil.md` | Bio, Highlight, Pin, Link |
| `docs/superpowers/plans/checklists/11-shot-liste.md` | Drehsession São Paulo |
| `docs/superpowers/plans/checklists/12-reels-captions.md` | 5 Skripte + Captions |
| `docs/superpowers/plans/checklists/13-redaktionskalender.md` | Phasen 0–3 |
| `docs/superpowers/plans/checklists/14-gruppen-und-regeln.md` | Gruppen + Anti-Spam |
| `docs/superpowers/plans/checklists/15-wohnungsmappe-dm.md` | 1-Seiten-DM-Mappe |
| `docs/superpowers/plans/checklists/16-ai-workflow.md` | CapCut / Canva / Export |

---

### Task 1: Kit-Dateien verifizieren

**Files:**
- Verify: Spec + Checklisten `10`–`16` (bereits angelegt)

**Interfaces:**
- Consumes: Plan „Wohnungssuche München: Material + Scheduling“
- Produces: `KIT_OK` — alle acht Pfade existieren

- [ ] **Step 1: Fail-Check**

```bash
ls docs/superpowers/specs/2026-08-21-wohnung-social-kampagne-design.md \
  docs/superpowers/plans/checklists/10-ig-fb-profil.md \
  docs/superpowers/plans/checklists/11-shot-liste.md \
  docs/superpowers/plans/checklists/12-reels-captions.md \
  docs/superpowers/plans/checklists/13-redaktionskalender.md \
  docs/superpowers/plans/checklists/14-gruppen-und-regeln.md \
  docs/superpowers/plans/checklists/15-wohnungsmappe-dm.md \
  docs/superpowers/plans/checklists/16-ai-workflow.md
```

Erwartet: acht Pfade, Exit 0.

- [ ] **Step 2: Inhalt-Spotcheck**

In Spec stehen wörtlich: „2-Zimmer“, „eingebrannt“, „kein AI-Avatar“.  
In `12` steht die Kommentarzeile `München · 2 Zimmer · allein · langfristig`.  
In `16` steht Export `1080 × 1920`.

- [ ] **Step 3: Commit** (falls noch uncommitted)

```bash
git add docs/superpowers/specs/2026-08-21-wohnung-social-kampagne-design.md \
  docs/superpowers/plans/2026-08-21-wohnung-social-kampagne.md \
  docs/superpowers/plans/checklists/1{0,1,2,3,4,5,6}-*.md
git commit -m "Add Munich housing social campaign kit and calendar."
```

---

### Task 2: Platzhalter und Kalenderdaten setzen

**Files:**
- Modify: `12-reels-captions.md`, `13-redaktionskalender.md`, `15-wohnungsmappe-dm.md`, `10-ig-fb-profil.md` (Human)

**Interfaces:**
- Consumes: `KIT_OK`
- Produces: `MONAT_GESETZT` — `[Monat]` und Landungsdatum konkret

- [ ] **Step 1:** Einzugsmonat und -jahr festlegen (z. B. Dezember 2026).

- [ ] **Step 2:** In `12` und `10` alle `[Monat]` / `[Monat/Jahr]` ersetzen; in `15` Einzug + Haustiere/Rauchen + Kontakt ausfüllen.

- [ ] **Step 3:** In `13` Landungsdatum und T-8-Datum eintragen.

- [ ] **Step 4: Verify** — `rg '\[Monat\]' docs/superpowers/plans/checklists/1{0,2,5}*.md` liefert keine Treffer mehr (außer bewusst offene Felder in `14`).

---

### Task 3: Drehsession São Paulo

**Files:**
- Follow: `11-shot-liste.md`
- Input: Skripte aus `12-reels-captions.md`

**Interfaces:**
- Consumes: `MONAT_GESETZT`
- Produces: `ROHMATERIAL` — 5 Takes + ≥5 Fotos

- [ ] **Step 1:** Vor dem Dreh-Checkliste in `11` abhaken.

- [ ] **Step 2:** Fünf Stücke je 2–3 Takes (Hero, Suchprofil, Guter Mieter, So hilft ihr, Nicht ImmoScout).

- [ ] **Step 3:** 8–10 Fotos laut `11`.

- [ ] **Step 4: Verify** — Besten Take pro Stück markiert; Rohmaterial gesichert.

---

### Task 4: CapCut + Canva Export

**Files:**
- Follow: `16-ai-workflow.md`

**Interfaces:**
- Consumes: `ROHMATERIAL`
- Produces: `ASSETS` — 5× MP4 1080×1920 + Carousel + Highlight-Cover

- [ ] **Step 1:** CapCut: pro Reel trimmen, DE-Auto-Captions, Korrektur, Burn-in, Export 9:16.

- [ ] **Step 2:** Stumm abspielen — Botschaft ohne Ton verständlich.

- [ ] **Step 3:** Canva: Pin-Carousel + Highlight-Cover mit eigenen Fotos (kein KI-Gesicht).

- [ ] **Step 4: Verify** — fünf Dateien `*-muenchen.mp4` (oder gleichwertig); Carousel exportiert; kein CapCut-Wasserzeichen-Problem.

- [ ] **Step 5:** Fallback nur bei Bedarf: Captions.ai Basic — **kein** AI Twin.

---

### Task 5: Profil Phase 0 live

**Files:**
- Follow: `10-ig-fb-profil.md`

**Interfaces:**
- Consumes: `ASSETS`
- Produces: `PIN_LIVE` — Bio, Highlight, Pin, FB-Feed

- [ ] **Step 1:** Instagram-Bio + Link in Bio setzen.

- [ ] **Step 2:** Highlight „Wohnung München“ anlegen.

- [ ] **Step 3:** Hero-Reel oder Carousel posten, anpinnen; ersten Kommentar (Suchprofil-Zeile) setzen.

- [ ] **Step 4:** Facebook-Feed-Post (nicht Gruppen-Spam).

- [ ] **Step 5: Verify** — Checklist `10` Verify-Abschnitt; kein € und kein Midi-Job sichtbar.

---

### Task 6: Wohnungsmappe + Gruppenliste

**Files:**
- Follow: `15-wohnungsmappe-dm.md`, `14-gruppen-und-regeln.md`

**Interfaces:**
- Consumes: `PIN_LIVE`
- Produces: `DM_READY` — PDF/Mappe + ≥3 Gruppen mit Regeln geprüft

- [ ] **Step 1:** Mappe als eine Seite/PDF speichern; auf Handy lesbar testen.

- [ ] **Step 2:** Mindestens 3 relevante FB-Gruppen beitreten/regeln lesen; Tabelle in `14` füllen.

- [ ] **Step 3:** Ersten Gruppen-Post nur wo „Suche erlaubt“ = ja; Gruppen-Caption aus `12`; Anti-Spam beachten.

- [ ] **Step 4: Verify** — Mappe ohne Budget; ≥3 Gruppen mit „Regeln gelesen“.

---

### Task 7: Phase 1 Kalender starten

**Files:**
- Follow: `13-redaktionskalender.md`

**Interfaces:**
- Consumes: `DM_READY`, `ASSETS`
- Produces: `WAERME_GEPLANT` — nächste 4 Wochen Reels in Meta Business Suite

- [ ] **Step 1:** Phase-0-Checkboxen in `13` abschließen.

- [ ] **Step 2:** In Meta Business Suite 2 Reels (2-Wochen-Takt) + Captions Netzwerk einplanen.

- [ ] **Step 3:** Story-Tage (2×/Woche) im privaten Kalender markieren.

- [ ] **Step 4:** Liste „10 Share-Bitten“ anlegen (Namen); erste 3 diese Woche persönlich anschreiben.

- [ ] **Step 5: Verify** — Suite zeigt geplante Posts; Share-Liste existiert.

---

### Task 8: Gate Phase 2 / Erfolgskriterien

**Files:**
- Reference: Spec §§ 7–9; `13` Phase 2–3

**Interfaces:**
- Consumes: `WAERME_GEPLANT`
- Produces: Gate-Entscheidung bei T-8 und nach Landung

- [ ] **Step 1 (bei T-8):** Auf Phase-2-Takt umschalten (1 Reel/Woche, Stories 4–5×, Gruppen 1×/Woche, gezielte DMs).

- [ ] **Step 2:** Erfolg Spec § 9 prüfen: Pin+Hero live; ≥10 Share-Bitten; Mappe bereit; kein Spam-Flag.

- [ ] **Step 3 (nach Landung):** Phase 3; Mietvertrag nur nach Umzugs-Landungslogik (`06-landung-14-tage.md`), nicht aus Social-Druck.

- [ ] **Step 4: Verify** — Abbruch nur nach Spec-Erfolgskriterien / Umzugs-Gates, nicht nach „wenig Likes“.

---

## Execution handoff

Kit-Dateien sind das Agent-Deliverable. Tasks 2–8 sind Human (+ optional Agent-Erinnerungen). Nach Task 1 Commit: Spec zur Review freigeben, dann Phase 0 physisch ausführen.
