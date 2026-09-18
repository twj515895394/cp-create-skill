---
name: couple-cp-director
description: Create professional couple/CP scripts and director shooting scripts, especially sweet daily-life Vlogs. Use when the user asks for 情侣CP、情侣Vlog、甜蜜日常、约会、旅行、居家、纪念日、微电影式情侣内容的创意、剧本、导演剧本、分镜、镜头设计、拍摄规划、剪辑节奏或影像叙事。Do not use for prompt-only image generation unless script/directing design is also requested.
---

# Couple CP Director

Create **story scripts + director-level shooting scripts** for couple/CP content. The primary direction is natural, sweet, cinematic **Vlog storytelling**.

The goal is not to stack romantic poses. Build believable intimacy through shared experiences, playful reactions, tiny acts of care, companionship, time flow, and emotional progression.

## Core workflow

1. **Resolve the brief**
   - Identify target duration, aspect ratio/platform, scene/theme, relationship stage, tone, must-have moments, prohibited elements, and desired output depth.
   - Do not interrogate the user. Ask only when missing information would materially change the story or production plan.
   - If critical information is missing, ask a compact 2–5 question batch.
   - If non-critical information is missing, infer sensible defaults and proceed.
   - Read references/brief-confirmation.md.

2. **Choose a narrative mode**
   - Default to Daily Sweet Vlog.
   - Other supported modes: travel diary, home-life diary, date-day Vlog, seasonal/holiday memory, anniversary film, observational couple diary, light narrative micro-film.
   - Read references/style-modes.md when selecting or combining modes.

3. **Design the story before shots**
   - Define the relationship dynamic and emotional arc.
   - Use functional story modules rather than a fixed number of shots.
   - Read references/story-structure.md.

4. **Determine shot count dynamically**
   - Never force a fixed storyboard count.
   - Derive shot count from total duration, pace, action density, scene count, and emotional breathing room.
   - Adjust durations per shot instead of mechanically dividing time equally.
   - Read references/story-structure.md.

5. **Create generation segments for AI-video handoff**
   - A shot is an editing/directing unit; a generation segment is a production unit.
   - Group adjacent shots when they share location, time, continuity, action, and emotional purpose.
   - For AI-video workflows, prefer generation segments around **5–10 seconds**, usually 6–8 seconds, and normally avoid exceeding 10 seconds.
   - Preserve fine-grained shots inside each segment.
   - Read references/generation-segments.md.

6. **Direct for Vlog language**
   - Default shot-size priority: **close-up / close shot / detail > medium shot > wide / long shot**.
   - Wide and long shots are sparse and purposeful: location establishment, transition, spatial reset, emotional punctuation, or final environment payoff.
   - Do not make a Vlog feel like landscape coverage or a conventional film made mostly of wide masters.
   - Read references/shot-language.md.

7. **Build relationship beats**
   - Prioritize two-person relationship visibility, natural reaction, shared action, playful interaction, practical life details, care, and quiet companionship.
   - Avoid repetitive “look at each other / hold hands / hug / kiss” loops.
   - Read references/interaction-library.md.

8. **Write layered production output**
   - **Story Script**: what happens, why it matters, emotional progression, actions, optional dialogue/voiceover.
   - **Generation Segments**: practical 5–10 second production units for downstream AI-video creation when relevant.
   - **Director Script**: shot duration, framing, camera position, movement, blocking, action, interaction, environment, sound, transition, edit intention, continuity.
   - Read references/output-schema.md.

9. **Check rhythm and continuity**
   - Every shot should have one primary expressive purpose.
   - Every generation segment should feel like one coherent moment with internal progression.
   - Cuts should be motivated by action, gaze, space, time, emotion, sound, or rhythm.
   - Use contrast: lively sections need breathing space; romantic endings should usually reduce action while increasing emotional weight.

10. **Run quality control**
   - Read references/quality-checklist.md.
   - Fix any result that feels like pose compilation, generic AI romance, random montage, landscape tourism, constant high-intensity sweetness, or generation segments that are too fragmented or overloaded.

## Non-negotiable principles

- **No fixed shot count.** Duration and content determine the storyboard.
- **Shot ≠ generation segment.** Keep director-level precision while grouping compatible shots into practical downstream video units.
- **AI-video generation segments normally target 5–10 seconds and should usually stay under 10 seconds.**
- **Vlog framing is intimate.** Close shots and details dominate; medium shots support body interaction; wide/long shots are limited.
- **Relationship over scenery.** Locations support the couple story, not the reverse.
- **Natural sweetness over forced sweetness.**
- **Shared experience is mandatory** for most daily Vlog stories.
- Include at least one believable life-detail beat and one care/companionship beat when the concept allows.
- Prefer the couple in the same frame when relationship readability matters.
- Use singles and inserts selectively for reaction, detail, rhythm, and emphasis.
- Each shot should primarily communicate one thing.
- Emotional and pacing progression must change across the piece.
- Endings should feel intentional and leave emotional residue rather than stop abruptly.
- Ask only necessary clarification questions; infer minor creative details instead of blocking.
- Do not generate detailed image/video prompts unless the user explicitly asks for them; this skill designs the creative and director blueprint that downstream prompt skills can consume.

## Reference loading

Read only what the task needs:

- Missing/ambiguous user requirements → references/brief-confirmation.md
- Narrative architecture and dynamic shot count → references/story-structure.md
- AI-video grouping and 5–10 second production units → references/generation-segments.md
- Shot scale, framing, camera, movement, blocking → references/shot-language.md
- Couple interaction and relationship beats → references/interaction-library.md
- Supported content directions → references/style-modes.md
- Output fields and handoff format → references/output-schema.md
- Acceptance criteria and anti-patterns → references/quality-checklist.md
- Concrete structural examples → references/examples.md

## Default output order

When the user asks for a complete design, output:

1. Creative concept
2. Couple relationship dynamic
3. Emotional arc
4. Runtime and pacing strategy
5. Story script
6. Generation-segment plan when AI-video production is relevant
7. Director shooting script / storyboard
8. Editing and sound strategy
9. Continuity and performance notes
10. Quality-control summary

Do not force all sections when the user asks for only one layer.
