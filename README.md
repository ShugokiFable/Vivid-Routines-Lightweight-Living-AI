# Vivid Routines — Lightweight Living AI (v2.9)

A modern "living world" AI mod built for YOUR load order. Inspired by what AI
Overhaul does, built the way 2026 mods should be built: **one tiny script, zero
NPC record edits, zero patches required.** Everything is native engine AI
(packages, conditions, schedules, conditioned abilities) distributed at runtime
by SPID and SkyPatcher, and every feature is toggleable live in an MCM.

Original work — no assets, records or ini lines were copied from AI Overhaul.

---

## What's new in v2.9 — Creatures are not people

- **College atronachs stay on guard.** The College routines filtered on
  CollegeofWinterholdFaction alone, and in Skyrim creatures are NPC records
  too — so faction-member guard atronachs (e.g. from Immersive College NPCs)
  were strolling into the Frozen Hearth for an evening social. College
  Study/Social now exclude creatures, and the daedra routines skip the College
  faction entirely. (Human College members visiting the inn in the evening is
  the intended feature — toggle "College of Winterhold life" if you want it
  off.)
- **Same cleanup everywhere:** vampire routines no longer catch death hounds
  or gargoyles, necromancer rites skip skeletons and summons, foe scouts skip
  bandit dogs and hagravens, hunters' camp dogs keep their vanilla
  follow-the-owner AI, farm raids and CW sorties are people-only, and animal
  "followers" are excluded from the follower/outing/inn tier.
- No plugin changes — pure SPID filter fixes, safe to update mid-save.

## What's new in v2.8 — The big playtest fix round

- **Alias delivery retired.** The v2.1 alias quest that carried the named-NPC
  vignettes held those NPCs in quest aliases, which muted their idle chatter
  and world events (Brenuin went silent). All vignettes are plain SPID lines
  again; the quest is gone from the plugin. Bonus: the quest's "Ysolda" alias
  actually pointed at Alfhild Battle-Born — the SPID line targets the real
  Ysolda.
- **Nazeem actually reaches the Cloud District.** His v2.6 anchor was a marker
  in Japhet's Folly (a cross-worldspace search bug). Now a real Dragonsreach
  porch marker, verified in-worldspace and persistent.
- **Heimskr's audience gathers properly.** Ysolda and Brenuin now stand (no
  bench-hogging) at Heimskr's own preaching marker, facing the sermon — the old
  anchor was the non-persistent statue ref behind him (also the source of a CK
  warning).
- **Danica tends the tree instead of sitting at it** (standing work, higher
  energy, tighter radius).
- **Hunters really travel to trade.** Trade trips are hold-routed to the five
  city market plazas instead of a near-self sandbox at camp.
- **Followers calm down indoors.** Day-roam radius/energy trimmed (no more
  stair-pacing), and follower/fallback/weather packages now leave NPCs alone
  inside player homes (LocTypePlayerHouse guard).
- **Necromancer grave pilgrimages** are more common (20% → 35%) so you might
  actually witness one.
- **Header fix:** HEDR record counts now use the CK's records+groups convention
  on all four plugins — the "Form counts don't match" CK warning is gone.

## What's new in v2.6 — Iconic vignettes

- **Danica tends the Gildergreen** (midday at the tree), **Nazeem swans up to
  the Cloud District** (Dragonsreach porch), and **Heimskr draws a small crowd**
  (Ysolda and Brenuin gather at the Talos shrine to hear him preach). Original
  packages inspired by AI Overhaul's signature moments, delivered by the alias
  quest. Rides the "Named NPC flavor" toggle.

## What's new in v2.5 — Named faces & College life

- **Curated named flavor.** Delivered by the alias quest (applies from game
  start, no meeting required): **Adrianne, Ulfberth and Belethor** unwind at the
  Bannered Mare most evenings after closing their shops - a familiar regular
  crowd - and **Carlotta takes Mila** there for a Sundas family dinner, exactly
  as they discuss in vanilla dialogue. Rides the "Named NPC flavor" toggle.
- **College of Winterhold life.** Its members study in the Hall of the Elements
  by day and socialise at the Frozen Hearth in the evening, so Winterhold stops
  feeling deserted. Vanilla-anchored, so it works alone and simply has more
  faces to animate if you run a College overhaul (you do).
- **On venue modules:** travel packages need a navmesh path, so island/separate-
  worldspace "exchanges" (Solstheim, Wyrmstooth) can't be done as packages - an
  NPC would path-fail and freeze at the docks. Reachable venues (LOTD museum,
  Capital Whiterun plazas) are each a dedicated scan-and-test job; ask and I'll
  build a specific one.

## What's new in v2.4 — Wolf packs

- **Wolves hunt.** Vanilla already makes wolves attack deer, goats and elk;
  they just idled at their spawn. Now they range their territory by day
  (6:00-20:00, ~3500u) so they actually cross paths with prey - the engine's
  own predator/prey factions supply the kills. It does **not** make wolves any
  more dangerous to people, the roam is kept **out of settlements**, and nights
  are left vanilla so herds recover. Pet, follower and quest wolves are
  excluded. Own toggle on the Night Folk page (Wilderness). If wildlife ever
  feels thin, it's the first dial to turn down.

## What's new in v2.3 — Livelihoods, safety & danger toggles

- **Hunters hunt & trade.** At dawn hunters range the wilds at a jog (the
  engine's own predator/prey factions supply real kills), process the take at
  camp around midday, and - with trade trips on - head toward roads and
  settlements in the afternoon. SPID slips **hides and pelts into their
  inventories**, so the take is real, lootable and sellable, with or without
  Simple Hunting Overhaul. Bounty collectors (the "hunters" the game sends
  after *you*) and corpse records are excluded.
- **Job routines (Livelihoods page).** Farmers, miners, smiths, fishers,
  priests, inn staff, maids (`*maid*`) and lumberjacks with no work AI of
  their own get a proper workday around their home - bottom-of-stack, so
  every NPC with a real vanilla or modded schedule is untouched.
- **Necromancer rites.** 20% of necromancers trek by night to **Hamvir's
  Rest**, a wilderness burial ground far from any guarded walls; the rest
  hold local rites around their lairs. Never inside good-faction cities -
  by design, so no guard massacres.
- **Forsworn & warlock night scouts** joined the bandit scout under the same
  "Foe night routines" toggle.
- **Domestic rhythm (Phase 2).** Three daily **meal windows** (7:00/12:00/18:00)
  where people pause and eat wherever they are (Eating Animations shines);
  **Temple on Sundas** - city cohorts worship at their hold temple, kids in
  tow; **market mornings** on Morndas/Loredas around the city plazas;
  **worker weekends** - Loredas evening off around the village; and **children
  play packages** - statue kids from mods finally run around by day and sleep
  in their own beds at night (adult routines always excluded them).
- **First-visit event safety.** Scripted set-pieces that stage actors as you
  arrive (the Markarth market assassination, the Solitude execution) are now
  protected two ways: every package gained an `IsScenePackageRunning == 0`
  guard, and the specific staging principals (Margret, Weylin, Roggvir, Ahtar,
  Rorlund) are name-excluded from the two aggressive index-0 systems - weather
  shelter and meals - so rain can no longer pull them out of position.
- **Danger toggles (Hostile World page, OFF by default).** Opt-in **bandit
  farm raids** (hold-routed, farmhands can die) and **civil war camp sorties**
  (only while the war is unfinished; self-disables when it ends). Both ship
  OFF; the CW one carries a note to leave it off alongside faction-war mods
  like Stormcloaks Fight With Thalmor.
- **The SPID lazy-distribution fix (named NPCs).** SPID only distributes to
  NPCs as they load, fresh each launch - fine for local routines, but it meant
  Balgruuf's tavern evening required meeting him first each session. The four
  named-flavor packages (Balgruuf, Vignar, Elisif, Ulfric) are now delivered
  by a start-game-enabled **alias quest** (`VRAI_FlavorAliases`) holding their
  actual placed refs - applied from the moment the game loads, every session,
  no meeting required, still zero scripts. Mass distribution stays on SPID
  where laziness is harmless and self-healing.

## What's new in v2.0

- **Door bug fixed.** Every travel/visit destination is now anchored on
  **XMarkers inside venues** (the vanilla convention) instead of load-door
  refs — door refs live in both cells' door graphs and caused NPCs to walk up
  and freeze at doors. City strolls now anchor on plaza markers, tavern visits
  on markers by the hearth. (Pathfinding cannot crash the game — a data-only
  mod has no code to crash — but the standing-at-doors part was real and ours.)
- **Jail guard corrected** to `LocationHasKeyword(LocTypeJail) == 0` (the old
  function read keyword *data*, not presence, and never actually blocked).
- **`IsInCombat == 0` on every package** — combat always wins instantly.
- **Weather rules (new):** rain sends everyone but Argonians and guards to
  shelter around home — storms make them **run**; snow sends everyone but
  Nords in; blizzards send even Nords. Field work and market stalls pause in
  the rain and resume when it clears. Children shelter too.
- **All nine inn towns covered:** Falkreath (Dead Man's Drink), Riverwood,
  Ivarstead, Dawnstar, Morthal, Winterhold, Kynesgrove, Dragon Bridge and
  Rorikstead get midday inn-visit routines on rotating weekdays.
- **Anti-crowding:** city outings split into morning (10–15) and afternoon
  (13–18) shifts by cohort; wanderlust dwell shortened; every town has
  different inn days — arrivals and departures rotate instead of piling up.
- **People sit and STAY sat:** venue sandbox energy cut (~30) so visitors
  claim a chair and keep it instead of standing up every minute.
- **Walk in towns, run in the wild:** cross-hold travel (wanderlust, Bruma,
  Coldhaven), night returns and beast prowls now **jog**; Yuria **runs**;
  storms/blizzards run; everything in-city or indoors walks.
- **Jarl tuning:** Balgruuf is the man of the people — nightly Bannered Mare
  visits once the civil war is over (he's too stressed before). Ulfric holds
  court weekly (3h); Elisif is the most reserved (weekly, 2h). No other jarls
  are touched.
- **Yuria integration updated** (mod update re-verified, same FormID): her
  night feeding run now targets **Shimmermist Cave** — the falmer cave nearest
  Whiterun — anchored on a wilderness marker by the cave mouth, at a run,
  returning by morning.
- **Foe night routines (new, own toggle):** bandits at exterior camps scout
  around their turf at night (jog, wide radius) — dungeon bandits untouched,
  combat/scene guards intact, named uniques excluded.
- **Captives stay captive:** every distribution line now excludes prisoner,
  prisoner and captive NPCs by name pattern (`-*prisoner, -*captive`) on top of the
  faction/keyword/location prison guards — Yuriana wenches will have their own ai control them
- **Free spirits come home:** travel packages end by evening and the night
  routine anchors on the NPC's *home* (editor location), so a Solitude
  resident visiting Whiterun heads home the same night — nobody permanently
  squats in another hold.

---

## Installation (FOMOD)

The archive is a **FOMOD installer** (Vortex / MO2). `00 Core` always installs;
the three venue modules are offered on one page and are **auto-detected**:
each option is pre-selected when its master mod is active in your load order
and locked (not selectable) when it is missing — so it is impossible to end up
with a missing-master plugin. Users without Coldhaven, the taverns or Bruma
simply install core-only and lose nothing else.

## What's in the package

| File | What it is |
|---|---|
| `VividRoutines.esp` | core plugin: globals, keywords, abilities, AI packages, MCM quest |
| `VividRoutines - Coldhaven.esp` | optional module → needs *Coldhaven — A Vampire City* |
| `VividRoutines - Nightlife.esp` | optional module → needs the 3 Manguz taverns |
| `VividRoutines - Bruma.esp` | optional module → needs *Beyond Skyrim: Bruma* |
| `VividRoutines_DISTR.ini` | SPID distribution rules (the mod's "reach") |
| `SKSE\...\SkyPatcher\npc\VividRoutines\freespirit.ini` | the essential/protected gate |
| `Scripts\VRAI_MCM.pex` (+ `Scripts\Source\VRAI_MCM.psc`) | the MCM anchor script |
| `MCM\Config\VividRoutines\config.json` | MCM Helper menu definition |
| `Seq\VividRoutines.seq` | makes the start-game-enabled MCM quest fire reliably |
| `manifest.json` | every form this mod creates, with FormIDs |

All four plugins are **ESL-flagged** — zero load order slots. The modules
master the core, so any sorter puts them in the right order automatically.

**Requirements:** SKSE64, Address Library, SPID 7.x, SkyPatcher, SkyUI,
**MCM Helper** (all already in your load order).

---

## How the MCM works

MCM Helper needs three pieces, and all three are now included:
1. a start-game-enabled **quest** in the plugin (`VRAI_MCMQuest`, backed by the
   SEQ file),
2. a **script** on that quest extending `MCM_ConfigBase` (`VRAI_MCM.pex`,
   compiled from the included source — it contains no logic and registers no
   events; MCM Helper does all the work),
3. the **config.json**, whose folder name matches the plugin name
   (`MCM\Config\VividRoutines\`).

Every toggle binds straight to a GlobalVariable (`sourceType: GlobalValue`),
and every AI package checks those globals as engine conditions — so changes
apply **instantly**, mid-save, and persist with your save. No console, ever.

---

## Features

### 0. Scene / quest / follower safety (read this first)
The mod must never hijack an NPC who is busy, so **every package** carries four
engine guards that make it stand down instantly:
- **`GetPlayerTeammate == 0`** — the correct "actively following me" test. It is
  rank-aware, unlike a faction check: many potential followers (Yuria, Uthgerd,
  countless mod followers) sit in `CurrentFollowerFaction` at rank -1 while
  *idle*, and the old faction exclusion wrongly froze them. Now they get proper
  routines when idle and hand full control back to you the moment you recruit.
- **`IsInScene == 0`** — stands down during any scripted scene, vanilla or
  modded. This is the direct fix for the "Uthgerd walks off mid-conversation
  with Skulvar" bug: while a scene runs, our packages are simply invalid.
- **`IsInDialogueWithPlayer == 0`** — never pulls an NPC away mid-dialogue.
- **jail guard** (see §5b) — never touches NPCs in a prison cell.

Quest/scene *forced* packages (assigned through quest aliases) already outrank
an NPC's template packages, so those are safe by construction; these conditions
cover the rest. And targeting is humanoid-only: only `ActorTypeNPC` actors and
follower factions qualify — **giants, trolls, animals and other creatures lack
`ActorTypeNPC`** and are additionally excluded by `-ActorTypeGiant`, so they are
never affected.

### 1. Living Routines — the statue fix
The engine always runs the **first package in the stack whose conditions and
schedule are valid**; failed conditions fall through to the next one. The
routine pair exploits that in two tiers:

- **Tier 1 — unrecruited followers, TOP of the stack (index 0).** Follower-type
  NPCs (follower/marriage factions — including "available" potentials that sit
  in `CurrentFollowerFaction` at rank -1 — and `*follower` editorIDs) usually
  have either no AI or a lazy untuned default sandbox. On top, the routine
  **beats the trash package** so they genuinely live while unrecruited; the
  instant you actually recruit one (`GetPlayerTeammate == 1`) it stands down and
  **hands full control to your follower framework (NFF)**. It also yields during
  scenes, dialogue, waiting and combat. This tier has its **own MCM toggle
  ("Unrecruited follower routines")**, separate from the generic statue-net, so
  you can control followers independently.
- **Tier 2 — everyone else, BOTTOM of the stack (index 99).** Broad safety
  net across nearly all humanoid NPCs (confirmed against SPID/CommonLib
  source: an oversized index appends last). Vanilla citizens with real
  schedules never see it; it only catches NPCs whose entire package list is
  empty or invalid — castle/hub residents and other statues (e.g. Sapphire
  Castle's ESP contains zero NPC records of its own, so faction targeting
  alone could never catch its residents).

The routine itself:
- **Day (7:00–19:00):** roam and live around wherever they are — eat, sit,
  chat, use idle markers and furniture (radius 2500, "current location" anchor
  so relocated hub followers live where they actually stand). **No sleeping.**
- **Night (19:00–7:00):** return to their **default sandbox location** (editor
  location) and settle in; sleeping allowed (radius 600).

**Beds — no mess.** *Allow Sleeping* is switched **off on every package except
three**, each matching who sleeps when: **normal NPCs** sleep at night (the two
"go home for the night" routines), **vampires** sleep by **day** in their lair
(see §3), and **werewolves** are never forced to bed (they don't mind the sun).
So nobody this mod controls ever naps in a tavern or a stranger's bed while out,
travelling or on a daytime routine. Each sleep routine anchors on the actor's
**editor location (home/lair)**, so one who **has a bed there sleeps in their own
bed**; one without uses a nearby **unowned** bed or just idles — the engine's
bed-ownership rules stop them ever taking someone else's owned bed. NPCs with
valid vanilla or quest sleep AI are never touched, so they use their own bed as
normal.
- Excluded: current/waiting followers, guards, anyone hostile to you,
  children, vampires and daedra (they have their own routines).

**City outings.** Plain sandboxing never crosses load doors, which is
why interior NPCs used to stay in their cell. Ten dedicated packages anchor on
an *exterior* reference in each walled city (Whiterun, Solitude, Windhelm,
Riften, Markarth) and require the NPC's current location to be that city — so
on their cohort's outing days (10:00–16:00, two days a week) Bannered Mare
residents actually walk out and stroll Whiterun's streets, then drift back for
the evening. Travel-to-anchor pathing traverses doors reliably.

### 2. Wanderlust — "free spirits may go anywhere"
Ordinary citizens are split into four cohorts (15% each). On their personal
weekdays they travel to a tavern in another hold and mingle till evening.
Gated by the **Free Spirit** keyword that SkyPatcher hands only to
NON-ESSENTIAL, NON-PROTECTED NPCs — quest-vital people never leave their
marks. Guards, jarls, merchants, soldiers, caravans and hostiles excluded.

**The Follower Passport.** Follower-type NPCs are nearly always
essential or protected, so the gate used to block them from ever traveling.
Two extra SkyPatcher rules grant Free Spirit to follower-faction NPCs and to
NPCs whose editor ID contains "follower", regardless of those flags — being
recruitable, they're safe to roam. Combined with the cohorts, each follower
has roughly a **1-in-6 chance on any given day** to journey to another hold
(fixed weekly days rather than a true daily dice roll, because random-percent
conditions re-roll during travel and would make NPCs turn around mid-road).

### 3. Vampire routines (day ≠ night)
Wild vampires are strongly nocturnal: they **sleep in their lair by day** (the
one daytime routine with sleeping on — own coffin/bed or a nearby unowned one)
and wander far at night (top of the stack — nocturnal life overrides generic
AI). 60% get the **Night Hunt** ability (aggression +1, outdoors at night only,
capped below frenzy so they never fight each other). 30% of level-15+ vampires
are **Coldhaven pilgrims** who travel to the hidden city at night instead —
deterministic keyword split, nobody gets both. Coldhaven citizens, thralls,
uniques (Serana) untouched.

### 4. Werewolf night prowl
Werebeasts **don't mind the sun**, so unlike vampires they don't sleep by day —
they live normally in daylight and only *lean* nocturnal: about **60%** pick up
a wide night prowl around their home turf, while the other ~40% keep fully
normal lives and sleep at night. So they're "a bit less" nocturnal than
vampires. Companions Circle keeps its questline schedule.

### 5. Daedra & demon routines
Friendly daedric and demonic NPCs — matched by the `ActorTypeDaedra` keyword
*or* by name/editorID (`dremora`, `daedra`, `demon`, `succub…`) to catch
modded demon followers — lurk near their lair by day and roam wide at night.
Bottom-of-stack + a hostility condition, so author-made AI and dungeon dremora
are never touched.

### 5b. Prisoners stay put
Nobody in a prison cell should be strolling out. This is enforced two ways:
- **Runtime (the real guarantee):** every package in the mod carries the
  engine condition `GetKeywordDataForCurrentLocation(LocTypeJail) == 0`. The
  instant an NPC is inside any jail-type location, all Vivid Routines packages
  evaluate false and the NPC reverts to their own vanilla AI — they stay in
  their cell. This catches **anyone** in a prison cell regardless of faction
  or source mod, **including not-yet-recruited follower captives**, and
  self-corrects: free a captive, walk them out of the jail, and they rejoin
  normal life on their own.
- **Distribution (belt & suspenders):** every package filter also excludes the
  `dunPrisonerFaction` faction and the `ActorTypePrisoner` keyword, so flagged
  prisoners never receive the packages at all — covering modded jails that
  lack a proper jail *location* for the runtime check to see.

### 6. Foes Stay Foes
A conditioned ability on hostile factions lifts Confidence to fighting level
**only while the NPC is actually hostile to you**, only if coward/cautious,
and never on anyone who is or could become a follower. Cowardly civilians
still flee dragons like vanilla; cowardly followers keep their courage arcs;
enemy "cowards" (mod-author oversights) stand and fight. Nothing is forced
onto any record.

### 6b. Children
Children keep their good vanilla AI and this mod mostly **leaves them alone** —
the `-C` trait excludes them from every adult routine, keyword and travel
behavior. Regular inns are **not** blocked: they're eat-and-sleep places (Mila
and Carlotta even talk about going to the Bannered Mare to eat), and urchins
canonically sleep in or near them, so any child who visits an inn through their
own vanilla AI keeps doing so untouched — that's the lore exception. Two rules:
- **0% nightlife, guaranteed.** A child can *never* enter The Naked Dragon, The
  Nasty Pine or The Rift's Rest (the three adult venues). They carry `-C` on
  both the keyword and the package, plus a runtime `IsChild == 0` — three
  independent blocks. Regular inns are unaffected.
- **A daytime "eat / look for someone" inn habit**, split by a **named
  whitelist** so the kids who canonically belong at inns go more often:
  - **70% — whitelisted inn-children:** Mila Valentia (she and her mother
    Carlotta discuss eating at the Bannered Mare) and the homeless street
    urchins **Lucia, Sofie, Alesan, Blaise** (all `BYOHUrchin_*`, matched by
    `*urchin`), **plus any modded urchin/street kids** (`*urchin`, `*streetkid`;
    the child trait keeps it to actual children). Urchins who already *sleep*
    at an inn keep that through their own vanilla AI — the mod never touches a
    child's sleep.
  - **15% — every other child:** the general "sometimes eats at the inn" habit,
    with the whitelist excluded so named kids use only their 70% line.

  Both are routed to the child's *own city's* regular inn by `GetInCurrentLoc`,
  gated by the **Children** MCM toggle, and never a nightlife venue. Add your
  own kids by dropping their FormID into the `VRAI_InnChild` keyword line; the
  two rates (70 / 15) are the last numbers on those lines.

### 7. Named NPC flavor
Balgruuf (and old Vignar) take an evening ale at the Bannered Mare once the
civil war is settled — and only while they actually live in Whiterun. Elisif
visits the Winking Skeever on Loredas; Ulfric holds court at Candlehearth
Hall on Fredas.

**Yuria the Falmer Queen** (needs `Yuria_2.esp`): her ordinary in-town life —
wandering Whiterun, drifting in and out of the Bannered Mare — comes from the
normal follower routines (she is a potential follower, now correctly reached).
On top, when she is **not** actively following you, on deep-night hours she
slips out to the **mouth of Chillwind Depths to "feed the falmer"** and returns
by morning. Cave-mouth only, so she doesn't brawl the cave's falmer. Rides the
"Named NPC flavor" toggle. A named unique like her never joins the anonymous
cross-hold wanderlust (the `-U` trait keeps named NPCs close to home).

### 8. Modded venues get dynamic visitors
25% of Immersive Wenches NPCs rotate through The Naked Dragon, The Nasty Pine
and The Rift's Rest in the evenings (captured/following wenches excluded).
Rare two-way Skyrim ↔ Bruma travel. Marked vampires pilgrimage to Coldhaven.
Every modded reference is soft: missing plugin = line skipped, module ESPs can
be dropped at any time.

---

## Testing tips

Behavior is schedule-driven, so give it in-game time: outings run 10:00–16:00
and cross-hold travel starts at 10:00, each only on the NPC's cohort days —
on other days they live their day/night routine. Wait or sleep a few days
around a tavern and watch the comings and goings. Roughly 40% of NPCs have no
cohort at all (homebodies by design), so not everyone will ever travel.

## Performance & save safety

- **One script**, ~800 bytes, no event registrations, no polling, no state.
- Save footprint: 12 globals + one idle quest.
- No record overrides of any kind — nothing to conflict, nothing to patch.
- All logic runs in the engine's native C++ AI evaluation, same as vanilla NPCs.
- SPID/SkyPatcher distribute at load; removing the mod is clean (re-distribution
  happens from scratch every load, nothing is baked into NPCs).

## Compatibility

- **NFF / follower frameworks:** compatible — framework AI is alias-based and
  always outranks these packages; waiting followers are also condition-excluded.
- **Sandbox When Idle:** unrelated — that mod is player-only (makes *your*
  character sandbox when AFK) and never touches NPC AI. Fully compatible.
- **OStim & wench mods:** scene/capture quest aliases outrank everything here.
- **My Home is Your Home:** its alias packages win; compatible.
- **Anything editing NPC records:** compatible by construction.

## Tuning

- Chances (cohorts, night hunt, pilgrimage, Bruma) → last number on the SPID
  lines in `VividRoutines_DISTR.ini`.
- More hostile factions for Foes Stay Foes → append to its `Spell =` line.
- More demon name patterns → extend the wildcard list on the daedra lines.
- Exclude anyone from anything → add `-TheirEditorID` to the relevant line.
- A specific hub mod's residents have a lazy default sandbox and tier 2
  can't reach them? Copy the tier-1 `Package =` lines and swap the filter for
  that mod's faction (`0xID~TheirMod.esp`) or an editorID pattern
  (`*theirprefix`) — the routine will then sit on top for exactly those NPCs.

## Credits & permissions

Bespoke original work for this load order (Mutagen-built plugins, CK-compiled
script). Inspired by the *concepts* of AI Overhaul by SpiderAkiraC — no
content reused. Do not reupload with AI Overhaul assets.
