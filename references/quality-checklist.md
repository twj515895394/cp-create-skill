# Quality Checklist

Run this before finalizing a complete couple script/director plan.

This checklist has three strengths:

- **Hard failure** — usually fix before delivery.
- **Strong signal** — investigate; rewrite only if it genuinely weakens the piece.
- **Optional enrichment** — useful creative opportunities, never quotas.

## Hard failures

These are the small set of issues that normally require correction.

### 0. Reference routing contamination

The task context was polluted before creation because:
- references were loaded without a concrete job,
- a whole directory/domain family was browsed for inspiration,
- unrelated story / shot / AI-production references were mixed into a local task,
- user-provided facts were ignored and rediscovered through references.

Repair routing first. Do not attempt to solve context pollution by adding more references.

### 1. Vague major scenes
Major sections say only:
- 游玩项目,
- 两人互动,
- 开心地走,
- 吃东西,
- 看风景,
- 氛围甜蜜,

without making the physical event understandable.

### 2. Empty Picture & Performance
Important shots contain only mood labels such as:
- “女生开心地看他”
- “两人自然互动”
- “男生宠溺一笑”

with no playable behavior.

### 3. Physically implausible activity
The planned action ignores basic constraints of the real activity or location.

### 4. Incomprehensible scene route
For a complete Vlog, the viewer/producer cannot tell what the video actually contains before reading individual shots.

### 5. Shot / generation-segment confusion
Tiny edit shots are automatically treated as separate generation clips, or unrelated scenes are bundled into one production unit.

## Strong signals to investigate

These do not automatically fail the script. Use judgment.

### Story and event design

- Could most scenes be moved to a generic mall/park without meaningful changes?
- Are several consecutive scenes secretly the same core behavior with different backgrounds?
- Does each major scene create a different type of action, reaction, rhythm, information, state or visual value?
- Are character traits expressed through behavior rather than only labels?
- Does at least part of the story feel caused by what happens rather than by abstract “关系升温” planning?
- Is there any high-value activity that might become richer if allowed to develop into a fuller mini-story?
- Conversely, is any scene being over-expanded just because a mini-story structure is available?
- If a scene naturally has setup, experience, reaction and aftermath, would giving those beats more room improve the piece?
- Does an action sometimes produce a reaction or consequence instead of ending immediately?
- Does the piece have enough ordinary life texture to make stronger moments believable?

### State and continuity

- Do useful props, fatigue, clothing state, information, jokes or time-of-day changes carry forward when appropriate?
- Does the piece feel like time is passing rather than a stack of isolated images?
- Could a later moment pay off something established earlier?

State continuity is an enhancer, not a requirement in every scene.

### Character and relationship

- Do the two people have distinguishable behavior?
- Is there asymmetry: one initiates, one reacts, one notices late, one handles practical details?
- Are eye contact, physical affection, teasing, practical care or other relationship tools being chosen because they fit the scene rather than because a template expects or avoids them?
- Does the current behavior pattern feel natural rather than mechanically repeated?
- Is there an opportunity for either character to reveal another side **if the situation supports it**?
- Does the relationship change in behavior when the story calls for change, rather than because progression is treated as mandatory?

### Knowledge-ingestion integrity

When the task explicitly updates the Skill from references:

- Was the reference first analyzed without mutating libraries?
- Were candidates abstracted away from creator identity, exact dialogue, unique gags and shot-for-shot order?
- Was each candidate routed to one exact target file?
- Was duplicate checking restricted to that target file?
- Were Existing/Merge/Hold/Reject used instead of treating every observation as Add?
- Were Secondary Context and sibling domains left untouched?
- Were broad AI-production claims held back unless evidence supports them?
- Did the ingestion keep runtime files canonical and compact?

Run QC-K from `qc-gates.md`.

### AI-video production feasibility

When AI video is part of the workflow:

- Is any shot carrying too many simultaneous demands: multiple characters, face identity, complex action, complex camera movement and complex environment?
- Is a wide / long shot unnecessarily responsible for recognizable faces?
- Can identity and environmental scale be separated into adjacent shots?
- Would back / side-back / silhouette / partial-body composition reduce risk without losing the shot's function?
- Are generation segments coherent production moments rather than arbitrary groups of edit shots?
- Are first-frame, action progression and end-state clear enough for downstream generation?
- Are continuity-critical props, positions and travel directions preserved across generated clips?

Treat these as feasibility diagnostics, not a ban on ambitious shots.

### Rhythm

- Is every moment equally sweet, equally energetic or equally slow?
- Are there useful changes between high-, medium- and low-density scenes?
- Does the ending have enough room to land?
- Is repetition intentional as a motif/callback, or accidental?

### Venue / theme

- Does the destination/theme produce specific behavior?
- For a real venue, are scene names and processes believable?
- Is the plan overly attraction-heavy?
- Conversely, is the venue only a decorative background?

## Optional enrichment opportunities

Use only when they genuinely strengthen the idea:

- concept hook,
- character-world mismatch,
- recurring joke,
- object callback,
- role reversal,
- mini-conflict,
- surprise,
- failed attempt,
- competition,
- delayed reaction,
- environment-created inconvenience,
- change in who leads,
- quiet shared attention,
- payoff that transforms an earlier moment,
- sound bridge,
- visual motif,
- controlled repetition.

Do not add these simply to “score higher.”

## Picture & Performance check

For an important shot, ask:

> If the camera/sound columns disappeared, could I still understand what happens from the first frame to the cut?

If not, add the missing behavior.

For a tiny insert, transition, atmosphere hold or deliberately static shot, concise writing is acceptable.

## Generation segment check

When AI-video production is relevant:

- Does each segment represent one coherent moment?
- Are its start/end states usable?
- Are internal actions compatible with one generation setup?
- If several editorial shots are grouped, can the downstream workflow realistically produce them?
- If not, convert to a continuous-take design or split the segment.

Typical duration ranges are guidance, not a target to satisfy mechanically.

## Anti-pattern library

Watch for:

1. **Unmotivated repetition** — any behavior or relationship device repeats so mechanically that the content stops developing; repeated romance gestures are fine when context gives them meaning.
2. **Pose catalog** — characters stop living so each shot can display a pose.
3. **Scenic tourism reel** — place dominates while the relationship has little behavior.
4. **Camera-movement decoration** — every shot pushes/orbits/cranes without reason.
5. **Emotional flatline** — no meaningful rhythm change.
6. **Random montage** — clips can be reordered with almost no loss of meaning.
7. **Dialogue-template mismatch** — dialogue is being added, reduced or stylized because of a generic formula rather than the user's brief or the piece's own creative logic. Minimal dialogue, dense dialogue, voiceover and silence can all be valid.
8. **Generic beauty close-ups** — attractive faces but no behavior.
9. **Abrupt ending** — footage stops rather than resolves.
10. **Checklist storytelling** — “共同体验 / 玩闹 / 照顾 / 升温 / 浪漫结尾” appears as the story itself.
11. **Venue label only** — changing the location name would leave the plan mostly intact.
12. **Attraction obsession** — specificity is mistaken for constant rides/projects.
13. **No breathing room** — every second tries to be an event.
14. **Event without consequence** — actions occur but produce no reaction when a reaction would matter.
15. **Semantic repetition** — many shots, few distinct things actually happen.
16. **Character adjective trap** — “稳重/活泼/温柔” never becomes behavior.
17. **Reference surface copying** — only framing, costumes, sweetness or location is copied while the reference's story mechanism is missed.
18. **Micro-detail stuffing** — many small gestures are added without revealing state, habit, continuity or relationship, making the scene busier rather than more lived-in.
19. **Library stack reflex** — Scene, Motif, Micro Moment and AI Safety references are loaded together by default instead of being triggered by the task/stage.
20. **Reference-ingestion bleed** — a one-off analysis silently mutates persistent knowledge even though the user did not ask the Skill to learn/update.
21. **Source overfitting** — one creator's exact gag, timing, shot order or stylistic habit is promoted into general runtime knowledge.
22. **Duplicate accretion** — near-identical knowledge is appended because another reference confirms it instead of marking Existing or merging into one canonical entry.
23. **Cross-domain duplication** — the same abstraction is copied into Primary and Secondary Context domains rather than stored once at the correct level.
24. **Evidence inflation** — one ambiguous AI outcome or one reference is promoted into a broad production rule beyond what the evidence supports.

## Final acceptance test

A strong result should usually make the viewer feel:

> “I watched these two specific people actually experience something together.”

not merely:

> “I watched a collection of romantic images.”

And the production plan should feel:

> detailed enough to direct, flexible enough to create, and practical enough for downstream AI-video generation.


## QC gate integration

Use this checklist together with `qc-gates.md`:

- QC-0 catches reference-routing and context-hygiene failures before creative work expands.
- QC-1 catches scene/event/continuity/rhythm failures before detailed directing.
- QC-2 catches shot, generation-segment and AI-feasibility failures before production handoff.
- QC-3 performs final user-intent and output-integrity review.

A later gate should not compensate for a failure that belongs to an earlier layer.
