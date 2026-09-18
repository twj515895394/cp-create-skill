# Output Schema

## 1. Creative overview

Include:
- title / working concept,
- one-sentence premise,
- relationship dynamic,
- tone,
- visual feeling,
- emotional destination.

## 2. Full-video Content Map / Scene Route — mandatory for complete Vlogs

Before the detailed storyboard, summarize **what the entire video actually contains**.

The reader must be able to understand the full runtime without reading the shot table.

Recommended fields:

| Field | Requirement |
|---|---|
| Time range | Approximate section runtime |
| Concrete place | Exact type of place within the overall destination |
| Concrete activity / project | What the couple actually does |
| Relationship beat | What happens between them |
| Visual anchor | Distinctive physical object/environment |
| Transition | How the story moves onward |

Examples of acceptable specificity:
- 乐园入口检票区 → 入园后看导览地图
- 过山车排队区/上车站台 → 上车、压安全杆、发车、俯冲反应
- 花车巡游路线旁 → 找位置、指向花车、交换反应
- 爆米花摊 → 点单、接桶、边走边抢着吃
- 喷泉休息区 → 坐下整理购物袋、递水
- 烟花观赏区 → 等候、抬头、共同看烟花

Do not write vague labels such as “游玩”“互动”“吃东西”“看景色”.

Read `scene-specificity.md`.

## 3. Runtime strategy

Include:
- total runtime,
- pace type,
- estimated shot-count range,
- estimated generation-segment count when AI-video handoff is relevant,
- why the ranges fit,
- where the piece accelerates,
- where it slows,
- expected climax / payoff.

Do not lock an exact shot count until the story and scene route are designed.

## 4. Story script layer

Use a simple sequence structure.

Recommended fields:
- sequence / beat,
- concrete location and time,
- concrete activity,
- what happens,
- relationship meaning,
- emotional state,
- optional dialogue / voiceover,
- transition to next beat.

This layer should be readable even without camera terminology.

## 5. Generation segment layer

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
| Concrete location / activity | Exact scene and action context |
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

## 6. Director shooting script layer

### Default visible storyboard table

For a complete Vlog director script, prefer this compact production table:

| 时间 | 片段 / 具体场景与项目 | 景别与镜头 | **画面与表演** | 摄影与剪辑 | 声音 |
|---|---|---|---|---|---|

**“画面与表演” is the most important and most detailed column.**

It should usually contain substantially more information than the other columns.

### What “画面与表演” must contain

Write it as a compact action paragraph, not a caption. It should make the shot visualizable from first frame to cut.

Normally include:
- opening positions/state of both characters,
- the exact visible action sequence,
- who initiates,
- partner reaction,
- eye-line and meaningful micro-expression,
- prop/environment interaction,
- relationship behavior,
- end state / cut cue.

Read `performance-writing.md`.

### Expanded internal shot fields

When production detail is needed, the same shot may additionally expose:

| Field | Meaning |
|---|---|
| Shot ID | Sequential identifier |
| Segment ID | Parent generation segment when applicable |
| Duration | Expected screen time in final edit |
| Story module | Functional role |
| Narrative purpose | Why this shot exists |
| Concrete location/activity | Physical scene and actual project |
| Shot size | Close / detail / medium / wide etc. |
| Camera position | Eye-level, side, over-shoulder, follow etc. |
| Camera movement | Static, handheld, follow, pan etc. |
| Character blocking | Where both people are and how they move |
| Picture & Performance | Complete observable action/reaction paragraph |
| Environment/prop | Physical anchors |
| Sound | Dialogue, ambience, music, SFX |
| Edit logic | Why/how to cut |
| Continuity note | Direction, prop, position, time, wardrobe |
| Performance note | Extra acting constraint if necessary |

Do not replace the rich Picture & Performance paragraph with separate shallow fields such as “Action: smiles / Reaction: smiles.”

## 7. Editing strategy

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

## 8. Sound strategy

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

Environmental sound increases realism and should not always be buried by music.

## 9. Performance direction

Give behavior-based direction instead of emotional adjectives only.

Better:
- “安全压杆扣下后，她低头拉两下确认锁紧；列车开始滑出站台时才下意识抓住男生前臂。男生先故意盯着前方，等她抓紧后才侧头笑，她发现后瞪他一眼但手没松。”

Weaker:
- “女生害怕，男生宠溺地看她。”

Prefer:
- incomplete gestures,
- delayed reactions,
- overlapping behavior,
- looking away,
- practical actions continuing during conversation,
- physical behavior constrained by the actual location/activity.

## 10. Handoff to downstream prompt skills

When another skill will generate image/video prompts, provide a clean blueprint at **segment level and shot level**.

Segment handoff:
- Segment ID,
- duration target,
- concrete scene/activity,
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
- concrete environment,
- complete Picture & Performance description,
- emotional goal,
- continuity constraints.

Do not over-specify model syntax or prompt engineering in this skill unless explicitly requested.
