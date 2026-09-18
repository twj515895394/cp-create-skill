# Output Schema

## 1. Creative overview

Include:
- title / working concept,
- one-sentence premise,
- relationship dynamic,
- tone,
- visual feeling,
- emotional destination.

## 2. Runtime strategy

Include:
- total runtime,
- pace type,
- estimated shot-count range,
- estimated generation-segment count when AI-video handoff is relevant,
- why the ranges fit,
- where the piece accelerates,
- where it slows,
- expected climax / payoff.

Do not lock an exact shot count until the story structure is designed.

## 3. Story script layer

Use a simple sequence structure.

Recommended fields:
- sequence / beat,
- location and time,
- what happens,
- relationship meaning,
- emotional state,
- optional dialogue / voiceover,
- transition to next beat.

This layer should be readable even without camera terminology.

## 4. Generation segment layer

Use this layer when the work will feed an AI-video pipeline.

A generation segment is not the same as a shot. It is a practical production unit that may contain several compatible shots or action beats.

Default target:
- 5–10 seconds,
- usually 6–8 seconds,
- normally avoid more than 10 seconds.

Recommended fields:

| Field | Meaning |
|---|---|
| Segment ID | Production unit identifier |
| Duration target | Intended generated clip length |
| Location/time | Shared scene context |
| Segment objective | Why this segment exists |
| Included Shot IDs | Director shots grouped inside |
| Segment mode | Multi-shot or continuous-take |
| Start state | Character/action state at entry |
| Action progression | Internal beat sequence |
| End state | State that hands off to next segment |
| Camera logic | Coherent visual approach |
| Continuity anchor | Prop, position, direction, wardrobe, light |
| Sound continuity | Dialogue/ambience/music bridge |
| Transition in/out | Relationship to adjacent segments |
| Generation note | Downstream practical constraint |

A segment should feel like one coherent moment, not unrelated shots bundled for convenience.

## 5. Director shooting script layer

Recommended per-shot fields:

| Field | Meaning |
|---|---|
| Shot ID | Sequential identifier |
| Segment ID | Parent generation segment when applicable |
| Duration | Expected screen time in final edit |
| Story module | Functional role |
| Narrative purpose | Why this shot exists |
| Location/time | Scene context |
| Shot size | Close / detail / medium / wide etc. |
| Camera position | Eye-level, side, over-shoulder, follow etc. |
| Camera movement | Static, handheld, follow, pan etc. |
| Character blocking | Where both people are and how they move |
| Primary action | Main visible action |
| Relationship beat | Tease, care, shared activity, quiet intimacy etc. |
| Reaction | Important response from partner |
| Environment/prop | Only relevant details |
| Sound | Dialogue, ambience, music, SFX |
| Edit logic | Why/how to cut |
| Continuity note | Direction, prop, position, time, wardrobe |
| Performance note | Natural acting cue |

Not every user needs every field. Use the full schema for production-ready requests.

## 6. Editing strategy

Cover:
- cut rhythm,
- pacing changes,
- montage density,
- how generated 5–10 second source segments may be trimmed into shorter final shots,
- where ambient sound should breathe,
- music function,
- sound bridges,
- transition restraint,
- ending hold.

Prefer motivated hard cuts for most Vlog work.

Use stylized transitions only when they support:
- time change,
- location change,
- memory,
- strong rhythmic design.

## 7. Sound strategy

Possible layers:
- music bed,
- natural dialogue,
- laughter,
- footsteps,
- street ambience,
- food packaging,
- transportation,
- rain,
- waves,
- crowd,
- fireworks.

Environmental sound increases realism and should not always be buried by music.

## 8. Performance direction

Give behavior-based direction instead of emotional adjectives only.

Better:
- “She keeps looking at the menu while answering him, then smiles only after he repeats the joke.”

Weaker:
- “She looks sweet and happy.”

Prefer:
- incomplete gestures,
- delayed reactions,
- overlapping behavior,
- looking away,
- practical actions continuing during conversation.

## 9. Handoff to downstream prompt skills

When another skill will generate image/video prompts, provide a clean blueprint at **segment level and shot level**.

Segment handoff:
- Segment ID,
- duration target,
- scene/time,
- mode,
- action progression,
- camera logic,
- start/end state,
- continuity anchors.

Shot handoff:
- Shot ID,
- duration in final edit,
- shot size,
- framing,
- camera motion,
- environment,
- character action,
- relationship beat,
- reaction,
- emotional goal,
- continuity constraints.

Do not over-specify model syntax or prompt engineering in this skill unless explicitly requested.
