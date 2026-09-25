# Reference-to-Knowledge Extraction Pipeline

## 1. Purpose

This file defines how a strong reference video, script, storyboard, creator example or generated sample may contribute **reusable knowledge** to this skill without turning the knowledge base into a copy of individual creators.

Reference analysis and knowledge ingestion are separate operations.

> Analyze broadly enough to understand the mechanism.  
> Ingest narrowly enough to preserve only reusable knowledge.

Ordinary reference analysis does **not** automatically modify or expand the knowledge libraries.

## 2. When to use

Use this pipeline only when one of these is true:

- the user explicitly asks to learn from / absorb / update the skill from reference material,
- the task is maintaining the skill's knowledge base,
- a reference analysis is being intentionally converted into reusable library knowledge.

Do not run this pipeline for:
- a normal one-off reference analysis,
- a one-off script inspired by a reference,
- local shot edits,
- generic ideation with no library-maintenance goal.

## 3. Non-negotiable ingestion rules

### Analysis is not ingestion

A strong observation may remain useful only for the current conversation.

Do not add something to the library merely because it appeared in a good video.

### Abstract before storing

Never store a reference-specific moment first and hope the Agent generalizes it later.

Transform:

Observed moment  
→ underlying function  
→ reusable behavioral/mechanical rule  
→ target library candidate

Example:

Observed:
"After the ride, she fixes her hair while he opens water."

Do not store:
"After roller coaster, girl fixes hair and boy gives water."

Possible abstractions:
- Scene: post-high-energy attraction recovery supports grooming, hydration and slower movement.
- Motif: Recover / Rest.
- Micro Moment: fix motion-messy hair; loosen bottle cap before handoff.
- AI Safety: face-clear recovery can follow a motion-heavy segment.

### Strip creator identity

Do not store:
- creator names,
- character names when not needed for the reusable rule,
- unique catchphrases,
- signature gags,
- distinctive dialogue,
- exact shot sequences,
- exact timing patterns strongly tied to one creator,
- branded/IP-specific behavior unless the library entry is explicitly about a real venue/product and factual specificity is required.

### Prefer mechanisms over signatures

A candidate should explain:
- what people realistically do,
- what state changes,
- why an interaction works,
- what event family is reusable,
- what production constraint is reusable.

It should not preserve the recognizable creative fingerprint of one source.

## 4. Extraction layers

Extract candidates into only the layers that are materially supported.

### A. Scene Library candidate

Candidate belongs here when the reference reveals reusable knowledge about:

- a concrete subspace,
- realistic activity stages,
- venue fingerprint,
- visual anchors,
- physical constraints,
- state-in/state-out possibilities,
- relationship affordances,
- AI-friendly framing specific to that environment.

Test:
> Would this still be useful if the original characters, creator and exact story disappeared?

If yes, it may be Scene knowledge.

### B. Mother Motif candidate

Candidate belongs here when the useful idea survives location changes.

Examples:
- wait,
- choose,
- search,
- recover,
- fail/retry,
- synchronized attention,
- conceal/reveal,
- role division.

Test:
> Can this mechanism generate different concrete events in several settings?

If yes, it may be a Mother Motif.

### C. Micro Moment candidate

Candidate belongs here when it is a small physical behavior that reveals:

- state,
- habit,
- object continuity,
- physical consequence,
- transition,
- practical relationship behavior.

Test:
> Is this useful as a tiny lived-in action without carrying the original plot?

If yes, it may be a Micro Moment.

### D. AI Shot Safety candidate

Candidate belongs here when it teaches a reusable production principle about:

- face-distance reliability,
- character count,
- body-motion complexity,
- camera-motion complexity,
- environment/effects complexity,
- occlusion,
- prop/hand complexity,
- identity/environment separation,
- generation-segment design,
- continuity repair.

Test:
> Is this a general generation strategy rather than a stylistic preference of one video?

If yes, it may be AI Shot Safety knowledge.

## 5. Candidate record

Before ingestion, represent each candidate internally as:

- Candidate type: Scene / Motif / Micro / AI Safety
- Observed evidence: short factual description of what happened
- Abstracted rule: creator-independent reusable form
- Intended target file: exact registered path
- Primary Domain if applicable
- Reuse scope: narrow-domain / cross-domain / production-wide
- Confidence: high / medium / low
- Novelty status: Add / Merge / Existing / Reject / Hold
- Risk notes: signature / over-specific / unverified / duplicate / physically questionable

This record is an internal maintenance artifact. It does not need to appear in normal user output.

## 6. Generalization test

A candidate should normally pass these tests before ingestion.

### Character substitution

Replace the original characters with different people.

Does the behavior/mechanism still make sense?

### Setting substitution

For Motifs and generic Micro Moments, change the setting.

Does the abstraction remain useful?

Scene-domain knowledge is allowed to remain domain-specific.

### Story substitution

Change the surrounding plot.

Does the candidate still provide value?

### Signature removal

Remove:
- exact dialogue,
- exact gag,
- exact shot order,
- creator-specific styling.

Is there still meaningful knowledge left?

### Physical plausibility

Would a real person plausibly do this in the stated environment/activity?

### Production usefulness

Does the candidate help:
- choose an event,
- make behavior more lived-in,
- preserve state,
- improve AI reliability,
- avoid a known failure?

If not, it may be trivia rather than library knowledge.

## 7. Promotion statuses

Every candidate receives one status.

### ADD

Use only when:
- target file is known,
- the knowledge is materially new,
- it passes generalization and QC,
- it fits an existing section or justifies a new reusable section.

### MERGE

Preferred when:
- the idea overlaps an existing entry,
- the new reference adds one useful nuance,
- existing wording can be strengthened instead of duplicated.

Merge into the existing concept rather than appending another near-duplicate bullet.

### EXISTING

Use when the target file already expresses the same knowledge adequately.

Do nothing.

Do not rewrite merely to record that another reference confirmed it.

### HOLD

Use when:
- the idea seems promising but is supported only weakly,
- physical reality is uncertain,
- AI reliability claim is based on one ambiguous example,
- the correct abstraction is not yet clear.

Hold in the current analysis; do not create a runtime-library entry.

### REJECT

Use when the candidate is:
- a creator signature,
- an exact gag,
- surface styling,
- pure decoration,
- redundant noise,
- physically implausible,
- too specific to one copyrighted sequence,
- not useful outside the source.

## 8. No-scan deduplication

Deduplication must preserve the zero-scan routing policy.

### Allowed

1. Determine candidate type.
2. Determine Primary Domain when needed.
3. Resolve the exact target file from `reference-router.md`.
4. Open **only that target file**.
5. Compare against the most relevant existing section.
6. Decide Add / Merge / Existing / Reject / Hold.

### Not allowed

- search the whole repository for similar wording,
- list all Scene/Micro files,
- open sibling domains "to see whether it fits better",
- load multiple domains for dedupe,
- broad-search references for synonyms.

### If duplicate location is uncertain

If the target file is correctly routed but the exact section is uncertain:
- inspect headings/nearby content inside that target file,
- merge at the nearest correct abstraction level,
- or Hold.

Do not expand the search radius.

## 9. Canonicalization rule

Prefer canonical concepts over source wording.

Examples:

Source wording:
- "下过山车后头发乱了"
- "冲浪结束后拨头发"
- "骑车摘头盔后整理头发"

Possible canonical Micro Moment:
- "fix motion- or wind-messy hair after activity"

Source wording:
- "看烟花背影"
- "看大型灯光秀背影"
- "在观景台背影"

Possible canonical AI principle:
- "use environment-critical wide/back views after face identity has been established closer"

Canonicalization reduces library growth and improves retrieval precision.

## 10. Evidence strength

Do not confuse frequency with truth.

### One reference can support

- obvious physical behavior,
- clear Scene affordance,
- a plausible Micro Moment,
- an already-known production principle.

### Prefer multiple references or stronger evidence for

- claims about AI model reliability,
- claims that a behavior is broadly typical,
- new cross-domain Motifs,
- strong production rules,
- claims about a real-world venue/process that may vary.

If evidence is weak, Hold rather than overgeneralize.

## 11. Destination rules

### Scene Library

Write only to the exact Primary Domain file.

Do not duplicate the same scene knowledge into Secondary Context domains.

### Motif Library

Write only when the abstraction genuinely survives setting changes.

If it still depends heavily on one venue, keep it in the Scene Library.

### Micro Moments

Write to:
- exact domain file when the behavior is domain-caused,
- `universal.md` only when the behavior is genuinely cross-domain.

Do not copy the same Micro Moment into universal + multiple domains.

### AI Shot Safety

Write only when the lesson is about generation feasibility/reliability.

Do not store ordinary cinematography preference here.

## 12. Ingestion order

For a batch of candidates from one reference:

1. discard Reject candidates,
2. defer Hold candidates,
3. dedupe/Merge existing candidates,
4. add only genuinely new knowledge,
5. run QC-K Knowledge Ingestion,
6. verify Router registration only if a **new file/domain** was created.

Most references should produce **few or zero new entries** once the library matures.

That is healthy.

## 13. Reference-specific anti-overfitting rules

Do not let one creator reshape the whole library.

A single source should not:
- redefine the default story structure,
- redefine shot distribution,
- create a new domain unless the domain is genuinely reusable,
- create many near-identical Micro Moments,
- turn one creator's pacing into a universal timing rule,
- promote a stylistic habit into AI Safety without production evidence.

Prefer:
> "This source confirms or extends an existing mechanism."

over:
> "This source becomes the new template."

## 14. Raw analysis versus runtime knowledge

Raw reference observations are high-detail and source-specific.

Runtime knowledge should be:
- compact,
- canonical,
- reusable,
- source-independent,
- routed.

Do not store full source deconstructions inside Scene/Motif/Micro/Safety libraries.

If long-form source notes must be preserved for project research, keep them outside the runtime `references/` knowledge path so ordinary Agent routing cannot load them accidentally.

## 15. Batch extraction limit

Do not maximize the number of extracted items.

For one reference, prefer:
- a few strong reusable candidates,
- merged improvements to existing entries,
- explicit "Existing" decisions.

If dozens of items appear novel, re-check abstraction level and duplication before ingesting.

## 16. QC handoff

After candidate decisions, run QC-K from `qc-gates.md`.

The ingestion is not complete until:
- target paths are exact,
- no broad scan occurred,
- duplicates were merged,
- creator signatures were stripped,
- Secondary Context was not duplicated,
- new rules are proportionate to evidence,
- runtime files remain compact enough to route efficiently.

## 17. Core principle

> References teach mechanisms; libraries store abstractions.

A mature knowledge base should become more precise as it grows, not merely larger.
