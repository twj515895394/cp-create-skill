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

3. **Expand the premise creatively before structuring it**
   - Treat rules and relationship modules as guardrails, not as the content itself.
   - When the user gives a destination/theme, proactively discover or invent the concrete activities that make that destination worth filming.
   - For named real venues, research public attraction/experience information when tools are available instead of asking the user to supply every project.
   - Choose activities for their dramatic affordances: reaction, competition, fear/bravery, teamwork, care, shared attention, or visual payoff.
   - Read references/creative-expansion.md.

4. **Design the story before shots**
   - Define the relationship dynamic and emotional arc through the selected experiences.
   - Use functional story modules as diagnostic options, not a mandatory checklist or fixed sequence.
   - The relationship should change because of what the couple experiences together, not because the script labels a beat “升温”.
   - Read references/story-structure.md.

5. **Build a concrete Content Map / Scene Route before the storyboard**
   - For complete Vlogs, explicitly state where the couple goes, what exact activity/project happens in each place, what relationship beat occurs, and how the story transitions.
   - Ban vague labels such as “游玩项目 / 互动 / 吃东西 / 看风景” when a concrete activity can be named.
   - For recognizable activities, use physically believable process details and constraints.
   - Read references/scene-specificity.md.

6. **Determine shot count dynamically**
   - Never force a fixed storyboard count.
   - Derive shot count from total duration, pace, action density, scene count, and emotional breathing room.
   - Adjust durations per shot instead of mechanically dividing time equally.
   - Read references/story-structure.md.

7. **Create generation segments for AI-video handoff**
   - A shot is an editing/directing unit; a generation segment is a production unit.
   - Group adjacent shots when they share location, time, continuity, action, and emotional purpose.
   - For AI-video workflows, prefer generation segments around **5–10 seconds**, usually 6–8 seconds, and normally avoid exceeding 10 seconds.
   - Preserve fine-grained shots inside each segment.
   - Read references/generation-segments.md.

8. **Direct for Vlog language**
   - Default shot-size priority: **close-up / close shot / detail > medium shot > wide / long shot**.
   - Wide and long shots are sparse and purposeful: location establishment, transition, spatial reset, emotional punctuation, or final environment payoff.
   - Do not make a Vlog feel like landscape coverage or a conventional film made mostly of wide masters.
   - Read references/shot-language.md.

9. **Build relationship beats**
   - Prioritize two-person relationship visibility, natural reaction, shared action, playful interaction, practical life details, care, and quiet companionship.
   - Avoid repetitive “look at each other / hold hands / hug / kiss” loops.
   - Read references/interaction-library.md.

10. **Write layered production output**
   - **Story Script**: what happens, why it matters, emotional progression, actions, optional dialogue/voiceover.
   - **Generation Segments**: practical 5–10 second production units for downstream AI-video creation when relevant.
   - **Director Script**: shot duration, concrete scene/project, framing, camera position, movement, blocking, rich Picture & Performance, sound, transition, edit intention, continuity.
   - **画面与表演 / Picture & Performance is the primary shot field.** It must describe observable action and reaction from first frame to cut, not generic emotional summaries.
   - Read references/performance-writing.md and references/output-schema.md.

11. **Check rhythm and continuity**
   - Every shot should have one primary expressive purpose.
   - Every generation segment should feel like one coherent moment with internal progression.
   - Cuts should be motivated by action, gaze, space, time, emotion, sound, or rhythm.
   - Use contrast: lively sections need breathing space; romantic endings should usually reduce action while increasing emotional weight.

12. **Run quality control**
   - Read references/quality-checklist.md.
   - Fix any result that feels like pose compilation, generic AI romance, random montage, landscape tourism, constant high-intensity sweetness, or generation segments that are too fragmented or overloaded.

## Non-negotiable principles

- **No fixed shot count.** Duration and content determine the storyboard.
- **Shot ≠ generation segment.** Keep director-level precision while grouping compatible shots into practical downstream video units.
- **Complete Vlogs require a concrete Content Map / Scene Route before the detailed storyboard.** The reader must understand the full video content, locations, and activities at a glance.
- **“画面与表演 / Picture & Performance” is the most important storyboard field.** Write it in enough detail to visualize and perform the shot from first frame to cut.
- **No vague activity placeholders.** Name the actual activity/project and make it physically believable.
- **Rules are guardrails, not the content.** Do not satisfy “共同体验 / 玩闹 / 照顾 / 结尾” as a mechanical checklist.
- **Venue/theme must drive invention.** When a destination offers concrete experiences, actively select and use them as story engines.
- **Relationship progression must be event-driven.** Show how specific experiences create reactions and new closeness instead of merely stating “关系升温”.
- **AI-video generation segments normally target 5–10 seconds and should usually stay under 10 seconds.**
- **Vlog framing is intimate.** Close shots and details dominate; medium shots support body interaction; wide/long shots are limited.
- **Relationship over scenery.** Locations support the couple story, not the reverse.
- **Natural sweetness over forced sweetness.**
- Use shared experience, life detail, care, play, competition, quiet companionship, or other relationship beats only when they arise naturally from the chosen story; do not force every category into every video.
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
- Venue/theme-driven creative expansion and activity selection → references/creative-expansion.md
- Narrative architecture and dynamic shot count → references/story-structure.md
- Concrete places, activities and full-video scene route → references/scene-specificity.md
- Detailed 画面与表演 writing → references/performance-writing.md
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
3. Core Experience Design — the concrete activities/projects and why they were selected
4. Emotional arc through those experiences
5. Runtime and pacing strategy
6. Full-video Content Map / Scene Route
7. Story script
8. Generation-segment plan when AI-video production is relevant
9. Director shooting script / storyboard, with detailed 画面与表演 as the primary column
10. Editing and sound strategy
11. Continuity and performance notes
12. Quality-control summary

Do not force all sections when the user asks for only one layer.
