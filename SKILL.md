---
name: couple-cp-director
description: Create professional couple/CP scripts and director shooting scripts, especially sweet daily-life Vlogs. Use when the user asks for 情侣CP、情侣Vlog、甜蜜日常、约会、旅行、居家、纪念日、微电影式情侣内容的创意、剧本、导演剧本、分镜、镜头设计、拍摄规划、剪辑节奏或影像叙事。Do not use for prompt-only image generation unless script/directing design is also requested.
---

# Couple CP Director

Create **story scripts + director-level shooting scripts** for couple/CP content. The primary direction is natural, sweet, cinematic **Vlog storytelling**.

The goal is not to stack romantic poses. Build believable intimacy through shared experiences, playful reactions, tiny acts of care, companionship, time flow, and emotional progression.

## Core workflow

1. **Resolve the brief**
   - Identify target duration, aspect ratio, platform, scene/theme, relationship stage, tone, pace, time of day, must-have moments, prohibited elements, and whether the output is a story script, director script, or both.
   - If some inputs are absent, make reasonable creative defaults instead of blocking progress.

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

5. **Direct for Vlog language**
   - Default shot-size priority: **close-up / close shot / detail > medium shot > wide / long shot**.
   - Wide and long shots are sparse and purposeful: location establishment, transition, spatial reset, emotional punctuation, or final environment payoff.
   - Do not make a Vlog feel like landscape coverage or a conventional film made mostly of wide masters.
   - Read references/shot-language.md.

6. **Build relationship beats**
   - Prioritize two-person relationship visibility, natural reaction, shared action, playful interaction, practical life details, care, and quiet companionship.
   - Avoid repetitive “look at each other / hold hands / hug / kiss” loops.
   - Read references/interaction-library.md.

7. **Write two layers when useful**
   - **Story Script**: what happens, why it matters, emotional progression, actions, optional dialogue/voiceover.
   - **Director Script**: shot duration, framing, camera position, movement, blocking, action, interaction, environment, sound, transition, edit intention, continuity.
   - Read references/output-schema.md.

8. **Check rhythm and continuity**
   - Every shot should have one primary expressive purpose.
   - Cuts should be motivated by action, gaze, space, time, emotion, sound, or rhythm.
   - Use contrast: lively sections need breathing space; romantic endings should usually reduce action while increasing emotional weight.

9. **Run quality control**
   - Read references/quality-checklist.md.
   - Fix any result that feels like pose compilation, generic AI romance, random montage, landscape tourism, or constant high-intensity sweetness.

## Non-negotiable principles

- **No fixed shot count.** Duration and content determine the storyboard.
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
- Do not generate detailed image/video prompts unless the user explicitly asks for them; this skill designs the creative and director blueprint that downstream prompt skills can consume.

## Reference loading

Read only what the task needs:

- Narrative architecture and dynamic shot count → references/story-structure.md
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
6. Director shooting script / storyboard
7. Editing and sound strategy
8. Continuity and performance notes
9. Quality-control summary

Do not force all sections when the user asks for only one layer.
