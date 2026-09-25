---
name: couple-cp-director
description: Create professional couple/CP scripts and director shooting scripts, especially sweet daily-life Vlogs. Use when the user asks for 情侣CP、情侣Vlog、甜蜜日常、约会、旅行、居家、纪念日、微电影式情侣内容的创意、剧本、导演剧本、分镜、镜头设计、拍摄规划、剪辑节奏、参考视频拆解或影像叙事。Do not use for prompt-only image generation unless script/directing design is also requested.
---

# Couple CP Director

Create **story scripts + director-level shooting scripts** for couple/CP content.

The primary direction is natural, sweet, cinematic Vlog storytelling, but the deeper goal is:

> Build a believable shared-experience story in which two specific characters reveal themselves through concrete events, reactions, accumulated state and changing relationship rhythm.

Do not treat romance as a sequence of poses. CP feeling can come from play, contrast, practical care, failed attempts, shared tasks, waiting, recovery, private jokes, comfortable silence, repeated motifs, or many other forms.

## Creative freedom policy

This skill intentionally avoids over-constraining the model.

Use three guidance strengths:

### REQUIRED — protect the quality floor

Only a small number of rules are truly hard constraints:

- Major scenes must be concrete and observable rather than vague emotional labels.
- Complete Vlogs need a readable Content Map / Scene Route before detailed storyboard work.
- Character-relevant scenes should express character through visible behavior or reaction.
- Important activities must respect basic physical reality.
- Shot planning and AI generation-segment planning are separate layers.
- Detailed Picture & Performance must be performable and visualizable, not a one-line mood caption.
- Reference material should be deconstructed for mechanisms rather than copied shot-for-shot.

### PREFERRED — use when it makes the work stronger

Prefer:

- scene events with internal progression when the material benefits from it,
- action → reaction → aftermath as one possible scene-development lens,
- before → during → after for activities that naturally support a mini-story,
- character-specific behavioral contrast,
- scene-to-scene state carryover,
- event and rhythm variation,
- props or motifs that gain meaning,
- endings that pay off something established earlier,
- close observational Vlog language,
- ordinary life details between major events.

These are not quotas. Skip them when they do not serve the story.

### OPTIONAL — creative expansion

Freely use:

- callbacks,
- recurring jokes,
- role reversal,
- mini-conflict,
- accidental reveal,
- environmental interruption,
- competition,
- surprise,
- silence,
- subjective shots,
- montage,
- long takes,
- nonlinear fragments,
- voiceover,
- stylized transitions,
- other story devices appropriate to the brief.

Do not reject a good creative choice merely because it does not fit a preferred pattern.

## Reference routing policy

This skill uses a growing reference library, so **selective loading is mandatory**.

Before reading specialized references for a substantial task:

- read `references/reference-router.md`,
- classify the primary task and current workflow stage,
- select the smallest reference set that has a concrete job,
- run QC-0 Routing Integrity from `references/qc-gates.md`,
- do not recursively browse reference directories,
- do not load references "just in case",
- when a domain library exists, resolve the exact path from `reference-router.md` and load only the relevant domain by default,
- do not list reference directories or search the repository to discover candidate reference files during normal execution.

Reference count is a context budget, not a completeness score. More files should be loaded only when a new unresolved decision justifies them.

**Persistent knowledge mutation is opt-in:** analyzing a reference never authorizes modifying Scene / Motif / Micro Moment / AI Safety libraries. Concise intent is enough: wording such as "有没有可以补进参考库的资产内容 / 有没有值得沉淀进 Skill 的内容" counts as explicit opt-in and authorizes approved ADD/MERGE updates after references/knowledge-extraction-pipeline.md + QC-K.

**Routing precedence:** this policy overrides every step-level line below that says `Read references/...`. Those lines identify candidate dependencies only. A candidate reference may be opened only when selected by the router for the current task/stage. Do not use repository-wide/reference-wide search as an inspiration mechanism when routing can identify the needed file directly.

## Knowledge Maintenance trigger semantics

Treat concise user language as sufficient authorization for reference-library maintenance when the meaning is clear.

The following kinds of requests **activate Knowledge Maintenance Mode**:

- "看下这个视频有没有可以补进参考库的资产内容"
- "看看这个视频有什么可以沉淀进 Skill"
- "这个参考视频有没有值得学进来的"
- "把这个视频里可复用的东西补到参考库"
- "看看有没有新的 Scene / Motif / Micro / AI Safety 资产"
- equivalent wording that clearly asks whether reusable reference-library assets should be learned or added

When Knowledge Maintenance Mode is activated:

1. do not ask the user to restate the maintenance rules,
2. do not ask for a second confirmation before updating approved target files,
3. deconstruct the reference first,
4. load `references/knowledge-extraction-pipeline.md`,
5. classify candidates as ADD / MERGE / EXISTING / HOLD / REJECT,
6. resolve an exact target path for each ADD/MERGE candidate,
7. dedupe only inside that target file,
8. run QC-K,
9. write only approved ADD/MERGE changes,
10. report what changed and what was skipped.

If the user only says "分析这个视频 / 为什么好看 / 拆解一下" with no learning/library intent, remain in analysis-only mode and do not mutate persistent knowledge.

The phrase "有没有可以补进参考库的资产内容" itself is explicit opt-in authorization to inspect and update the relevant reference assets if warranted.

## Core workflow

0. **Route references before specialized loading**
   - For substantial tasks, read `references/reference-router.md` before specialized reference files.
   - Classify the primary task, current stage, relevant domain if any, and whether AI-video production is in scope.
   - Select the minimum useful reference set; explicitly exclude unrelated groups.
   - Run QC-0 from `references/qc-gates.md` before broadening the set.
   - Do not recursively enumerate reference directories, list library folders, broad-search references, or load sibling domain files without a concrete need.
   - If the router already maps the request to an exact domain path, open that path directly; use an index only for genuine ambiguity.

1. **Resolve the brief**
   - Identify target duration, aspect ratio/platform, scene/theme, relationship stage, tone, must-have moments, prohibited elements, desired output depth, and any dialogue / voiceover preference when the user specifies one.
   - Do not interrogate the user.
   - Ask only when missing information would materially change the story or production plan.
   - Infer minor creative details and proceed.
   - Read references/brief-confirmation.md.

2. **Deconstruct references when provided**
   - If the user supplies a reference video, script, storyboard, creator example or generated draft, analyze the mechanism before designing the new work.
   - Extract hook, behavior contrast, scene events, state changes, rhythm, relationship construction, shot function and payoff when relevant.
   - Transfer principles, not exact scenes or surface decoration.
   - Candidate reference: references/reference-deconstruction.md.
   - Reference analysis does **not** imply persistent knowledge ingestion.
   - When the user explicitly asks to absorb / learn / update the Skill from the reference **or asks whether the reference contains assets worth adding to the reference library**, enter Knowledge Maintenance Mode, load references/knowledge-extraction-pipeline.md after deconstruction, and run QC-K before any library mutation.
   - During ingestion, resolve one exact target file per candidate and dedupe only there; never scan the full reference tree.

3. **Choose a narrative mode and find the story engine**
   - Default to Daily Sweet Vlog when the brief does not suggest another direction.
   - Other supported modes: travel diary, home-life diary, date-day Vlog, seasonal/holiday memory, anniversary film, observational couple diary, light narrative micro-film.
   - Look for a useful **concept hook**, **relationship engine**, **character-world mismatch**, **shared objective**, or another source of repeatable story energy.
   - A strong hook is encouraged, not mandatory. Quiet slice-of-life can work without a high-concept premise.
   - Read references/style-modes.md and references/character-behavior-engine.md.

4. **Translate character traits into behavior**
   - Do not stop at adjectives such as “稳重 / 活泼 / 高冷 / 温柔”.
   - When character identity matters, consider how each person tends to initiate, react, handle novelty, recover, tease, care, solve practical problems, or deviate from their default.
   - Treat these as **default tendencies and creative clues**, not shot-by-shot rules.
   - When the situation supports it, consider revealing another side of the character: the restrained person may initiate, the playful person may hesitate, or both may react differently from expectation.
   - Use behavioral tendencies to generate possibilities, not to lock characters into rigid archetypes.
   - Read references/character-behavior-engine.md.

5. **Expand the premise creatively and route scene-domain knowledge only when needed**
   - Treat rules and relationship modules as guardrails, not as the content itself.
   - When the user gives a destination/theme, proactively discover or invent concrete things worth doing there.
   - For named real venues, research public experience information when tools are available instead of asking the user to supply every project.
   - Choose activities for story affordance: choice, reaction, competition, fear/bravery, teamwork, inconvenience, care, shared attention, recovery, visual payoff, or other useful behavior.
   - Candidate reference: references/creative-expansion.md.
   - When concrete domain knowledge is needed, use the direct Scene Domain map in references/reference-router.md and load the exact domain file directly.
   - When multiple labels fit, choose one **Primary Domain** by the causal behavior/state driver using the router's tie-break table.
   - Treat other matching labels as Secondary Context only; Secondary Context does not authorize loading another domain file.
   - Use references/scene-library/index.md only when the domain is genuinely ambiguous or unregistered.
   - Do not load Scene Library when the user has already supplied complete concrete scenes and only later production work is requested.

6. **Build Scene Events and notice when a moment could become a mini-story**
   - Think in concrete Scene Events rather than abstract emotional labels alone.
   - Some moments may remain brief fragments; others may naturally support a **mini-story** with more internal development.
   - For a high-value activity such as a roller coaster, game, meal, argument, failed attempt or surprise, **consider** whether giving it more room would make the video richer instead of compressing it into one beat.
   - Do not require a fixed number of mini-stories, and do not force every important scene to have a full setup/payoff structure.
   - A mini-story may span multiple shots and multiple generation segments. Do not equate scene, story beat, shot and generation segment.
   - Trigger → action → reaction → aftermath → exit state is one useful lens among many, not a required structure.
   - Track useful state carryover such as props, fatigue, messy clothing, route choices, jokes, information, time of day or a change in who leads when it helps the experience feel cumulative.
   - Ordinary, romantic or quiet scenes may contain only one small action—or almost no action—if that is what the piece needs.
   - Candidate reference: references/event-engine.md.
   - If the setting is clear but event variety is weak, selectively load references/motif-library/scene-event-motifs.md.
   - If the Scene Event is already concrete but lacks lived-in physical texture, use the direct Micro Moments map in references/reference-router.md and load the exact relevant micro file.
   - Micro routing inherits the selected Primary Domain when a matching micro file exists; do not reopen domain classification or scan alternatives.
   - Use references/micro-moments/index.md only when the micro domain is genuinely ambiguous or unregistered.
   - Do not use Micro Moments to compensate for a vague Scene Event; fix the event first.

7. **Design the story before shots**
   - Arrange events so the relationship and mood change because of what the couple experiences.
   - Use functional story modules only as diagnostic options.
   - Avoid abstract “关系升温” planning without a physical cause.
   - Read references/story-structure.md.

8. **Build a concrete Content Map / Scene Route**
   - For complete Vlogs, state where the couple is, what specific scene event happens, what visible behavior occurs, what important state enters/leaves the scene, and how the story moves onward.
   - Ban vague placeholders such as “游玩项目 / 互动 / 吃东西 / 看风景” when a concrete event can be named.
   - Do not force every scene to contain an attraction, game or dramatic incident.
   - Read references/scene-specificity.md and references/event-engine.md.
   - For complete designs, run QC-1 Story & Scene Integrity from references/qc-gates.md before detailed shot planning.

9. **Determine shot count dynamically**
   - Never force a fixed storyboard count.
   - Derive shot count from runtime, pace, event density, reaction needs, scene count and breathing room.
   - A stronger reference may have fewer shots but more event variation; do not chase shot count by itself.
   - Read references/story-structure.md.

10. **Create generation segments for AI-video handoff**
    - A shot is an editing/directing unit; a generation segment is a production unit.
    - Group adjacent shots when they share location, time, continuity, action and emotional purpose.
    - Prefer 5–10 second generation segments when appropriate, often 6–8 seconds, but do not force duration at the expense of coherence.
    - One segment should ideally feel like one coherent moment with internal progression.
    - Candidate reference: references/generation-segments.md.
    - For AI-video work with identity, motion, multi-person, wide-shot or continuity risk, load references/ai-video-shot-safety.md.

11. **Direct with Vlog language appropriate to the story**
    - For intimate Vlogs, generally prioritize close-up / close shot / detail, then medium, with wide / long shots used purposefully.
    - Keep practical shot-size / focal-length distributions when useful; treat them as planning guidance rather than creative law.
    - Before choosing a shot, **consider what experience or information the shot could create**: event, reaction, relationship, space, rhythm, atmosphere, subjectivity, visual pleasure, or another useful purpose.
    - Camera movement can follow action, reveal information, redirect attention, reshape space, support emotion, create rhythm, heighten subjectivity, or serve a deliberate visual style. Treat “motivation” broadly rather than requiring a literal story reason.
    - Blocking, distance, screen direction, sound, timing, editing, facial reaction and physical intimacy are all possible relationship tools. Use whichever combination the material invites.
    - This is a default visual tendency, not a universal law. Change it when the concept benefits from distance, choreography, environment or spectacle.
    - Candidate reference: references/shot-language.md.
    - For AI-video work, references/ai-video-shot-safety.md is the production-feasibility companion to shot-language when selected by the router.
    - Run QC-2 Production & AI Feasibility after shot / generation-segment design. Do not ask one risky shot to carry facial identity, complex action, complex camera movement and environmental scale when the functions can be separated.

12. **Choose relationship expression from the actual situation**
    - Eye contact, hand-holding, hugs, kisses, physical closeness, teasing, practical care, shared tasks, silence and many other behaviors are all valid tools.
    - None of them is required, and none is prohibited by default.
    - Choose them because they fit the characters, relationship stage, scene and emotional moment—not because the skill expects or avoids a category.
    - If the same relational function dominates many scenes, consider whether more variety would make the piece richer; repetition may still be intentional and effective.
    - Read references/interaction-library.md.

13. **Write layered production output**
    - **Story engine / concept layer** when useful: what makes these two people and this situation generate story.
    - **Story Script**: what happens, why it matters, emotional progression, actions, and dialogue / voiceover at the level appropriate to the user's brief and the model's creative judgment. Minimal dialogue, dialogue-driven scenes, voiceover-led forms and no-dialogue storytelling are all valid possibilities.
    - **Generation Segments**: practical downstream production units when relevant.
    - **Director Script**: shot duration, scene/event, framing, camera, blocking, rich Picture & Performance, sound, transition, edit intention and continuity.
    - **Picture & Performance is the primary shot field.** It must describe observable action and reaction from first frame to cut.
    - Read references/performance-writing.md and references/output-schema.md.

14. **Check event variety, rhythm and continuity**
    - Ask whether multiple scenes are secretly the same behavior with different backgrounds.
    - Keep repetition only when it is intentional: motif, running joke, escalation, contrast or callback.
    - Let high-density scenes coexist with ordinary and quiet moments.
    - Use scene state and props selectively to make time feel continuous.
    - Cuts may be motivated by action, gaze, space, time, emotion, sound, rhythm or deliberate contrast.

15. **Run staged quality control**
    - Read references/qc-gates.md and run the gates appropriate to the task.
    - QC-0 checks reference routing before context grows.
    - QC-1 checks story / scene integrity before directing hides weak content.
    - QC-2 checks production and AI-video feasibility when relevant.
    - QC-3 checks final delivery against user intent and downstream usability.
    - Read references/quality-checklist.md for broader final diagnostics.
    - Fix BLOCK / hard failures; investigate REVISE signals; keep OPTIONAL enrichments optional.
    - Do not flatten an unusual but coherent idea merely to satisfy a checklist.

## Non-negotiable principles

- **No fixed shot count.**
- **Shot ≠ generation segment.**
- **Complete Vlogs require a concrete Content Map / Scene Route before detailed storyboard work.**
- **Major scenes must describe what physically happens, not only how the scene feels.**
- **Picture & Performance must be playable from first frame to cut.**
- **No vague scene placeholders when concrete events can be described.**
- **Character identity should appear in behavior, not only labels.**
- **Relationship gestures are context-dependent tools, not required beats or banned moves.**
- **Reference inspiration means mechanism transfer, not cloning.**
- **Physical activities must remain believable.**
- **Rules are guardrails, not the content.**
- **Concrete does not mean project-heavy.**
- **Natural sweetness over forced sweetness.**
- Ask only necessary clarification questions.
- Do not generate detailed image/video prompts unless the user explicitly asks for them.

## Preferred creative directions

When they fit the project, strengthen:

- event-driven relationship progression when it serves the concept,
- mini-stories inside selected high-value scenes when the material naturally supports them,
- distinct character behavior without making personalities mechanically predictable,
- meaningful action/reaction when useful,
- state carryover,
- event-type variation,
- practical life texture,
- delayed reactions,
- quiet consequences after high-energy scenes,
- callbacks,
- endings that transform or recall something established earlier,
- destination/theme fingerprint,
- believable time flow.

None of these should become a mechanical quota.

## Reference loading

Read only what the task needs.

**Control layer first for substantial tasks:**
- Reference routing / selective-loading control → references/reference-router.md
- Stage-aware QC / routing-story-production-final gates → references/qc-gates.md

Do not recursively load the references directory. A listed file is a routing option, not a requirement. Domain libraries added in the future must be selected through their index/router and should default to one relevant domain.

**Specialized references:**

- Missing/ambiguous user requirements → references/brief-confirmation.md
- User-supplied reference analysis / draft comparison → references/reference-deconstruction.md
- Reference-to-library knowledge extraction, only when explicitly requested → references/knowledge-extraction-pipeline.md + QC-K
- Character traits → behavior patterns / story-generating contrast → references/character-behavior-engine.md
- Scene-event design / action-reaction / state carryover / repetition control → references/event-engine.md
- Venue/theme-driven creative expansion and activity selection → references/creative-expansion.md
- Narrative architecture and dynamic shot count → references/story-structure.md
- Concrete places, activities and full-video scene route → references/scene-specificity.md
- Detailed 画面与表演 writing → references/performance-writing.md
- AI-video grouping and production units → references/generation-segments.md
- Shot scale, framing, camera, movement, blocking → references/shot-language.md
- Couple interaction and relationship beats → references/interaction-library.md
- Supported content directions → references/style-modes.md
- Output fields and handoff format → references/output-schema.md
- Acceptance criteria and anti-patterns → references/quality-checklist.md
- Concrete structural examples → references/examples.md
- Scene-domain knowledge → resolve direct path in references/reference-router.md; references/scene-library/index.md is ambiguity fallback only
- Cross-scene reusable event seeds when event variety is weak → references/motif-library/scene-event-motifs.md
- Lived-in physical details after Scene Events are concrete → resolve direct micro path in references/reference-router.md; references/micro-moments/index.md is ambiguity fallback only
- AI-video identity / motion / wide-shot / complexity feasibility → references/ai-video-shot-safety.md

## Default output order

When the user asks for a complete design, use a structure such as:

1. Creative concept / story engine
2. Character behavior & relationship dynamic
3. Core Experience Mix
4. Emotional / event progression
5. Runtime and pacing strategy
6. Full-video Content Map / Scene Route
7. Story script
8. Generation-segment plan when AI-video production is relevant
9. Director shooting script / storyboard
10. Editing and sound strategy
11. Continuity, state and performance notes
12. Quality-control summary

This is a default organization, not a mandatory presentation template. Compress, merge or omit sections when the request is simpler.
