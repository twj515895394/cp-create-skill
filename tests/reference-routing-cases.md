# Reference Routing Regression Cases

These cases validate the runtime routing policy without becoming runtime reference material.

Do **not** load this file during normal creative execution.

## How to use

For each case, verify:

1. primary task type,
2. selected references,
3. explicitly excluded references,
4. applicable QC gates,
5. whether the selection stays inside the expected reference budget.

A routing result fails if it loads a reference listed under "Must exclude" without a concrete new need.

---

## Case 1 — Single shot camera adjustment

User intent:
"把这个已有镜头从缓慢推镜改成固定镜头，其他不变。"

Expected:
- Primary task: Shot / director design
- Load: `shot-language.md`
- Conditional: `ai-video-shot-safety.md` only when AI video is explicitly relevant and the file exists
- Must exclude: `story-structure.md`, `creative-expansion.md`, Scene Library, Motif Library, Micro Moments
- QC: lightweight QC-3; QC-2 only if AI feasibility changes
- Budget target: 1–2 specialized references

## Case 2 — Theme-park couple Vlog from scratch

User intent:
"设计一个 60 秒游乐园情侣 AI Vlog，生活感强。"

Expected:
- Primary task: Complete Vlog + AI-video director plan
- Load current core: `event-engine.md`, `story-structure.md`, `shot-language.md`, `generation-segments.md`
- Conditional current: `character-behavior-engine.md` if character contrast matters; `creative-expansion.md` / `scene-specificity.md` for route specificity
- Future libraries: exactly `scene-library/entertainment.md`, relevant Micro Moments, Motif Library, `ai-video-shot-safety.md`
- Must exclude: home, travel, holiday domains unless the actual concept crosses into them
- QC: QC-0 + QC-1 + QC-2 + QC-3

## Case 3 — Hotel micro-moment expansion only

User intent:
"给我扩展酒店里真实情侣会发生的生活小细节，不要写完整剧本。"

Expected:
- Primary task: Scene / activity expansion
- Future load: `scene-library/travel.md` + `micro-moments/travel.md`
- Conditional: Motif Library only if event seeds are also requested
- Must exclude: `story-structure.md`, `generation-segments.md`, `shot-language.md`, unrelated scene domains
- QC: QC-0 + lightweight QC-1 + QC-3

## Case 4 — Analyze supplied reference video

User intent:
"拆解这个参考视频为什么自然，先别设计新剧本。"

Expected:
- Primary task: Reference deconstruction
- Load: `reference-deconstruction.md`
- Conditional: `event-engine.md` for event/state analysis; `shot-language.md` only for visual grammar; `character-behavior-engine.md` only if behavior contrast is material
- Must exclude: full Scene Library, output schema, story structure by default
- QC: QC-0 + QC-3

## Case 5 — Rewrite an existing Content Map

User intent:
"场景都定好了，帮我把重复的走路和对视改掉。"

Expected:
- Primary task: Story / event diagnosis
- Load: `event-engine.md`
- Conditional: `interaction-library.md`
- Must exclude: Scene Library unless a replacement scene cannot be created inside existing settings; `shot-language.md` unless shot design is also requested
- QC: QC-0 + QC-1 + QC-3

## Case 6 — Character behavior only

User intent:
"女生活泼、男生克制，帮我设计两人的行为差异，不做分镜。"

Expected:
- Primary task: Character / relationship behavior design
- Load: `character-behavior-engine.md`
- Conditional: `interaction-library.md`
- Must exclude: `shot-language.md`, `generation-segments.md`, Scene Library, output schema
- QC: QC-0 + QC-3

## Case 7 — AI generation segment grouping

User intent:
"故事和分镜都有了，帮我按 AI 视频生成拆成 6–8 秒片段。"

Expected:
- Primary task: AI-video production segmentation
- Load: `generation-segments.md`
- Conditional: `shot-language.md`, `performance-writing.md`, future `ai-video-shot-safety.md`
- Must exclude: Scene Library, creative expansion, story structure unless the supplied structure itself is broken
- QC: QC-0 + QC-2 + QC-3

## Case 8 — Pure story concept ideation

User intent:
"给我几个情侣夏夜短视频创意，不需要镜头。"

Expected:
- Primary task: Scene/event ideation
- Load: `event-engine.md`
- Conditional: `style-modes.md` if mode is unclear; future season/weather domain only if concrete scene expansion is needed
- Must exclude: `shot-language.md`, `generation-segments.md`, `output-schema.md`, AI Shot Safety
- QC: QC-0 + lightweight QC-1 + QC-3

## Case 9 — Cross-domain day

User intent:
"从家里出发，坐高铁去另一座城市住酒店，做一条一日情侣 Vlog。"

Expected:
- Primary task: Complete Vlog
- Domain behavior: do not preload home + city + travel libraries together
- Load each domain only when designing that route section, unless cross-domain continuity requires simultaneous access
- Must exclude: holiday/entertainment domains unless explicitly used
- QC: QC-0 + QC-1 + QC-3; add QC-2 for AI-video handoff

## Case 10 — User already provides complete scenes

User intent:
"我已经定好 8 个具体场景，只帮我写导演分镜。"

Expected:
- Primary task: Shot / director design
- Load: `shot-language.md` + `performance-writing.md`
- Conditional: `generation-segments.md` for AI handoff; output schema for structured delivery
- Must exclude: `creative-expansion.md`, `scene-specificity.md`, Scene Library, Motif Library unless a scene is found unusable
- QC: QC-0 + QC-2 when AI relevant + QC-3

## Case 11 — Final QC only

User intent:
"不要改创意，只检查这份完整方案有没有问题。"

Expected:
- Primary task: Quality control
- Load: `qc-gates.md` + `quality-checklist.md`
- Load other references only when a specific failed gate requires authoritative comparison
- Must exclude: broad creative libraries by default
- QC: run the gates relevant to the supplied artifact

## Case 12 — Micro copy / local wording change

User intent:
"把这句镜头描述写得自然一点，意思不变。"

Expected:
- Primary task: local edit
- Specialized references: normally none
- Must exclude: all scene/story libraries
- QC: lightweight QC-3
- Budget target: 0–1

---

## Pass criteria

The router passes this regression set when:

- no case recursively loads a directory,
- no case loads sibling scene domains without a cross-domain reason,
- AI-production references appear only in AI-production cases,
- shot references do not leak into story-only tasks,
- story/scene expansion references do not leak into local shot edits,
- final QC does not become an excuse to load the whole library,
- the selected reference set can be justified file by file.

## Design rule under test

> Route by task and stage first; retrieve knowledge second.
