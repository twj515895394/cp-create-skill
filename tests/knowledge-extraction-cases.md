# Knowledge Extraction Regression Cases

These tests validate reference-to-library ingestion.

Do **not** load this file during normal creative execution.

## Pass invariants

Every ingestion case should satisfy:

- reference analysis does not automatically imply library mutation,
- target path is resolved before dedupe,
- dedupe opens only the target runtime file,
- no repository-wide/reference-wide search is used for similarity checking,
- creator signatures and exact sequences are not stored,
- Secondary Context is not duplicated into another domain,
- Merge is preferred over near-duplicate Add,
- weak claims become Hold rather than universal rules.

---

## Case K1 — Theme-park recovery detail already exists

Observed:
"After a fast ride, one character fixes messy hair and walks more slowly."

Expected:
- Candidate types: Scene/Micro
- Scene target: `scene-library/entertainment.md`
- Micro target: `micro-moments/entertainment.md`
- Open only the relevant target when deciding each candidate
- Likely status: Existing or Merge
- Must not add a creator-specific "roller coaster girl fixes hair" entry
- Must not scan other Micro domains

## Case K2 — Exact creator gag

Observed:
"One character wears a very distinctive branded novelty hat and repeats a unique joke from the creator."

Expected:
- Status: Reject
- Reason: signature gag / branded surface behavior
- No library files need to be opened if rejection is obvious from abstraction stage

## Case K3 — New hotel lived-in detail

Observed:
"On entering the hotel, one person immediately locates bedside outlets while the other opens the curtains."

Expected:
- Primary Domain: Travel
- Candidate: hotel room arrival affordance / Micro Moment
- Target only: `scene-library/travel.md` and/or `micro-moments/travel.md` depending on abstraction
- Do not load Home Life
- Status: Merge if outlet/window behavior already exists; Add only if materially new

## Case K4 — Cross-domain Mother Motif

Observed across several unrelated references:
"One person confidently leads, realizes they are wrong, then quietly follows the other."

Expected:
- Candidate: role reversal / failed confidence mechanism
- Consider `motif-library/scene-event-motifs.md` only after confirming the abstraction survives setting changes
- Do not duplicate into every Scene Domain
- Status: Merge/Add depending on existing motif coverage

## Case K5 — Single ambiguous AI failure

Observed:
"One wide AI shot had a distorted face."

Expected:
- AI Safety claim: "all wide shots fail" is unsupported
- Status: Hold or Reject for that broad rule
- Existing principle about wide face-critical risk may be Existing
- Do not add a universal prohibition from one failure

## Case K6 — Reusable identity/environment split

Observed:
"Close face reaction is followed by back-view environmental spectacle; both clips are stable."

Expected:
- Candidate type: AI Safety
- Target: `ai-video-shot-safety.md`
- If Identity/Environment Separation already exists: Existing or Merge
- Do not store the exact spectacle or creator shot order

## Case K7 — Rain in the background only

Observed:
"Characters shop inside a mall while rain is visible outside; behavior is ordinary shopping."

Expected:
- Primary Domain: City Daily
- Rain is Secondary Context
- Do not ingest into Season/Weather
- A rain-specific candidate is Reject/Existing unless rain causes behavior

## Case K8 — Rain causes adaptation

Observed:
"Unexpected rain forces route change, shared shelter, wet-clothing recovery."

Expected:
- Primary Domain: Season/Weather
- Scene candidate target: `scene-library/season-weather.md`
- Micro candidate target: `micro-moments/season-weather.md`
- City context does not authorize City ingestion

## Case K9 — Universal versus domain Micro Moment

Observed:
"After a long activity, a bag switches from one hand to the other."

Expected:
- If the behavior is not caused by venue-specific mechanics: consider `micro-moments/universal.md`
- If universal file already contains equivalent handling: Existing
- Do not copy it into Entertainment, Travel and City simultaneously

## Case K10 — Venue-specific physical constraint

Observed:
"Once a ride restraint closes, characters cannot freely turn or stand."

Expected:
- Candidate type: Scene physical constraint
- Target: `scene-library/entertainment.md`
- Not a Mother Motif
- Not Universal Micro
- Status: Existing/Merge if already covered

## Case K11 — Copyrighted dialogue

Observed:
A memorable multi-line exchange is central to the reference.

Expected:
- Do not store dialogue
- Extract only reusable function if present: teasing, delayed reaction, misunderstanding, etc.
- Exact wording: Reject

## Case K12 — Shot distribution from one creator

Observed:
"Creator uses 70% close shots in three videos."

Expected:
- Do not replace global shot-language percentages from one creator
- Candidate may support a qualitative observation for the current analysis
- Library status: Hold/Existing unless broader production evidence justifies change

## Case K13 — New scene subspace without new domain

Observed:
A repeatable "hotel laundry room" sequence appears useful.

Expected:
- Primary Domain: Travel
- Add/Merge a hotel-laundry subspace inside `scene-library/travel.md` if reusable
- Do not create a new top-level "Laundry Travel" domain/file

## Case K14 — Many near-identical details from one video

Observed:
Ten separate hand/object gestures all express the same idea: managing bags while tired.

Expected:
- Canonicalize to one or a few reusable entries
- Do not add ten bullets
- Prefer Merge into carrying/fatigue behavior
- Batch extraction count is not a quality score

## Case K15 — Reference analysis only

User asks:
"分析这个视频为什么自然，不要改 Skill。"

Expected:
- Run reference deconstruction
- Do not run ingestion writes
- May identify candidate knowledge conceptually if useful, but no persistent library mutation
- QC-K not required unless candidate promotion is requested

## Case K16 — Explicit skill learning request

User asks:
"把这个参考视频里值得复用的东西沉淀到 Skill。"

Expected:
- Run deconstruction
- Run extraction pipeline
- Produce candidate decisions
- Resolve exact target paths
- Dedupe target-only
- Run QC-K
- Mutate only approved target files
- Update Router only if a genuinely new file/domain was created

## Core rule under test

> Learn from the reference without making the library look like the reference.
