# Design: Wohnungssuche München — Social-Kampagne (Material + Scheduling)

Datum: 2026-08-21  
Status: freigegeben zur Spec-Review  
Person: Björn Boschman (deutscher Staatsbürger, solo, São Paulo → München Jahresende)

## 1. Problem

2-Zimmer-Wohnungen in München sind knapp. Portal-Bewerbungen (ImmoScout & Co.) skalieren schlecht ohne Netzwerk und Vertrauen. Björn ist noch in Brasilien; Einzug eher Jahresende. Bestehende Instagram- und Facebook-Profile sind der Hebel — aber ohne fertiges Material und ohne Takt verpufft die Idee.

## 2. Ziel

- Aus Brasilien vorwärmen, dann vor Ort intensivieren.
- Ein Content-Set, das **Netzwerk teilt** und in **Wohnungsgruppen** funktioniert.
- 2 Zimmer, allein, langfristig; **nur Stadt München (kein Umland)**; Budget **nicht** öffentlich.
- Pin + Hero-Reel live; Mappe für DMs bereit; ab T-8 sichtbarer Rhythmus ohne Spam-Flags.

## 3. Nicht-Ziele

- AI-Avatar / Stock-Gesicht / Fake-UGC (HeyGen, Synthesia, Predis, Fliki, Persyn, Poppify, …).
- Meta-API, Bots, Auto-Post in Facebook-Gruppen.
- Öffentliches Mietlimit, Midi-Job oder Dividende im Reel/Pin.
- Änderung der KV-/Midi-Job-Finanz-Spec ([2026-08-18](2026-08-18-deutschland-umzug-midijob-design.md)).
- ImmoScout-Bewerbungsautomation.
- WG als Kampagnen-Ziel (abweichend von Umzugs-Spec § 9 — bewusst; Finanz-Spec bleibt unangetastet).

## 4. Entscheidungen

| Thema | Festlegung |
|---|---|
| Wohnform | 2-Zimmer-Wohnung, allein (keine WG in Posts) |
| Lage | ausschließlich Stadt München — kein Umland |
| Budget öffentlich | unsichtbar; privat verhandeln |
| Accounts | bestehende private IG + FB |
| Produktion | selbst filmen; AI schreibt Texte; CapCut schneidet + DE-Untertitel eingebrannt |
| Statics | Canva Free, nur mit eigenen Fotos |
| Scheduling | Meta Business Suite für Feed/Reels; Stories + Gruppen nativ |
| Untertitel | Deutsch, eingebrannt (kein EN/PT im Bild) |
| Ton | zurückkehrender Münchner; ruhig, konkret; nicht Bittsteller; nicht Tech-Flex |

## 5. Architektur

```
Cursor (Skripte/Captions/Mappe)
    → Handy (drehsession São Paulo)
    → CapCut (Schnitt, DE-Untertitel 1080×1920)
    → Meta Business Suite (Feed/Reels) | nativ (Stories, Gruppen)
Canva (Carousel/Highlights aus echten Fotos) → Meta / Stories
DM: Wohnungsmappe (1 Seite, nicht öffentlich)
```

## 6. Material

Fünf Videos, eine Drehsession:

| Stück | Länge | Job |
|---|---|---|
| Hero | 30–45 s | Wer, warum München, 2 Zimmer allein, langfristig, CTA teilen |
| Suchprofil | ~20 s | Nur Stadt München (kein Umland), lang, allein, Haustiere/Rauchen ehrlich |
| Guter Mieter | ~20 s | ruhig, pfleglich, Referenzen auf Anfrage |
| So hilft ihr | ~15 s | Teilen, Intro, Gruppen-OK |
| Nicht ImmoScout | ~20 s | warum persönlich — ohne Vermieter-Bashing |

Erste Kommentarzeile unter jedem Reel:

`München · 2 Zimmer · allein · langfristig · ab [Monat] · DM`

Captions in zwei Längen: Netzwerk (wärmer) und Gruppe (kürzer, regelkonform).

## 7. Phasen

| Phase | Wann | Takt |
|---|---|---|
| 0 Setup | diese Woche | Bio, Highlight, Pin, Mappe, 1 Drehsession |
| 1 Wärme | bis ca. T-8 | 1 Reel / 2 Wochen; Stories 2×/Woche; FB-Feed 1×/Monat; Gruppen 1×/Gruppe/Monat |
| 2 Druck | T-8 bis Landung | 1 Reel/Woche; Stories 4–5×/Woche; gezielte DMs; Gruppen 1×/Gruppe/Woche |
| 3 Vor Ort | nach Landung | täglich Stories bei Besichtigungen; Pin bleibt; Gruppen nur bei neuem Video |

Anti-Spam: nicht denselben Text in 20 Gruppen am selben Tag; Regeln lesen; keine „dringend!!!“-Captions.

## 8. Guardrails

- Kein öffentliches Budget, kein Midi-Job, keine Dividende im öffentlichen Content.
- Kein AI-Avatar.
- Langfristigen Mietvertrag erst nach Landungs-/KV-Logik des Umzugsplans (Anmeldung → Kasse → …).
- Nur Stadt München — kein Umland, keine Vororte außerhalb der Stadtgrenze. Bevorzugte Stadtteile mit Früh-ÖPNV (z. B. Giesing, Ramersdorf, Neuperlach, Laim, Pasing) in Suchprofil und Mappe, nicht als harte Filterliste im Reel.

## 9. Erfolg

- Pin + Hero-Reel live, Highlight „Wohnung München“ existiert.
- ≥ 10 persönliche Share-Bitten an Menschen in München / mit Vermieter-Kontakt.
- Mappe bereit für erste ernsthafte DM.
- Ab T-8: Rhythmus laut Phase 2, ohne Account-Spam-Flags.

## 10. Ablage

Checklisten: `docs/superpowers/plans/checklists/10`–`16`.  
Implementation-Plan: `docs/superpowers/plans/2026-08-21-wohnung-social-kampagne.md`.
