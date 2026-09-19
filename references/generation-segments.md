# Generation Segments and Shot Grouping

## 1. Core distinction

A **shot** is a directing/editing unit.

A **generation segment** is a downstream AI-video production unit.

A **mini-story / scene arc** is a narrative unit and may be larger than either one.

These layers are not the same thing.

A director plan may contain 1–3 second shots, but downstream generation should normally avoid creating every tiny shot as a separate clip.

## 2. Default generation-segment duration

For AI-video-oriented workflows:

- preferred segment target: **5–10 seconds**,
- default sweet spot: **6–8 seconds**,
- normally avoid segments longer than **10 seconds**,
- shorter segments are allowed only when the content genuinely cannot be grouped without damaging continuity or when the downstream tool has a specific reason.

This is a production guideline, not a mathematical rule.

## 3. Mini-story versus generation segments

Do not force one mini-story into one generated clip.

A strong scene may naturally need multiple production segments.

Example — roller coaster mini-story:
- Segment A: queue / seat / restraint / anticipation,
- Segment B: ride movement / involuntary reactions,
- Segment C: exit / recovery / teasing or care.

Depending on the generator, the same narrative material might instead use two segments or more. Choose segmentation for production reliability, not to satisfy a fixed count.

Likewise, several tiny editorial shots may come from a single generated segment.

The hierarchy is flexible:

Story → Sequence / Mini-story → Scene Event → Generation Segment(s) → Shot / Micro-shot

Not every story needs every layer explicitly.

## 4. When shots should be grouped

Group adjacent shots into one segment when they share most of these:

- same location,
- same time of day,
- same wardrobe and props,
- continuous action,
- same emotional beat,
- consistent screen direction,
- compatible camera language,
- no hard story reset.

Example:

Segment 04 — café table, 8 seconds
- Shot 04A: close-up of her tasting dessert,
- Shot 04B: close reaction from him,
- Shot 04C: detail of her pushing the spoon toward him.

The segment is generated/managed as one production unit even though the director script still preserves three shot intentions.

## 5. When to split segments

Create a new segment when there is:

- location change,
- meaningful time jump,
- major wardrobe/prop change,
- emotional chapter change,
- incompatible camera setup,
- action discontinuity,
- new story objective,
- generation complexity that becomes unreliable when combined.

Do not merge unrelated shots merely to reach 5 seconds.

## 6. Two segment modes

### A. Multi-shot segment
Use when the downstream video workflow supports:
- storyboard input,
- internal cuts,
- multi-shot prompting,
- shot-conditioned generation.

A 5–10 second segment may contain multiple editorial shots.

### B. Continuous-take segment
Use when the downstream generator is better at one coherent camera setup.

Convert several micro-actions into:
- one continuous camera move,
- one stable setup with multiple action beats,
- or one close observational take.

This preserves story intent without asking the model to perform unreliable hard cuts.

## 7. Director-script hierarchy

A useful hierarchy is:

Story
→ Sequence / Mini-story / Scene
→ Scene Event
→ Generation Segment(s)
→ Shot / Micro-shot
→ Action / Reaction beat

Use only the layers the project actually needs.

## 8. Segment design fields

Each generation segment should include:

- Segment ID,
- duration target,
- location / time,
- segment objective,
- included Shot IDs,
- segment mode: multi-shot or continuous-take,
- continuity anchor,
- character state at start,
- character state at end,
- key action progression,
- camera logic,
- sound continuity,
- transition in,
- transition out,
- downstream generation note.

## 9. Editing implication

The generated clip does not have to be used in full.

A 6–8 second generated segment may yield:
- a 2-second close reaction,
- a 2.5-second interaction,
- a 1-second detail insert,

which are then selected and edited into the final piece.

The director script therefore optimizes for both:
- final edit rhythm,
- practical source-footage generation.

## 10. Quality rule

A good segment should feel like:
“one coherent moment with internal progression.”

A bad segment feels like:
“several unrelated shots forced together to save generation calls.”
