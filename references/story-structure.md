# Story Structure and Dynamic Shot Planning

## 1. Principle

Do not start by deciding how many shots the video has.

Start with:
1. total runtime,
2. relationship premise,
3. emotional arc,
4. number of locations,
5. action density,
6. pace,
7. required breathing room,
8. climax and ending.

Only then estimate shot count.

The storyboard count is a consequence of the story, not a template constant.

## 2. Runtime-to-shot planning

Use average shot duration only as an initial planning tool, never as a rigid formula.

Typical ranges:

| Mode | Typical average shot duration |
|---|---:|
| Fast playful Vlog | 1.2–2.4 s |
| Standard sweet daily Vlog | 2.0–3.2 s |
| Gentle healing Vlog | 2.8–4.5 s |
| Quiet cinematic memory | 3.5–6.0 s |

Approximate planning ranges:

| Total runtime | Common shot-count range |
|---|---:|
| 10–15 s | 4–8 |
| 20–30 s | 8–14 |
| 35–45 s | 12–20 |
| 50–60 s | 16–26 |
| 70–90 s | 22–40 |
| 90 s+ | Determine from structure, not a fixed ceiling |

These are guidance bands, not quotas.

Increase shot count when:
- action is fast,
- there are several locations,
- multiple reactions matter,
- the story contains playful chase or activity montage,
- time-of-day progression must be communicated,
- several relationship beats need separation.

Decrease shot count when:
- the mood is quiet,
- intimacy depends on lingering observation,
- locations are limited,
- emotional pauses matter,
- the ending needs room to breathe.

## 3. Functional story modules

These modules are **analytical lenses, not a recipe**.

Never generate a story by ticking them off in order. Start from concrete activities/events first, then use the modules to check whether the relationship feels readable and varied.

A strong couple Vlog may use several of these modules, skip others entirely, merge them, or discover different beats from the activity itself.

### A. Relationship entry
Purpose:
- establish the couple,
- show the current mood,
- communicate who initiates and who reacts.

Possible beats:
- meeting,
- one person entering frame,
- immediate playful reaction,
- checking the destination together,
- shared preparation.

### B. Shared departure
Purpose:
- turn two people into a shared activity.

Possible beats:
- choosing a route,
- entering a venue,
- boarding transport,
- ordering together,
- deciding what to do first.

### C. Shared experience
Purpose:
- create the day’s main activity.

Examples:
- eating,
- exploring,
- riding,
- cooking,
- shopping,
- cycling,
- watching a performance,
- trying something for the first time.

### D. Playful interaction
Purpose:
- reveal chemistry.

Examples:
- teasing,
- chasing,
- stealing a bite,
- mock annoyance,
- comparing reactions,
- spontaneous laughter.

### E. Life-detail beat
Purpose:
- make the relationship feel lived-in rather than staged.

Examples:
- holding bags,
- waiting at a crossing,
- checking directions,
- fixing a sleeve,
- sitting down tired,
- sharing a snack,
- finding something in a bag.

### F. Care / companionship beat
Purpose:
- shift the relationship from “two people having fun” to “two people noticing each other.”

Examples:
- passing water,
- opening a bottle,
- holding belongings,
- adjusting clothing,
- waiting,
- checking whether the other person is tired,
- offering food,
- giving space,
- turning back to find the other person.

### G. Quiet emotional deceleration
Purpose:
- let the story breathe before the ending.

Examples:
- walking side by side,
- sitting quietly,
- watching lights,
- resting,
- listening to ambient sound,
- looking in the same direction.

### H. Romantic payoff
Purpose:
- create emotional memory rather than merely ending the footage.

Examples:
- shared sunset,
- night lights,
- fireworks,
- ocean,
- city view,
- walking away together,
- quiet two-shot in a meaningful location.

## 4. Emotional architecture

Common emotional shapes:

### Standard sweet Vlog
light → playful → active → lived-in → caring → quiet → romantic

### Energetic date Vlog
immediate fun → escalating activity → reaction peak → cooldown → soft intimacy → visual payoff

### Healing Vlog
calm → small discovery → warm interaction → care → silence → gentle closure

### Nostalgic memory film
ordinary fragments → recurring motif → time progression → emotional recognition → quiet final image

Do not maintain one emotional intensity throughout the entire video.

## 5. Story causality

Avoid random montage.

Each new shot should connect through at least one of:
- action continuation,
- gaze direction,
- spatial movement,
- time progression,
- object continuity,
- emotional progression,
- sound bridge,
- rhythmic contrast.

A sequence should answer:
- Why are they here?
- What are they doing together?
- What changes between them or in the mood?
- Why does the ending feel earned?

## 6. Ending design

A good ending should feel like the natural emotional destination of the piece.

Preferred ending patterns:
- two people looking at the same thing,
- walking away together,
- quiet shared frame,
- close emotional reaction followed by a restrained environment reveal,
- small action resolving into stillness.

Avoid:
- arbitrary last shot,
- sudden cut after high action,
- generic hug inserted only because it is “romantic,”
- scenery with no relationship connection.


## 7. Shot planning versus generation planning

Director-level shot duration and downstream AI-video clip duration should be planned separately.

A final edit may use:
- a 1.5-second reaction,
- a 2-second hand detail,
- a 3-second two-person close shot,

without requiring three separate generated clips.

When adjacent shots belong to the same location, time, continuous action, and emotional beat, group them into a **5–10 second generation segment** while preserving their shot-level edit intentions.

The preferred hierarchy is:

Story → Sequence / Scene → Generation Segment → Shot / Micro-shot → Action / Reaction

This preserves professional directing detail while making the plan practical for video-generation workflows.

Cross-reference only: `generation-segments.md` for grouping rules. Load it only when selected by `reference-router.md` for the current task/stage.


## 8. Scene route before storyboard

For a complete Vlog, do not jump directly from concept to shot table.

First build a concrete scene route that states:
- where the couple is,
- what exact activity/project happens there,
- what relationship beat happens,
- what physical visual anchors are present,
- how the story moves to the next place.

This route is mandatory because a technically detailed shot table can still fail if the viewer cannot understand what the 30/60/90-second video actually contains.

For activity-based Vlogs, vague nouns are not acceptable.

Weak:
- 游乐园游玩
- 体验项目
- 吃东西
- 看表演

Better:
- 过山车排队区与上车站台：两人入座、压下安全杆、等待发车、第一次俯冲的真实反应
- 花车巡游路线旁：在人群中找到视线位置，女生先注意到花车并指给男生看
- 爆米花摊：点焦糖爆米花，女生先偷吃一把，男生发现后把桶换到另一侧
- 喷泉休息区：坐下整理购物袋，男生拧开水递过去

Cross-reference only: `scene-specificity.md`. Load it only when selected by `reference-router.md` for the current task/stage.

## 9. Activity realism

A scene should include enough real-world process to feel lived rather than invented.

When the story uses a recognizable activity:
- identify the physical setup,
- identify what people actually do there,
- identify realistic constraints,
- design couple interaction inside those constraints.

Do not treat an activity as a decorative background.

For example, a roller coaster is not merely:
“他们坐过山车，很刺激。”

The director plan should consider:
queue / platform / seat / restraint / dispatch / anticipation / acceleration or drop / restricted body movement / wind / post-ride reaction.

Choose only the stages needed for the runtime, but make them physically believable.


## 10. Event-driven relationship progression

Do not plan the relationship arc as abstract labels first and then paste activities underneath.

Preferred process:
1. choose concrete activities/events,
2. identify what each activity physically makes the characters do,
3. derive action/reaction and personality contrast,
4. decide how that experience changes the relationship temperature,
5. place the events into an emotional order.

Example:
- A competitive game can reveal teasing and competitiveness.
- A thrill ride can expose involuntary fear/bravery contrast and physical reliance.
- A snack/rest beat can turn public excitement into quieter familiarity.
- A night show can provide shared attention and emotional closure.

The “升温” is the consequence of these events.

## 11. Anti-formula test

After outlining the story, ask:
- Does every major beat come from something the couple is actually doing?
- Could the same bullet list be pasted onto a café, beach, amusement park, and shopping mall with almost no change?

If yes, the outline is too abstract. Return to venue/activity design and rewrite.

Cross-reference only: `creative-expansion.md`. Load it only when selected by `reference-router.md` for the current task/stage.
