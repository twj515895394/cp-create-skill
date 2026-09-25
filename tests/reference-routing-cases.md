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
- Domain libraries: open `scene-library/entertainment.md` directly; do not open `scene-library/index.md`; load `micro-moments/entertainment.md` directly only for lived-in texture; load `motif-library/scene-event-motifs.md` only if event variety is weak; load `ai-video-shot-safety.md` for AI production
- Must exclude: home, travel, holiday domains unless the actual concept crosses into them
- QC: QC-0 + QC-1 + QC-2 + QC-3

## Case 3 — Hotel micro-moment expansion only

User intent:
"给我扩展酒店里真实情侣会发生的生活小细节，不要写完整剧本。"

Expected:
- Primary task: Scene / activity expansion
- Load: open `scene-library/travel.md` directly and, because the request explicitly asks for small lived-in details, open `micro-moments/travel.md` directly
- Must not load routing indexes: `scene-library/index.md`, `micro-moments/index.md`
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
- Conditional: `shot-language.md`, `performance-writing.md`, `ai-video-shot-safety.md`
- Must exclude: Scene Library, creative expansion, story structure unless the supplied structure itself is broken
- QC: QC-0 + QC-2 + QC-3

## Case 8 — Pure story concept ideation

User intent:
"给我几个情侣夏夜短视频创意，不需要镜头。"

Expected:
- Primary task: Scene/event ideation
- Load: `event-engine.md`
- Conditional: `style-modes.md` if mode is unclear; `scene-library/season-weather.md` only if concrete scene expansion is needed
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

- no case lists a reference directory or broad-searches the repository when a registered direct path exists,
- no obvious-domain case loads `scene-library/index.md` or `micro-moments/index.md`,
- no case recursively loads a directory,
- no case loads sibling scene domains without a cross-domain reason,
- AI-production references appear only in AI-production cases,
- shot references do not leak into story-only tasks,
- story/scene expansion references do not leak into local shot edits,
- final QC does not become an excuse to load the whole library,
- the selected reference set can be justified file by file,
- one Primary Domain is chosen per story section when domain knowledge is needed,
- Secondary Context alone never authorizes an additional domain load,
- Micro routing inherits the Primary Domain instead of reclassifying/scanning.

## Design rule under test

> Route by task and stage first; retrieve knowledge second.


## Case 13 — Scene is concrete, texture is weak

User intent:
"游乐园长椅休息这个场景已经确定了，但太像摆拍，帮我加一些真实生活小动作。"

Expected:
- Primary task: lived-in texture refinement
- Load: `micro-moments/entertainment.md`
- Conditional: `micro-moments/universal.md` only if distinct generic body/object details are still needed
- Must exclude: full Scene Library, Motif Library, story structure, output schema
- Reason: underlying Scene Event is already concrete; do not reopen story generation
- QC: QC-0 + lightweight QC-1 + QC-3

## Case 14 — Setting exists, event is vague

User intent:
"场景就是便利店，但我不知道两个人在里面发生什么，给我几个自然事件。"

Expected:
- Primary task: scene-event ideation
- Load: `scene-library/city-daily.md` directly
- Must not load: `scene-library/index.md`, `micro-moments/index.md`
- Conditional: `motif-library/scene-event-motifs.md` if scene-domain affordances alone are insufficient
- Must exclude: Micro Moments until one event is selected; AI Shot Safety unless AI directing is requested
- QC: QC-0 + QC-1 + QC-3


## Case 15 — Obvious home domain must bypass index

User intent:
"设计一段情侣早上在家里厨房做早餐的生活场景。"

Expected:
- Primary task: scene/event design
- Load: `scene-library/home-life.md` directly
- Conditional: `micro-moments/home.md` only after the breakfast Scene Event is concrete and more lived-in detail is needed
- Must exclude: `scene-library/index.md`, `micro-moments/index.md`, city/travel/entertainment domains
- Must not list `references/scene-library/` or search the repository to find a home file
- QC: QC-0 + QC-1 + QC-3

## Case 16 — Obvious travel domain must bypass index

User intent:
"酒店刚入住，两个人放行李、找插座、拉开窗帘看景色。"

Expected:
- Primary task: concrete Travel scene
- Load: `scene-library/travel.md` directly
- Conditional: `micro-moments/travel.md` only if detail expansion is requested
- Must exclude: `scene-library/index.md`, Home Life despite the room looking domestic
- Reason: temporary lodging / arrival state makes Travel the controlling domain
- QC: QC-0 + QC-1 + QC-3

## Case 17 — Shared task versus home disambiguation without scanning

User intent:
"两个人一起组装新买的书架，重点是分工、装错再返工。"

Expected:
- Primary task: shared-task event design
- Load: `scene-library/shared-tasks.md` directly
- Must exclude: `scene-library/home-life.md` unless domestic context later becomes relevant
- Must exclude: `scene-library/index.md`
- Reason: coordination / mistake / repair is the story engine; physical location is secondary
- QC: QC-0 + QC-1 + QC-3

## Case 18 — Genuine unregistered ambiguity may use index

User intent:
"设计一个两人在一个没有说明性质的室内公共空间里约会的场景。"

Expected:
- First attempt: infer from user-provided concrete activity if possible
- If no registered domain can be selected without inventing the setting, `scene-library/index.md` may be opened as a fallback
- Do not list the directory or read sibling domain files
- If the index still cannot resolve the domain, proceed with generic event logic or state the limitation rather than scanning the library
- QC: QC-0 + QC-3


## Case 19 — Rainy mall, weather is decorative

User intent:
"下雨天两个人去商场逛街，主要就是逛店、试东西、吃饭。"

Expected:
- Primary Domain: City Daily
- Load: `scene-library/city-daily.md` directly
- Secondary Context: rain
- Must exclude: `scene-library/season-weather.md` because rain does not materially change the event engine
- Micro: `micro-moments/city.md` only if lived-in detail is requested
- Must not load: `micro-moments/season-weather.md`
- QC: QC-0 + QC-1 + QC-3

## Case 20 — Sudden downpour changes the plan

User intent:
"两个人在街上突然遇到暴雨，只能一起冲到屋檐下避雨，衣服头发都湿了，等雨小再走。"

Expected:
- Primary Domain: Season / Weather
- Load: `scene-library/season-weather.md` directly
- Secondary Context: city street
- Must exclude: `scene-library/city-daily.md`
- Micro: `micro-moments/season-weather.md` when detail is needed
- Reason: rain causes route, movement, clothing state and recovery
- QC: QC-0 + QC-1 + QC-3

## Case 21 — Christmas mall shopping without ritual focus

User intent:
"圣诞装饰很多的商场里，两个人普通逛街买衣服喝咖啡。"

Expected:
- Primary Domain: City Daily
- Load: `scene-library/city-daily.md`
- Secondary Context: Christmas decoration
- Must exclude: `scene-library/holidays-special-days.md`
- Reason: shopping/café behavior is ordinary; holiday ritual does not cause action
- QC: QC-0 + QC-1 + QC-3

## Case 22 — Christmas gift reveal in a mall

User intent:
"两个人在商场约会，但重点是男生一直藏着礼物，等到晚上才拿出来给女生。"

Expected:
- Primary Domain: Holidays / Special Days
- Load: `scene-library/holidays-special-days.md`
- Secondary Context: mall / City Daily
- Must exclude: `scene-library/city-daily.md` unless a later separate shopping section specifically needs city knowledge
- Micro: `micro-moments/holidays-special-days.md` when ritual detail is needed
- Reason: conceal/reveal/timing drives the story
- QC: QC-0 + QC-1 + QC-3

## Case 23 — Windy beach, beach activity remains primary

User intent:
"两个人去海边散步坐一会，风有点大但没有改变行程。"

Expected:
- Primary Domain: Outdoor Leisure
- Load: `scene-library/outdoor-leisure.md`
- Secondary Context: wind
- Must exclude: `scene-library/season-weather.md`
- Micro: `micro-moments/outdoor.md`; use universal only if distinct generic detail is needed
- QC: QC-0 + QC-1 + QC-3

## Case 24 — Wind destroys picnic setup

User intent:
"野餐刚铺好，突然大风把纸巾和轻包装吹得到处都是，两个人赶紧压住东西重新收拾位置。"

Expected:
- Primary Domain: Season / Weather
- Load: `scene-library/season-weather.md`
- Secondary Context: picnic / Outdoor
- Must exclude: `scene-library/outdoor-leisure.md` for this specific section
- Micro: `micro-moments/season-weather.md`
- Reason: wind interruption and adaptation are the event engine
- QC: QC-0 + QC-1 + QC-3

## Case 25 — Trip packing focused on teamwork

User intent:
"视频就拍两个人在家一起收拾旅行行李，重点是一个很有计划，一个总漏东西，最后又重新打开箱子。"

Expected:
- Primary Domain: Shared Tasks
- Load: `scene-library/shared-tasks.md`
- Secondary Context: future travel / home
- Must exclude: `scene-library/travel.md`, `scene-library/home-life.md`
- Micro: `micro-moments/shared-tasks.md` when detail is needed
- Reason: packing coordination and mistake/correction are the subject
- QC: QC-0 + QC-1 + QC-3

## Case 26 — Outdoor music festival

User intent:
"两个人去户外音乐节，看演出、排队买吃的、在人群里找位置。"

Expected:
- Primary Domain: Entertainment
- Load: `scene-library/entertainment.md`
- Secondary Context: outdoor environment
- Must exclude: `scene-library/outdoor-leisure.md`
- Reason: organized show/event experience drives behavior
- QC: QC-0 + QC-1 + QC-3

## Case 27 — First night after moving, milestone is primary

User intent:
"搬家第一晚，家具还没装好，两个人坐在纸箱中间吃外卖，重点是终于有自己的新家了。"

Expected:
- Primary Domain: Holidays / Special Days
- Load: `scene-library/holidays-special-days.md`
- Secondary Context: Shared Tasks / Home
- Must exclude: `scene-library/shared-tasks.md` unless the scene later switches to unpacking/assembly as the actual task
- Reason: milestone meaning and first-night ritual drive the scene
- QC: QC-0 + QC-1 + QC-3

## Case 28 — Moving day process, task is primary

User intent:
"两个人搬家，重点是搬箱子、决定家具放哪、装错位置又重新调整。"

Expected:
- Primary Domain: Shared Tasks
- Load: `scene-library/shared-tasks.md`
- Secondary Context: Home / first-day milestone
- Must exclude: `scene-library/holidays-special-days.md`
- Micro: `micro-moments/shared-tasks.md`
- Reason: task coordination and correction drive behavior
- QC: QC-0 + QC-1 + QC-3
