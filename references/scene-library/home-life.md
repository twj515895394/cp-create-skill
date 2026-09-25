# Scene Library — Home Life

## Scope

Use for ordinary couple life inside a home: bedroom, bathroom/vanity, kitchen, dining area, living room, balcony/window, entryway, laundry/storage and bedtime transitions.

Route here when **domestic life itself** is the environment. If the main story engine is completing a task together—packing, major cleaning, assembling furniture, repairing—consider `shared-tasks.md` instead.

## Domain principle

Home-life realism comes from:

- unfinished actions,
- personal objects,
- habitual asymmetry,
- shared space,
- low-stakes practical coordination,
- quiet time between obvious "romantic" moments.

The home should feel inhabited, not staged for a lifestyle ad.

---

## Entryway — leaving / returning

### Realistic activity
- look for keys,
- put on/remove shoes,
- hang or drop outerwear,
- place bags,
- check pockets,
- return for a forgotten item,
- wait for the other person to finish getting ready.

### Visual anchors
- shoe cabinet,
- key tray,
- hooks,
- tote/backpack,
- umbrella,
- delivery/package,
- mirror near door.

### Useful Motifs
- prepare,
- search,
- wait,
- forget/miss,
- handoff.

### Relationship affordances
- one is ready first and waits,
- one carries practical items,
- one notices the other forgot something,
- one holds the door while the other handles shoes/bags.

### State possibilities
- outdoor items enter/leave frame,
- bags and keys become continuity anchors,
- weather state can carry in through wet umbrella/coat.

### AI-friendly notes
- medium two-shot works well,
- shoes/keys/bag inserts are useful,
- avoid complex simultaneous bending + bag transfer + face-critical interaction in one shot.

---

## Bedroom — waking / getting ready / winding down

### Realistic activity
- wake gradually,
- silence alarm,
- sit at bed edge,
- find slippers,
- straighten bedding,
- choose clothes,
- search for phone/charger,
- read/scroll briefly,
- settle back down at night.

### Visual anchors
- bedside table,
- phone,
- charging cable,
- blanket,
- slippers,
- clothes chair,
- curtains.

### Useful Motifs
- wake/prepare,
- search,
- wait,
- observe,
- quiet companionship.

### Relationship affordances
- one wakes earlier,
- one keeps sleeping while the other moves quietly,
- one finds an item the other is looking for,
- one waits without forcing interaction.

### State possibilities
- sleepiness → alertness,
- messy bed → partially made,
- clothing state changes,
- light changes morning/night.

### AI-friendly notes
- close/medium observational framing is more reliable than full-body bed choreography,
- avoid blankets and crossed limbs becoming the main identity-critical action.

---

## Bathroom / vanity — grooming routine

### Realistic activity
- brush teeth,
- wash face,
- skincare,
- comb/dry hair,
- shave/groom,
- share mirror space,
- reach around the other for an item,
- wipe water from counter.

### Visual anchors
- mirror,
- toothbrush cup,
- towel,
- hair dryer,
- skincare bottles,
- sink,
- comb.

### Useful Motifs
- prepare,
- share space,
- search,
- wait,
- practical help.

### Relationship affordances
- one uses mirror while the other reaches for an item,
- one moves aside without verbal negotiation,
- one helps with a hard-to-see collar/hair detail afterward.

### Physical constraints
- mirrors/reflections can complicate AI consistency,
- water and many small hand objects increase generation load.

### AI-friendly notes
- use mirror only if it adds story value,
- direct face shots are safer than requiring exact front face + exact mirrored face simultaneously,
- inserts can carry toothpaste/towel/hair-dryer actions.

---

## Kitchen — everyday food preparation

### Realistic activity
- take ingredients out,
- rinse/cut/mix,
- open packaging,
- taste seasoning,
- wait for water/pan,
- move around each other,
- plate food,
- wipe small spills,
- return items to fridge.

### Visual anchors
- cutting board,
- pan/pot,
- refrigerator,
- bowl,
- towel,
- seasoning,
- kettle.

### Useful Motifs
- prepare,
- choose,
- attempt,
- fail/retry,
- share/handoff,
- practical care.

### Relationship affordances
- one cooks while the other handles small prep,
- one tastes and reacts,
- one quietly cleans while the other finishes,
- one gets in the way and is redirected.

### State possibilities
- clean ingredients → prepared food,
- countertop becomes temporarily messy,
- apron/sleeves/hands change state,
- leftovers/dishes carry into dining/cleanup.

### AI-friendly notes
- one clear action per shot is often stronger than both characters rapidly manipulating utensils,
- hands/knife/flame/water are complexity multipliers; use inserts or stable ownership,
- keep identity-critical reactions separate from intricate food manipulation when needed.

---

## Dining table — eating / lingering / clearing

### Realistic activity
- serve portions,
- sit,
- first bite,
- pass dish/drink,
- adjust bowl/plate,
- steal/share small bite,
- pause while chewing,
- continue conversation/activity,
- collect dishes afterward.

### Visual anchors
- bowls/plates,
- chopsticks/cutlery,
- cups,
- napkin,
- leftovers,
- phone placed face-down or nearby.

### Useful Motifs
- share,
- choose,
- observe,
- care,
- finish/clean up.

### Relationship affordances
- attention does not need to stay on partner,
- one can continue eating while accepting a drink/item,
- small preferences show through what is passed or avoided.

### State possibilities
- full dishes → leftovers,
- drinks reduce,
- table becomes messier then clears.

### AI-friendly notes
- table-level medium shots are stable,
- avoid repeated fork/chopstick-to-mouth actions if generation quality is weak; use reaction/hand inserts selectively.

---

## Living room — low-pressure shared time

### Realistic activity
- watch TV,
- choose something to play/watch,
- scroll/share phone,
- read,
- snack,
- game,
- fold small items,
- nap,
- sit separately but in shared space.

### Visual anchors
- sofa,
- remote,
- blanket,
- snack bowl,
- game controller,
- book,
- charging cable.

### Useful Motifs
- choose,
- share,
- compete,
- observe,
- quiet companionship,
- tiny disagreement.

### Relationship affordances
- different attention targets can still feel intimate,
- one occupies more sofa space,
- one passes remote/snack without ceremony,
- silence can carry relationship familiarity.

### State possibilities
- posture gradually relaxes,
- snack/blanket/remote ownership shifts,
- daytime becomes evening.

### AI-friendly notes
- static medium/two-shot is valuable,
- avoid forcing constant face-to-face interaction,
- object handoffs can be separated from broader body movement.

---

## Balcony / window — weather / plants / pause

### Realistic activity
- hang or collect laundry,
- water plants,
- open/close window,
- check weather,
- stand with drink,
- watch street/rain/sunset,
- bring items in because of wind/rain.

### Visual anchors
- clothes rack,
- plants,
- mug,
- curtain,
- window light,
- rain on glass.

### Useful Motifs
- observe,
- weather interruption,
- quiet companionship,
- finish/bring in.

### State possibilities
- weather changes behavior,
- laundry/plants become household continuity,
- indoor/outdoor light shift marks time.

### AI-friendly notes
- back/side-back composition works naturally,
- window reflections should not become identity-critical unless intentionally controlled.

---

## Laundry / storage — routine maintenance

### Realistic activity
- sort clothes,
- load/unload machine,
- hang/fold,
- look for a missing sock/item,
- carry basket,
- put clothes away.

### Visual anchors
- basket,
- hangers,
- folded stack,
- machine,
- closet/drawer.

### Useful Motifs
- search,
- sort/choose,
- shared task,
- finish,
- tiny mistake.

### Relationship affordances
- division of labor,
- one folds differently,
- one finds an item belonging to the other,
- quiet coordination rather than overt affection.

### AI-friendly notes
- repeated cloth deformation is moderately complex,
- use stable baskets/stacks and simple hand actions.

---

## Bedtime / lights-out transition

### Realistic activity
- plug in phones,
- set alarm,
- close curtains,
- put water near bed,
- read/scroll,
- turn off lamp,
- adjust blanket/pillow,
- settle into silence.

### Visual anchors
- lamp,
- charger,
- water glass,
- alarm screen,
- curtains,
- bedside objects.

### Useful Motifs
- finish,
- prepare,
- quiet companionship,
- observe.

### State possibilities
- room light reduces,
- phones move to charging state,
- active day resolves into stillness.

### AI-friendly notes
- low-light face identity can be less stable; keep face-critical shots controlled,
- environmental closing shot can use silhouettes/partial figures if appropriate.

---

## Home-Life QC

Before using a Home Life scene:
- Is the home being used as lived space rather than a decorative background?
- Does the activity have a concrete domestic action?
- Are props/state carried naturally?
- Is the scene relying too heavily on hugs/eye contact instead of habit and shared-space behavior?
- If the task itself becomes the story engine, should routing move to Shared Tasks instead?
