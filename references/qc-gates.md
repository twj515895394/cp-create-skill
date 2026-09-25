# QC Gates

## 1. Purpose

Quality control is not a single checklist at the end.

Use staged gates so routing errors, story errors, and AI-production errors are caught **before they contaminate later work**.

The four gates are:

1. QC-0 — Routing Integrity
2. QC-1 — Story & Scene Integrity
3. QC-2 — Production & AI Feasibility
4. QC-3 — Final Delivery Integrity

Not every tiny task needs every gate. Complete scripts, reference-based redesigns, and AI-video production plans normally do.

## 2. QC-0 — Routing Integrity

Run after task classification and before broad reference loading.

### Pass conditions

- The primary task type is clear.
- Each selected reference has a specific role.
- Unrelated reference groups are explicitly excluded.
- No directory is being recursively browsed.
- The reference set is within a reasonable budget for the task.
- Existing user-provided facts are being reused instead of rediscovered.
- Scene-domain references are narrow and domain-specific.
- AI-production references are loaded only when AI production is relevant.
- Exact registered path resolution is used before any index, directory listing, or broad search.

### Failure patterns

- "Read everything because the task is complex."
- Loading all scene domains for inspiration.
- Loading story structure to answer one shot-level edit.
- Loading shot-language during pure premise ideation without a directing request.
- Loading AI production guidance for a non-AI screenplay.
- Loading examples because the rules already loaded feel abstract.
- Adding references without being able to name the decision they support.
- Loading Scene + Motif + Micro Moment libraries by default simply because the task is a complete Vlog.
- Loading Micro Moments before the underlying Scene Event is concrete.
- Opening a second scene domain because it might provide extra inspiration rather than because the story actually enters that domain.
- Listing a reference directory to discover files when a direct route is registered.
- Broad-searching the repository/references for "possibly relevant" knowledge instead of resolving the path by task/domain.
- Opening `scene-library/index.md` or `micro-moments/index.md` despite an obvious direct domain match.
- Reading sibling library files to compare options before any concrete ambiguity exists.

### Repair

Remove unnecessary references first.

Only then add a missing reference if a concrete unresolved decision remains.

## 3. QC-1 — Story & Scene Integrity

Run after the Content Map / Scene Route or equivalent story-event layer exists and before detailed directing.

### Pass conditions

#### Concrete events
- Major scenes contain observable situations.
- Scene descriptions are more specific than emotional labels.
- Important activities respect basic physical reality.

#### Event variety
- Consecutive scenes are not merely the same behavior in different backgrounds.
- Strong repetition is intentional: motif, escalation, callback, routine, or contrast.

#### Character behavior
- Character identity appears through behavior or reaction when relevant.
- The two people are not mechanically symmetrical unless that is intentional.
- Relationship expression fits the current situation instead of filling a romance quota.

#### Continuity
- Useful state can carry forward: props, fatigue, clothing, information, jokes, time of day, who leads.
- Scene progression feels like time passing rather than isolated clips.

#### Lived-in texture
- High-value scenes are not made only of headline events.
- Ordinary actions may appear between major beats when they strengthen realism.
- Small details support the scene rather than becoming decorative clutter.
- Micro-detail density remains subordinate to the main Scene Event.

#### Micro-detail density
- A scene does not accumulate many unrelated fidgets just to look realistic.
- Micro Moments reveal state, habit, object continuity, transition, or relationship behavior.
- If removing a micro action changes nothing and the shot is already busy, remove it.
- For AI video, micro actions do not overload the complexity budget.

#### Rhythm
- The piece has appropriate variation in density, energy, and breathing room.
- The ending has enough space to land.

### Failure patterns

- Pose catalog.
- Scenic tourism reel.
- Generic "甜蜜互动".
- Every scene ends in the same hug/look/smile.
- High event count but no consequences or reactions.
- No ordinary life texture between major attractions.
- Scene route could be reordered freely with no loss of meaning.

### Repair order

1. Fix vague or duplicated Scene Events.
2. Fix character/action asymmetry.
3. Add or remove state carryover.
4. Adjust rhythm.
5. Add micro-detail only where it improves believability.

Do not use more camera technique to hide a weak event layer.

## 4. QC-2 — Production & AI Feasibility

Run after generation segments and/or shot design, before final production handoff.

This gate applies strongly to AI-video work and lightly to ordinary directing work.

### A. Shot / generation-segment separation

Pass when:
- a shot is treated as an editorial/directing unit,
- a generation segment is treated as a production unit,
- multiple shots are grouped only when one coherent generation setup can realistically support them,
- unrelated locations/actions are not bundled together.

### B. Playability

For important shots:
- the first-frame state is understandable,
- the action progression is performable,
- the reaction/ending state is usable,
- Picture & Performance is not merely a mood adjective.

### C. Complexity budget

For AI video, inspect the combined load from:
- number of characters,
- facial-identity demand,
- body/action complexity,
- camera movement,
- environmental complexity,
- duration/continuity demand.

Do not maximize all of them in one shot without a strong reason.

### D. Identity-versus-environment separation

When AI generation is involved, check:

- Is a wide/long shot unnecessarily responsible for recognizable facial identity?
- Can identity expression be handled in a closer adjacent shot?
- Can environmental scale be shown with back, side-back, silhouette, partial figure, or non-face-dominant composition?
- Is a risky multi-person wide frontal shot being used only because traditional cinematography would allow it?

The principle is:

> The shot that proves who the characters are does not have to be the same shot that proves where they are.

### E. Motion feasibility

Check:
- complex interaction + complex camera movement + face lock,
- fast turns or occlusion,
- multiple hands/objects crossing,
- simultaneous multi-character actions,
- unnecessary orbit/crane-style movement.

Split or simplify when the combined demand is likely to destabilize generation.

### F. Continuity

Check:
- relative positions,
- props,
- hand/object ownership,
- wardrobe state,
- direction of travel,
- time-of-day logic,
- start/end states between adjacent generated clips.

## 5. QC-3 — Final Delivery Integrity

Run immediately before delivering a complete result.

### User-intent check
- Does the result answer the actual requested depth and format?
- Were explicit constraints preserved?
- Were prohibited elements avoided?
- Was unnecessary scope added?

### Routing check
- Did the final work depend on unrelated references?
- Did broad context dilute a more specific rule?
- Were large-library materials loaded only when triggered and directly routed when possible?

### Story/directing check
- Can the content be understood before reading technical shot details?
- Are important actions concrete and playable?
- Does directing support the story instead of replacing it?

### AI-production check
When relevant:
- Are risky shots called out, split, or redesigned?
- Are wide shots justified?
- Are face-critical moments framed at a suitable scale?
- Are generation segments coherent?

### Output check
- Is the structure usable downstream?
- Are there accidental contradictions across sections?
- Are examples clearly examples rather than hidden requirements?
- Are QC notes concise and actionable?

## 6. Gate severity

Use three severities:

### BLOCK
A hard failure that should be repaired before proceeding.

Examples:
- vague major scene,
- impossible activity,
- recursive library loading,
- unrelated references dominating context,
- generation segment that mixes incompatible scenes.

### REVISE
The work is usable but materially weaker.

Examples:
- repeated behavior,
- weak state continuity,
- overloaded AI shot,
- unnecessary wide frontal identity shot,
- flat rhythm.

### OPTIONAL
A possible enrichment, not a defect.

Examples:
- callback,
- recurring joke,
- extra micro-moment,
- role reversal,
- more atmospheric transition.

Do not turn OPTIONAL items into quotas.

## 7. Minimal gate usage by task

| Task | Gates |
|---|---|
| Tiny local edit | QC-3 only, lightweight |
| Reference analysis | QC-0 + QC-3 |
| Scene/event ideation | QC-0 + QC-1 + QC-3 |
| Complete Vlog | QC-0 + QC-1 + QC-3 |
| AI-video director plan | QC-0 + QC-1 + QC-2 + QC-3 |
| Existing draft diagnosis | Run the gate corresponding to the diagnosed layer, then QC-3 |

## 8. Relationship to quality-checklist.md

`qc-gates.md` decides **when** and **at which layer** to inspect.

`quality-checklist.md` provides broader final diagnostics and anti-patterns.

Do not treat them as duplicates.

## 9. Core principle

> Catch the cheapest error at the earliest layer where it can be diagnosed.

A routing problem should not survive until final writing.
A story problem should not be "fixed" with camera movement.
An AI-feasibility problem should not be discovered only after prompt generation.
