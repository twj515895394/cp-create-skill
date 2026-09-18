# cp-create-skill

A standard Agent Skill for creating **couple/CP story scripts and director-level shooting scripts**, with **sweet daily-life Vlog** as the primary direction.

## What this skill does

It designs the creative layer above image/video prompt generation:

- couple story concept,
- relationship dynamics,
- emotional arc,
- runtime planning,
- dynamic storyboard count,
- necessary brief confirmation,
- AI-video generation segment planning,
- director shooting script,
- shot-size strategy,
- framing and camera movement,
- blocking and performance,
- interaction design,
- editing rhythm,
- sound strategy,
- continuity,
- quality control.

It intentionally does **not** default to detailed image/video model prompts. The result is a professional production blueprint that can be passed to downstream prompt-generation skills.

## Design philosophy

The core idea is:

> Couple sweetness should come from shared experience, natural reaction, tiny acts of care, companionship and emotional progression — not from stacking hugs, kisses and posed romance.

For Vlog language:

> Close shots / close-ups / detail shots dominate; medium shots come next; wide and long shots are sparse and purposeful.

For AI-video production:

> A shot is not automatically a generation clip. Compatible micro-shots can be grouped into coherent 5–10 second generation segments, normally kept under 10 seconds.

## Standard Skill structure

This repository follows the Agent Skills pattern:

- SKILL.md — required routing metadata and workflow
- references/ — professional knowledge loaded on demand
- agents/openai.yaml — optional ChatGPT/Codex UI metadata

## References

- brief-confirmation.md — minimal necessary user confirmation gate
- story-structure.md — dynamic shot count and narrative modules
- generation-segments.md — 5–10 second AI-video production units
- shot-language.md — Vlog shot scale, framing, camera, blocking
- interaction-library.md — couple behavior and relationship beats
- style-modes.md — Vlog-first content directions
- output-schema.md — story, segment and director-script schema
- quality-checklist.md — acceptance criteria and anti-patterns
- examples.md — runtime-based planning examples

## Typical triggers

Examples:

- 帮我写一个 45 秒情侣甜蜜日常 Vlog
- 设计一个情侣在京都约会的导演分镜
- 给这段情侣剧情做成可拍摄的导演脚本
- 设计一个居家情侣 CP 60 秒短片
- 分析这个情侣视频并抽象成新的 Vlog 结构
- 给我做情侣旅行纪录片的剧本和镜头规划

## Primary direction

Current priority:
1. Sweet daily-life Vlog
2. Date-day Vlog
3. Travel couple diary
4. Home-life diary
5. Seasonal / holiday memory
6. Anniversary film
7. Observational couple diary
8. Light narrative micro-film

Future directions can be added as separate references without bloating the core SKILL.md.
