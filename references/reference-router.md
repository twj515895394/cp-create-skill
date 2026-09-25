# Reference Router

## 1. Purpose

This file controls **which reference files may be loaded for a task**.

The repository is expected to grow. More references must not mean more references are read.

The routing goal is:

> Load the smallest set of references that can materially improve the current task.

This file is a routing layer, not a creative knowledge library.

## 2. Non-negotiable routing rules

### Route first, load second

Step-level reference mentions in `SKILL.md` are candidates, not unconditional reads. Router selection has precedence.

Before opening specialized references:

1. classify the user's task,
2. identify the current workflow stage,
3. identify the relevant content domain only when domain knowledge is actually needed,
4. select the minimum useful references,
5. run Routing QC before expanding the set.

Do not browse references first and decide relevance afterward.

### No recursive browsing

Never recursively read a reference directory merely because one file in that directory is relevant.

Do not use broad repository/reference text search to discover inspiration across the whole library when the task can be routed by type/domain first. Search inside the selected file/domain only when exact retrieval is necessary.

An index may point to a domain file. Loading the index does **not** authorize loading sibling files.

### No "just in case" loading

A reference must have a concrete job in the current response.

Do not load a file because:
- it might contain inspiration,
- it is adjacent to the topic,
- it was useful in a previous task,
- it belongs to the same directory,
- it is listed in SKILL.md.

### Prefer already-known task facts

If the user has already supplied concrete scene, character, runtime, shot, or story information, do not reload references whose only purpose would be to rediscover that information.

### Expand only on evidence

Start narrow. Add another reference only when:
- a required decision remains unsupported,
- the current reference explicitly identifies a dependency needed for the task,
- QC finds a concrete weakness that another reference is designed to repair.

## 3. Reference budget

Reference count is a context discipline, not a hard creative quota.

Typical starting budgets:

| Task shape | Typical specialized references |
|---|---:|
| Small edit / one local question | 1–2 |
| Focused scene / event design | 2–4 |
| Reference deconstruction | 2–4 |
| Complete Vlog design | 4–7 |
| Full AI-video director plan | 5–8 |

`reference-router.md` and `qc-gates.md` are control-layer files and do not count as creative references.

Exceed the typical range only when each additional file has a distinct, necessary role.

## 4. Task classification

Choose the **primary task type** first. Add secondary types only when the user explicitly needs them.

### A. Brief resolution

Use when missing requirements materially affect the result.

Primary reference:
- `brief-confirmation.md`

Do not load it when the current conversation already supplies enough constraints.

### B. Reference deconstruction

Use when the user provides or names a video, script, storyboard, creator example, or generated draft to analyze.

Primary reference:
- `reference-deconstruction.md`

Add only when needed:
- `shot-language.md` for detailed visual grammar,
- `event-engine.md` for event/mechanism comparison,
- `character-behavior-engine.md` for character-specific behavior analysis.

Do not automatically load story structure, output schema, or all scene references.

### C. Character / relationship behavior design

Primary reference:
- `character-behavior-engine.md`

Conditional:
- `interaction-library.md` when relationship expression needs expansion,
- `event-engine.md` when behavior must generate concrete situations.

Do not load shot-language unless the user also asks for directing or shot design.

### D. Scene / activity expansion

Primary references:
- `creative-expansion.md`
- `scene-specificity.md`

Conditional:
- `event-engine.md` when candidate activities must become Scene Events.

When concrete location/activity knowledge is needed, route through `scene-library/index.md` and select exactly one relevant scene domain by default. Never load all domains.

### E. Story / event architecture

Primary:
- `event-engine.md`
- `story-structure.md`

Conditional:
- `character-behavior-engine.md` if character contrast drives events,
- `creative-expansion.md` if the premise still lacks concrete activities.

Do not load shot-language until the story is concrete enough to direct.

### F. Shot / director design

Primary:
- `shot-language.md`
- `performance-writing.md`

Conditional:
- `generation-segments.md` when the result is for AI-video generation,
- `output-schema.md` when a structured director deliverable is required.

Do not load scene-expansion references merely to adjust an already-defined shot.

### G. AI-video production segmentation

Primary:
- `generation-segments.md`

Conditional:
- `shot-language.md` for framing/movement,
- `performance-writing.md` for playable action,
- `ai-video-shot-safety.md` when AI generation reliability or risky shot design is relevant.

Do not load unrelated scene domains.

### H. Output formatting / final production handoff

Primary:
- `output-schema.md`

Conditional:
- references already required by the creative task.

Do not load output-schema merely for ideation or a short answer.

### I. Quality control

Control reference:
- `qc-gates.md`

Final diagnostic reference:
- `quality-checklist.md`

QC must inspect the work already produced. QC is not permission to load broad new creative references.

## 5. Current reference registry

Use this registry as a **routing map**, not a reading list.

| Reference | Load when | Do not load when |
|---|---|---|
| `brief-confirmation.md` | material brief gaps exist | current brief is sufficient |
| `reference-deconstruction.md` | analyzing supplied reference material | creating from scratch with no reference |
| `character-behavior-engine.md` | character traits/contrast must become behavior | characters are irrelevant to the task |
| `event-engine.md` | designing or diagnosing concrete Scene Events | only formatting or local shot wording is requested |
| `creative-expansion.md` | premise/location needs concrete possibilities | scene content is already locked |
| `story-structure.md` | arranging a multi-scene story or runtime | one isolated moment is being edited |
| `scene-specificity.md` | full scene route needs concrete places/actions | only dialogue/shot wording is requested |
| `performance-writing.md` | writing playable Picture & Performance | only high-level concept ideation is requested |
| `generation-segments.md` | AI-video production grouping is relevant | ordinary screenplay/story only |
| `shot-language.md` | framing/camera/blocking/directing is relevant | only story ideation is requested |
| `interaction-library.md` | relationship behavior needs options/variation | task is not relationship-focused |
| `style-modes.md` | selecting/clarifying content mode | mode is already clear and unchanged |
| `output-schema.md` | structured production handoff is required | short conceptual answer |
| `examples.md` | an example is needed to resolve ambiguity | rules are already clear |
| `quality-checklist.md` | final or explicit QC | early ideation before anything exists to inspect |
| `qc-gates.md` | multi-stage task, production plan, or final QC | tiny factual/local edit where a gate adds no value |
| `scene-library/index.md` | scene-domain selection is actually needed | exact scene content is already supplied |
| `motif-library/scene-event-motifs.md` | setting exists but event seeds/variation are weak | event is already concrete |
| `micro-moments/index.md` | lived-in physical texture needs expansion | event layer is still vague |
| `ai-video-shot-safety.md` | AI shot/generation feasibility is relevant | non-AI story-only work |

## 6. Large-library routing contract

Large libraries must remain behind an index/router boundary.

### Scene Library

Active pattern:

`scene-library/index.md` → exactly one relevant domain file by default.

Current domains:
- `scene-library/home-life.md`
- `scene-library/city-daily.md`
- `scene-library/entertainment.md`
- `scene-library/outdoor-leisure.md`
- `scene-library/travel.md`
- `scene-library/shared-tasks.md`
- `scene-library/season-weather.md`
- `scene-library/holidays-special-days.md`

Rules:
- open the index only when scene-domain selection is needed,
- select one domain,
- load a second domain only for a genuinely cross-domain story,
- never enumerate all scene files for inspiration,
- a scene-domain reference does not automatically authorize Micro Moment or Motif loading.

### Mother Motif Library

Active file:

`motif-library/scene-event-motifs.md`

Load when a concrete setting exists but the event engine needs reusable situation seeds such as waiting, choosing, searching, sharing, recovering, failing, or discovering.

Do not load when:
- the event is already concrete,
- the task is only directing/editing,
- a domain-specific scene file already provides enough event affordance.

Select motifs; do not treat the file as a sequence to complete.

### Micro Moments

Active pattern:

`micro-moments/index.md` → one relevant domain file, optionally `universal.md`.

Current domain files:
- `micro-moments/home.md`
- `micro-moments/city.md`
- `micro-moments/entertainment.md`
- `micro-moments/travel.md`
- `micro-moments/outdoor.md`

Rules:
- load Micro Moments only after the underlying Scene Event is concrete,
- use them to add lived-in physical texture, state, habit, object continuity or transition,
- do not use them as a mandatory checklist,
- prefer one domain file; add `universal.md` only when it contributes a distinct need,
- never load all micro-moment domains,
- do not use micro-detail to compensate for a vague event layer.

### AI Video Shot Safety

Active file:

`ai-video-shot-safety.md`

Load when:
- AI-video generation feasibility is in scope,
- shot design must account for identity stability,
- generation segments contain complex motion / multi-person / wide-shot demands,
- QC-2 identifies compound generation risk.

Do not load for ordinary story writing with no AI production requirement.

This file complements `shot-language.md`; it does not replace directing judgment.

## 7. Routing manifest

For substantial tasks, maintain an internal routing manifest before deep work:

- Primary task type
- Current workflow stage
- Required references
- Conditional references actually justified
- Explicitly excluded reference groups
- Scene domain, if any
- AI-production relevance: yes / no

The manifest does not need to be shown to the user unless useful.

If the selected set grows without a new concrete need, reduce it.

## 8. Cross-domain rule

Some stories genuinely cross domains, for example:

home → city → travel.

Do not pre-load all three.

Load a new domain only when the workflow reaches that section or when cross-domain continuity must be designed at the same time.

## 9. Routing QC trigger

Before expanding the reference set, ask:

- What decision will this file help make?
- Is that decision required by the user's request?
- Is the same information already present in the conversation or another loaded reference?
- Is this file the narrowest source for the need?
- Will loading it create pressure to import unrelated sibling material?

If the answer is weak, do not load it.

## 10. Core principle

> More knowledge is not automatically better context.

A strong route is selective, explainable, stage-aware, and reversible.
