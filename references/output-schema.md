# Output Schema

## 1. Creative overview

Include:
- title / working concept,
- one-sentence premise,
- relationship dynamic,
- tone,
- visual feeling,
- emotional destination.

For a simple slice-of-life request, keep this compact.

## 2. Story engine — recommended when character/story specificity matters

Use this layer when the video needs more than a generic date/travel montage.

Possible fields:

| Field | Meaning |
|---|---|
| Concept hook | Why this situation is interesting for these characters |
| Character behavior contrast | How their tendencies create different responses |
| Relationship engine | What repeatedly creates connection, friction, play or care |
| Shared objective / situation | What they are actually trying to do or experience |
| Change potential | What small behavior or relationship state might shift by the end |
| Motif / callback | Optional recurring object, joke, action or visual idea |

This is **not mandatory** for every simple Vlog.

Do not invent a high-concept premise when ordinary observation is the intended style.

Cross-reference only: `character-behavior-engine.md` and `event-engine.md`. Loading remains controlled by `reference-router.md` for the current task/stage.

## 3. Core Experience Mix — expected for venue-based Vlogs

Before listing emotional labels, state the **mix of concrete scene events** that makes the visit feel real and specific.

Do not interpret “experience” as “ride/project only.” Ordinary visit moments can carry equal or greater story value.

Recommended fields:

| Field | Requirement |
|---|---|
| Scene event | Concrete ride, walk, queue, snack, shop, rest, photo, show, transition, etc. |
| Scene-event type | High / medium / low intensity or category such as ride / food / walk / rest |
| Why selected | Place identity, behavior, pacing, realism, relationship, or visual value |
| Observable behavior opportunity | What can physically happen here |
| Runtime value | Why it deserves screen time in this duration |

For a named venue, reveal the venue fingerprint **without turning the plan into an attraction checklist**.

Do not output only abstract bullets such as “共同体验 / 性格反差 / 玩闹 / 照顾”. Those are analysis labels, not content.

Cross-reference only: `creative-expansion.md`. Load it only when selected by `reference-router.md` for the current task/stage.

## 4. Full-video Content Map / Scene Route — required for complete Vlogs

Before the detailed storyboard, summarize **what the entire video actually contains**.

The reader should be able to understand the runtime without reading the shot table.

Recommended fields:

| Field | Requirement |
|---|---|
| Time range | Approximate section runtime |
| Concrete place | Exact type of place within the destination |
| Scene-event type | Ride / walk / queue / food / shop / rest / show / transition etc. |
| Concrete event | What physically happens |
| Story value | Relationship, realism, pacing, place identity, transition, atmosphere, payoff |
| Relationship behavior | What visibly happens between them, if relevant |
| Entering state | Optional useful carryover: prop, energy, information, time, mood |
| Exit state | Optional meaningful change that can feed later scenes |
| Visual anchor | Distinctive physical object/environment |
| Transition | How the story moves onward |

Do not force entering/exit state into trivial transition rows. Use it where continuity or progression benefits.

Examples of acceptable specificity:
- 乐园入口检票区 → 入园、整理票据/手机、打开导览图
- 主题街区闲逛 → 一人被橱窗吸引停下，另一人走出两步后才发现
- 过山车站台 → 入座、压安全杆、等待发车、刺激后的真实恢复
- 爆米花摊 → 点单、接桶、边走边吃，形成一个可继续使用的道具
- 商店镜子前 → 试戴夸张发饰，一人拒绝后又偷偷看镜子
- 喷泉休息区 → 放下购物袋、揉脚、递水，节奏从热闹转安静
- 烟花观赏区 → 等候、共同抬头、回收前面建立的关系或物件

Avoid vague labels such as “游玩”“互动”“吃东西”“看景色”.

Cross-reference only: `scene-specificity.md` and `event-engine.md`. Load them only when selected by `reference-router.md` for the current task/stage.

## 5. Runtime strategy

Include when useful:
- total runtime,
- pace type,
- estimated shot-count range,
- estimated generation-segment count when AI-video handoff is relevant,
- where the piece accelerates,
- where it slows,
- expected climax / payoff.

Do not lock an exact shot count until the story and scene route are designed.

## 6. Story script layer

Use a readable sequence structure.

Recommended fields:
- sequence / beat,
- concrete location and time,
- concrete scene event,
- what happens,
- character behavior,
- relationship / story meaning,
- important entering or exit state when relevant,
- dialogue / voiceover when appropriate to the brief,
- transition to next beat.

Dialogue density is **brief-dependent and creatively open**. Possible directions include:
- a visual-first Vlog with almost no dialogue,
- a complete story carried by only a few lines,
- natural conversational back-and-forth,
- dialogue-led scenes,
- voiceover-led narration,
- mixed dialogue + ambience,
- or other structures that fit the concept.

Use the user's request as the main anchor. When the brief leaves room, let the model decide whether spoken language adds character, story, rhythm, contrast or intimacy—or whether silence, action and sound are stronger.

There is no preferred dialogue quantity by default.

Not every beat needs a dramatic relationship advance. Some exist for rhythm, realism, place identity or time flow.

## 7. Generation segment layer

Use this layer when the work will feed an AI-video pipeline.

A generation segment is not the same as a shot. It is a practical production unit that may contain several compatible shots or action beats.

Typical target:
- often 5–10 seconds,
- often 6–8 seconds,
- longer or shorter is acceptable when coherence and downstream model behavior justify it.

Recommended fields:

| Field | Meaning |
|---|---|
| Segment ID | Production unit identifier |
| Duration target | Intended generated clip length |
| Concrete location / activity | Exact scene and action context |
| Segment objective | Why this segment exists |
| Included Shot IDs | Director shots grouped inside |
| Segment mode | Multi-shot or continuous-take |
| Start state | Character/action/prop state at entry |
| Action progression | Internal beat sequence |
| End state | State that hands off to next segment |
| Camera logic | Coherent visual approach |
| Continuity anchor | Prop, position, direction, wardrobe, light |
| Sound continuity | Dialogue/ambience/music bridge |
| Transition in/out | Relationship to adjacent segments |
| Generation note | Downstream practical constraint |

A segment should feel like one coherent moment, not unrelated scenes bundled for convenience.

## 8. Director shooting script layer

### Default visible storyboard table

For a complete Vlog director script, prefer:

| 时间 | 片段 / 具体场景与事件 | 景别与镜头 | **画面与表演** | 摄影与剪辑 | 声音 |
|---|---|---|---|---|---|

**“画面与表演” is the primary storytelling field.**

Its detail should be proportional to the shot:
- an important reaction scene may need a rich action paragraph,
- a 1-second insert or connective detail can be concise,
- a quiet hold may intentionally contain little movement.

### What “画面与表演” can include

For important shots, consider:
- opening positions/state,
- trigger,
- visible action progression,
- who initiates,
- partner reaction,
- eye-line / micro-expression,
- prop/environment interaction,
- relationship behavior,
- end state / cut cue.

Do not turn this into a form-filling exercise. Include what is necessary to make the shot playable.

Cross-reference only: `performance-writing.md`. Load it only when selected by `reference-router.md` for the current task/stage.

### Expanded internal shot fields

When production detail is needed, the same shot may additionally expose:

| Field | Meaning |
|---|---|
| Shot ID | Sequential identifier |
| Segment ID | Parent generation segment when applicable |
| Duration | Expected screen time in final edit |
| Narrative purpose | Why this shot exists |
| Concrete location/activity | Physical scene and actual event |
| Shot size | Close / detail / medium / wide etc. |
| Camera position | Eye-level, side, over-shoulder, follow etc. |
| Camera movement | Static, handheld, follow, pan etc. |
| Character blocking | Where both people are and how they move |
| Picture & Performance | Observable action/reaction description |
| Environment/prop | Physical anchors |
| Enter/exit state | Useful continuity information |
| Sound | Dialogue, ambience, music, SFX |
| Edit logic | Why/how to cut |
| Continuity note | Direction, prop, position, time, wardrobe |
| Performance note | Extra acting constraint if necessary |

Do not replace a meaningful Picture & Performance description with shallow labels such as “Action: smiles / Reaction: smiles.”

## 9. Editing strategy

Cover what matters:
- cut rhythm,
- pacing changes,
- montage density,
- use of generated source segments,
- where ambient sound should breathe,
- music function,
- sound bridges,
- transition logic,
- ending hold.

Hard cuts are often effective for Vlog work, but use stylized transitions if the concept benefits from them.

## 10. Sound strategy

Possible layers:
- music bed,
- natural dialogue,
- laughter,
- footsteps,
- ride machinery,
- station announcements,
- street ambience,
- food packaging,
- transportation,
- rain,
- waves,
- crowd,
- fireworks.

Environmental sound can create intimacy and realism.

## 11. Performance direction

Prefer behavior over adjectives.

Stronger:
- “安全压杆扣下后，她低头拉两下确认锁紧；列车开始滑出站台时才下意识抓住他的前臂。他先盯着前方，等她抓紧后才侧头看一眼；她发现后瞪他一下，但手没松。”

Weaker:
- “女生害怕，男生宠溺地看她。”

Useful tools include:
- incomplete gestures,
- delayed reactions,
- overlapping behavior,
- looking away,
- practical actions continuing during conversation,
- physical behavior constrained by the actual location/activity.

Not every shot requires all of these.

## 12. Handoff to downstream prompt skills

When another skill will generate image/video prompts, provide a clean blueprint at **segment level and shot level**.

Segment handoff can include:
- Segment ID,
- duration target,
- concrete scene/activity,
- mode,
- action progression,
- camera logic,
- start/end state,
- continuity anchors.

Shot handoff can include:
- Shot ID,
- duration in final edit,
- shot size,
- framing,
- camera motion,
- concrete environment,
- Picture & Performance description,
- emotional goal,
- continuity constraints.

Do not over-specify model syntax or prompt engineering unless explicitly requested.
