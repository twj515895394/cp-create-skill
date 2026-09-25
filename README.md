# cp-create-skill

A standard Agent Skill for creating **couple/CP story scripts and director-level shooting scripts**, with natural cinematic Vlog storytelling as the primary direction.

## What this skill does

It designs the creative layer above image/video prompt generation:

- couple story concept,
- story engine / concept hook when useful,
- character behavior dynamics,
- relationship dynamics,
- concrete scene-event design,
- scene-state continuity,
- emotional and event progression,
- runtime planning,
- dynamic storyboard count,
- necessary brief confirmation,
- reference-video/script deconstruction,
- AI-video generation segment planning,
- venue/theme-driven creative expansion,
- proactive activity/project selection,
- concrete full-video scene route,
- director shooting script,
- detailed Picture & Performance direction,
- shot-size strategy,
- framing and camera movement,
- blocking and performance,
- interaction design,
- editing rhythm,
- sound strategy,
- continuity,
- quality control.

It intentionally does **not** default to detailed image/video model prompts. The result is a production blueprint that can be passed to downstream prompt-generation skills.

## Design philosophy

The core idea is:

> Strong CP content is not a collection of romantic poses. It is a shared-experience story in which two specific people reveal themselves through events, reactions, ordinary details, accumulated state and changing relationship rhythm.

A second principle is:

> Character adjectives do not generate stories; behavior does.

Instead of stopping at “稳重 / 活泼 / 温柔 / 高冷”, the skill can translate personality into:
- who initiates,
- who hesitates,
- who reacts late,
- who handles practical details,
- how each person plays, cares, recovers or unexpectedly changes.

For scene design:

> Different backgrounds are not enough. Different scenes should ideally give the characters different things to do, notice, decide, react to or carry forward.

For AI-video production:

> A shot is not automatically a generation clip. Compatible micro-shots can be grouped into coherent production segments.

## Creative freedom

The skill deliberately separates guidance into:

- **Required** — a small quality floor such as concrete major scenes, playable important shots and physically believable actions.
- **Preferred** — strong enhancers such as action/reaction, state carryover, behavioral contrast and callbacks.
- **Optional** — free creative devices such as recurring jokes, role reversal, surprise, mini-conflict, stylized transitions and nonlinear structure.

This prevents quality rules from becoming a rigid template.

## Standard Skill structure

This repository follows the Agent Skills pattern:

- SKILL.md — routing metadata and core workflow
- references/ — professional knowledge loaded on demand
- agents/openai.yaml — optional ChatGPT/Codex UI metadata

## References

### Control layer

- reference-router.md — selective reference routing, reference budgets, load / exclude rules, and future library routing contract
- qc-gates.md — staged QC: routing integrity, story/scene integrity, production/AI feasibility, final delivery integrity

The control layer is intentionally separate from creative knowledge. For substantial tasks, routing happens before specialized reference loading.

### Routed creative knowledge

Large creative libraries sit behind routing boundaries:

- scene-library/index.md → one relevant scene domain by default
- motif-library/scene-event-motifs.md → cross-scene event seeds when event variety is weak
- micro-moments/index.md → one relevant lived-in-detail domain, optionally universal
- ai-video-shot-safety.md → AI generation feasibility, identity/environment separation and complexity budgeting

Current scene domains include Home, City, Entertainment, Outdoor, Travel, Shared Tasks, Season/Weather, and Holidays/Special Days. Domain-specific Micro Moments now cover Home, City, Entertainment, Outdoor, Travel, Shared Tasks, Season/Weather, and Holidays/Special Days.

The libraries are intentionally not loaded as a bundle.

Routing uses exact registered paths whenever the task is clear. Index files are ambiguity fallbacks only. When several labels fit one scene, one **Primary Domain** is selected by the behavior/state driver; Secondary Context does not trigger extra library loading.

### Specialized references

- brief-confirmation.md — minimal necessary user confirmation gate
- reference-deconstruction.md — structural analysis of reference videos/scripts without surface copying
- character-behavior-engine.md — converting character traits into story-generating behavior
- event-engine.md — scene events, action/reaction, state carryover and repetition control
- creative-expansion.md — proactive venue-driven activity selection and anti-formula rules
- story-structure.md — dynamic shot count and narrative modules
- scene-specificity.md — concrete places, activities/projects and realistic scene progression
- performance-writing.md — flexible but detailed 画面与表演 writing standard
- generation-segments.md — practical AI-video production units
- shot-language.md — Vlog shot scale, framing, camera, blocking
- interaction-library.md — couple behavior and relationship beats
- style-modes.md — Vlog-first content directions
- output-schema.md — story, segment and director-script schema
- quality-checklist.md — hard failures, strong signals and optional enrichment
- examples.md — runtime-based planning examples

## Routing regression tests

- tests/reference-routing-cases.md — regression cases for validating include/exclude behavior, reference budgets, domain isolation, and QC-gate selection
- Test files are development material and must not be loaded as runtime creative references.

## Typical triggers

Examples:

- 帮我写一个 45 秒情侣甜蜜日常 Vlog
- 设计一个情侣在京都约会的导演分镜
- 给这段情侣剧情做成可拍摄的导演脚本
- 设计一个居家情侣 CP 60 秒短片
- 分析这个情侣视频为什么好看，并用同类机制重新创作
- 对比我的生成视频和参考案例，找出内容重复和分镜问题
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

Future directions can be added as references without bloating the core SKILL.md.
