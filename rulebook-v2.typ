#set page(paper: "a5", numbering: "1", margin: (1.5cm))
#set heading(numbering: "I-A-1〉")
#show heading: set text(font: "Exo 2")
#set text(10pt, font: "Exo 2")
#set par(justify: true)
#set quote(block: true)

#set document(title: "Uncharted Void")

#title()

_A spacefaring trading cards game of exploration, diplomacy, and combat_

#outline(depth: 2)

= Introduction

Uncharted Void is a trading cards game for two players, set in a distant future
where humanity has long since scattered across the galaxy, diverged into dozens
of strange and wondrous species, and built civilisations of breathtaking variety.
The galaxy is vast, ancient, and not fully understood — even by those who live in it.

In Uncharted Void, each player commands a faction: a crew of remarkable individuals
aboard a fleet of ships, sent out into the unknown to explore, negotiate, and — when
necessary — fight. You will chart unexplored regions of the space line, attempt
missions that advance your faction's goals, and compete for the manufacts and victory
points that will determine who, in the end, has done the most for their civilisation.

The game is won not by destroying your opponent, but by *doing things*: completing
missions, uncovering ancient relics, forging alliances, and occasionally applying
carefully calibrated violence to problems that diplomacy couldn't solve.

== What You Need

To play Uncharted Void you need:
- Two decks of Uncharted Void cards, one per player, each built according to the
  deck construction rules
- A flat surface large enough to lay out a row of 10 landscape cards (the space line)
  with room for ships, away teams, and resource zones on each side
- A supply of counters to track progress and damage
- Something to track victory points: a pen and paper, spare counters, or a
  20-sided die

== The Golden Rule

Uncharted Void is a game between friends. If you encounter a combination of
effects that these rules cannot cleanly resolve, use common sense, discuss it
amicably with your opponent, and find a solution that feels fair to both of you.
Don't lose a friend over a card game.

== The Silver Rule

When a card's text contradicts these rules, the card takes precedence.
These rules describe the default behaviour of the game; cards are the exceptions
that make it interesting.

== How to Read This Rulebook

The rules are presented in the order you will need them: components first, then
setup, then turn structure, then the detailed mechanics of movement, combat, and
missions. A full glossary of keywords and game terms is provided at the end.

== A Note on the Setting

Uncharted Void is set in the *Strange Stars*: a far-future galaxy where the
descendants of humanity have become something stranger and more varied than their
ancestors could have imagined. Psionics, ancient relics, and forces that science
cannot yet explain are as real as starships and laser cannons.

You will encounter factions who rule through memetic persuasion, species who have
transcended their biological origins, and places where the boundary between
hyperspace and realspace is dangerously thin. Not everything out there can be
reasoned with. But it's worth trying first.

Welcome to the Uncharted Void. Try not to get scrapped.

= Components and Card Types

== The Cards

Uncharted Void uses five card types. Each type has a distinct physical format
so players can identify them at a glance.

=== Sophonts (portrait)

Sophonts are the individuals who crew your ships, attempt missions,
and fight your battles — any intelligent being, whether human-descended, alien,
robotic, or virtual.
They are the heart of your deck.

Each Sophont card has four attributes:
/ CHA (Charisma): effectiveness in diplomacy, negotiation, and social conflict
/ INT (Intelligence): effectiveness in scientific, engineering, and analytical tasks
/ STR (Strength): effectiveness in combat and military operations
/ WRD (Weird): effectiveness in psionics, mysticism, and other space-wizardry

One or more attributes may be *highlighted*: these indicate the affinity this
Sophont provides when placed in the resource zone.

=== Ships (landscape)

Ships are the vessels that carry your Sophonts and Manufacts across the space line
(physically place the Sophont and Manufact cards atop the Ship's, to
represent that they are being carried).
Each Ship card has three attributes:

/ RNG (Range): how far the ship can travel in a single move action, measured in hyperspace distance units
/ WPN (Weapons): a measure of the Ship's overall combat effectiveness, including weaponry, sensors,
  jamming, and evasive capability
/ SIZ (Size): the physical scale of the ship, from 1 (shuttle) upward

SIZ also determines the ship's durability: a ship is scrapped when it has accumulated
damage counters equal to its SIZ.

Ships have the *Crew N* keyword, indicating the minimum number of Sophonts
that must be aboard for the ship to move or act. A ship with *Crew 0*
is assumed to be automated or NPC-crewed and requires no Sophonts to operate.

=== Locations (landscape)

Locations form the space line itself and are where missions are attempted.
Each Location card has:

/ LFT: the hyperspace distance cost to travel to or from this location moving left
/ RGT: the hyperspace distance cost to travel to or from this location moving right
/ Subtypes: every location has either the land [LAND] or void [VOID] subtype,
  indicated by an icon, which determines how missions are attempted there (see @missions).
  Additional subtypes such as _Planet_, _Habitat_, _Derelict_, or _Nebula_ are purely
  flavour and have no mechanical effect unless specifically referenced by a card.

Locations also have a *progress tracker*: a series of steps describing the mission
to be completed there, each optionally awarding *victory points* (VP) upon completion.

Finally, each Location has a *seeded manufacts* zone, where manufacts are placed
face-down at game setup. When a mission is completed, the completing player reveals
and takes control of all seeded manufacts at that location.

Locations are placed landscape on the table and remain for the duration of the game.
They are the board.

=== Manufacts (portrait)

Manufacts encompass any physical object: tools, weapons, land vehicles, ancient relics,
and cargo.
They can be carried by away teams or by the crew aboard Ships.

They can also be abandoned ashore or left to float in space;
in this case, any away team or ship (respectively) can collect the abandoned
manufact as a free action.

Some Manufacts are *tokens*: created during play by card effects rather than drawn
from a deck.

Manufacts may have a *SIZ* attribute. A Ship with a *Hold N* keyword can carry any
number of Manufacts or Ships of SIZ N or less.

=== Events (portrait or landscape)

Events represent one-off occurrences or ongoing phenomena. They have two subtypes:

/ Fleeting: resolved immediately and scrapped
/ Persistent: remain in play after resolution, placed on a card they affect,
  at or between locations on the space line, or in a player's resource zone as appropriate

Events may also have the *Superluminal* subtype, meaning they can be played at any
time, including during an opponent's turn.

== Affinity

Each card may have an *affinity requirement* printed in its corner.
To requisition a card, you must have at least one Sophont in your resource zone
whose highlighted attribute matches that affinity. This Sophont does not need to
be untapped.

The four affinities correspond to the four Sophont attributes:
*CHA*, *INT*, *STR*, and *WRD*.

Cards with no affinity requirement can be requisitioned by anyone.

== Counters and Tokens

The game uses two types of physical markers:

/ Progress counters: placed on Location cards to track mission step completion
/ Damage counters: placed on Ships to track hull damage

Token Manufacts are represented by cards provided in the game or created by card
effects; they follow all normal Manufact rules.

= Setup <setup>

== Preparation

Each player prepares the following before the game:
+ Their *home location*: one Location card set aside
+ Their *mission locations*: four Location cards set aside
+ Their *manufact deck*: exactly 8 Manufact cards set aside
+ Their *main deck*: all remaining cards, shuffled face-down

== Building the Space Line

Determine randomly which player goes first.

Both players shuffle their mission locations together into a face-down common deck.
Player one then builds the space line from left to right as follows:

+ Draw and place 4 locations face-down from the common deck, left to right
+ Place *player two's* home location face-up, oriented towards player two,
  to the right of those 4
+ Place *player one's* home location face-up, oriented towards player one,
  to the right of that
+ Draw and place the remaining 4 locations face-down, to the right of those

The resulting space line has 10 locations total: 4 uncharted on the left,
2 face-up home locations at the centre, and 4 uncharted on the right.

All LFT and RGT values on non-home locations are read from player one's perspective.
For convenience, these values are mirrored upside-down on the top border of each
location card, so player two can read them from their side of the table without
ambiguity.

== Seeding Manufacts

Each player takes their manufact deck and shuffles it face-down. Players then
seed manufacts in parallel: each player places one manufact face-down on each
of the 8 uncharted locations, in any order they choose. Home locations are not seeded.

The order in which manufacts are placed under a location is not tracked and
has no rules significance.

== Initial Draw

Draw 7 cards from your main deck as your opening hand. If your opening hand
contains no Ships or no Sophonts, you may recycle all 7 and draw 7 again.
This mulligan may only be used once.

= Turn Structure

Each turn consists of four phases, resolved in order:

== Refresh Phase

Untap all your tapped cards. This includes Sophonts in your resource zone,
Ships and Sophonts on the space line, and any other tapped cards you control.

== Draw Phase

Draw one card from your main deck. If your main deck is empty, you may not
draw; if you are required to draw and cannot, you lose the game.

== Main Phase

The main phase is where most of the game's action takes place. You may perform
the following actions in any order, any number of times, unless otherwise stated:

=== Play one resource

Once per turn, you may place one Sophont card from your hand into your
resource zone, face-up. This Sophont is now a *resource*: they
contribute their highlighted attribute(s) as affinity, and may be tapped to
produce 1 influence. Spend influence to requisition cards.

=== Requisition a card

You may play any card from your hand by paying its cost. To requisition a card:
+ Tap a number of resources equal to the card's cost
+ Ensure the number and kind of highlighted attributes in the resource zone satisfies
  the affinity requirements of the card (it doesn't matter whether resources are tapped)
+ Place the card into play

Sophonts and Manufacts enter play on land at your home location.
Ships enter play at your home location (in space).
Events are resolved immediately if Fleeting, or placed in the appropriate zone
(as indicated by the card text) if Persistent.

=== Move and act with a Ship

You may tap a Ship to move it, act with it, or both. Declare your intended
action before resolving it:

*Move*: declare a destination and a course through intermediate locations.
Your Ship's RNG must be equal to or greater than the total hyperspace distance
travelled. Your Ship passes through all intermediate locations along its course;
opponents may respond with Superluminal effects at any point along the route.
See @movement for detailed rules.

*Act*: choose one of the following:
- *Attack*: initiate combat against a Ship at the same location (Ships may not
  attack away teams)
- *Disembark*: transfer any number of Sophonts from the crew to the surface
  (if you already control an away team there, they join it, otherwise they
  form a new one)
- *Attempt mission*: if the Ship is at a void [VOID] location and meets the requirements
  of the next incomplete mission step, resolve that step

A Ship may move and act in the same turn. Crew aboard the Ship do not tap
when the Ship taps; they may still perform their own actions.

Sophonts on the surface of a land [LAND] location remain there if their Ship departs.

=== Act with Sophonts

You may tap Sophonts to act. Declare your intended
action before resolving it:

*Act*: choose one of the following:
- *Attack*: an away team (as a whole) initiates combat against the opponent's
  away team at the same location (away teams may not attack Ships)
- *Embark*: transfer any number of Sophonts from the away team to a Ship you
  control at the same location (a tapped Ship may still receive embarking Sophonts)
- *Transfer*: move any number of Sophonts from their current Ship to another Ship you
  control at the same location
- *Attempt mission*: if the away team meets the requirements of the next incomplete
  mission step, resolve that step

== End Phase

If you have more than 7 cards in hand, discard down to 7.
Pass the turn to your opponent.

= Core Mechanics

== The Stack <stack>

When you play a card or activate an ability, it does not resolve immediately.
Instead, it is placed on the *stack* — a temporary holding area where effects
wait to be resolved.

After each card or ability is placed on the stack, your opponent has the
opportunity to respond by playing a Superluminal card or activating a
Superluminal ability, which is then placed on top of the stack. This
continues until both players pass in succession, at which point the stack
begins to resolve: the top-most effect resolves first, then the next, and
so on until the stack is empty.

This means that the last effect played resolves first. If your opponent
responds to your attack with a Superluminal effect that scraps your Ship,
your attack never resolves — the Ship was scrapped before it could fire.

During your main phase, when the stack is empty and it is your turn to act,
you may play any non-Superluminal card or activate any non-Superluminal
ability. Superluminal cards and abilities may be played at any time, even
in response to effects on the stack.

== Movement <movement>

To move a Ship, declare a *course*: a sequence of locations starting from
the Ship's current location and ending at the *destination*. Calculate the
total hyperspace distance by summing the LFT or RGT value of each location
you jump *to* along the course, depending on the direction of travel.
Confirm the total distance does not exceed the Ship's RNG.

Tap the Ship; it *departs* the origin and enters hyperspace.
Your opponent may play Superluminal effects targeting the Ship before it departs.
Once the Ship has entered hyperspace it is no longer on the space line,
and therefore cannot be targeted until it arrives.

A Ship carries all its crew and any Manufacts aboard as it moves, as well
as any persistent event attached to them or to the Ship itself; they
travel through hyperspace together.

=== Transits

While in hyperspace, the Ship passes through the hyperspace coordinates of
each intermediate location along its course. Each such passage is called a
*transit*.
Nothing happens at a transit by default, but some superluminal effects
may trigger or become playable when it happens.

=== Arrival

As the Ship approaches its destination through hyperspace, if the destination
is face-down, reveal it now. Resolve any "on reveal" effects before the Ship
exits hyperspace.

Then check legality:
- If the total distance does not exceed the Ship's RNG, the Ship *arrives*
  at the destination
- If the total distance exceeds the Ship's RNG, the Ship *arrives* at the
  last transited location instead (or at the origin if no location was transited)

The Ship exits hyperspace and resolves any "on arrival" effects.
Opponents may play Superluminal effects targeting the Ship at this point,
as it is again on the space line.

== Ship Combat

Ship combat occurs when a Ship's Attack action targets an enemy Ship at the
same location. Resolve as follows:

+ Each player sums the STR of all crew aboard their Ship
+ Add each Ship's WPN to its crew's total
+ The player with the lower total loses: place one damage counter on their Ship
+ In case of a tie, both Ships take one damage counter
+ A Ship is scrapped when its damage counters equal its SIZ

A Ship with Crew 0 and no Sophonts aboard contributes only its WPN to
the combat total. A Ship whose crew falls below its Crew N requirement
cannot fight back and automatically loses, regardless of its WPN value.

Sophonts aboard a scrapped Ship are scrapped with it, unless a card effect
specifies otherwise.

== Away Team Combat

Away team combat occurs when an away team's Attack action targets an enemy
away team at the same location. Resolve as follows:

+ Each player sums the STR of all Sophonts in their away team
+ The player with the lower total loses: they scrap one Sophont of their choice
  from their away team
+ In case of a tie, both players scrap one Sophont of their choice

== Missions <missions>

=== Attempting a Mission Step

To attempt a mission step, a Ship at a void [VOID] location, or an away team
on the surface of a land [LAND] location, must meet the requirements listed for the next
incomplete step on the progress tracker.

You may attempt any mission, not just the ones you own.
In fact, building a flexible deck that can complete any kind of mission is a
good way to ensure your victory!
However, if two players are attempting the same mission, each player gets
their own progress counter. You can't exploit your opponent's first step
to skip directly to the second.

If the requirements are met, place a progress counter on that step and resolve
any effects listed. If the step awards VP, note them immediately.
Once a counter is placed on the final step, the mission is complete and no
further steps may be attempted by any player.

Steps must be completed in order: you may not attempt step 2 before step 1
is complete.

=== Completing a Mission

A mission is complete when all steps on its progress tracker have a progress
counter. The completing player:
+ Scores any VP listed on the location card itself
+ Reveals all seeded Manufacts at that location and takes control of them

=== Winning the Game

The game ends when all missions on the space line have been completed.
The player with the most VP wins.

If the game cannot proceed (both players are unable or unwilling to attempt
any remaining missions), the player with the most VP wins immediately.

= Deck Construction

Before playing, each player builds their deck according to the following rules.

== The Full Deck

Your full deck consists of exactly 60 cards. Before the game begins, you will
separate it into your *main deck* and your *setup deck* (see below).

You may include any number of cards in your deck, subject to the following limits:
- A maximum of 4 copies of any single card
- A maximum of 1 copy of any Unique card

Unique cards in your setup deck count toward these limits: if you seed a Unique
Manufact in your setup deck, you may not include another copy in your main deck.

== The Setup Deck

Set aside exactly 13 cards from your full deck to form your setup deck:
- 1 home location
- 4 mission locations
- 8 manufacts

These cards are used during setup (see @setup) and are not shuffled into your
main deck. The remaining 47 cards form your main deck.

== Deck Identity

Your deck's identity is shaped by your choice of home location and by the
affinities of your resources. A deck heavy on CHA resources will excel at
diplomacy and social missions; one built around STR will dominate in combat.
Consider the affinity requirements of your most important cards when selecting
your resources, and ensure your setup deck's locations and manufacts support
your overall strategy.

There are no restrictions on which factions or species you may include in your
deck. Mix and match freely — or build a pure faction deck for maximum affinity
consistency.

= Frequently Asked Questions

== Setup

*Can I look at my opponent's uncharted locations before the game begins?*

No. Uncharted locations are placed face-down and may not be inspected by
either player until they are charted.

*Can I look at the manufacts I am seeding?*

No. You shuffle your manufacts deck before seeding the cards face down.
Therefore, you know what you're seeding, but you don't know where.

*Can my opponent look at the manufacts I have seeded?*

No. Seeded manufacts are placed face-down and may not be inspected until
the mission at that location is completed.

== Resources and Influence

*Can I tap a resource to produce influence even if I don't need it?*

Yes, but the influence is wasted: it does not carry between turns.

*Can I place more than one resource per turn?*

No. You may place exactly one Sophont card into your resource zone per turn.

*Can I move a resource back to my hand?*

Not unless a card effect specifically allows it.

*Does a resource need to be untapped to provide affinity?*

No. A resource provides affinity simply by being in the resource zone,
regardless of whether it is tapped or untapped.

== Movement

*Can a Ship move to a location it is already at?*

Yes. The departure location and the destination don't have to be
different locations. 
You may even plot a course through several other locations before
arriving back to where you had started, provided you have enough
range.

*Can a Ship move through a location occupied by an enemy Ship?*

Yes. Transiting a location does not require you to stop or engage.
Your opponent may play Superluminal effects during the transit, but
the Ship continues along its course unless an effect specifically stops it.

*Can a Ship move backwards along its course?*

No. A course must be set before the move begins, at which point you
cannot change your mind and go back.

*What happens if a Ship has no crew and no Crew 0 keyword?*

A Ship without the required crew cannot move or act. It remains at its
current location until sufficient crew come aboard.

*Can a Ship carry another Ship?*

Only if it has the Hold N keyword and the carried Ship's SIZ does not
exceed N.

== Combat

*Can I attack an enemy Ship that has no crew?*

Yes. Both uncrewed Ships (whose crew is smaller than it requires), 
and *Crew 0* Ships may be attacked. 
A *Crew 0* with no one on board can use only its WPN attribute in
combat, as there is no crew STR to add.
An uncrewed Ship, on the other hand, cannot fight back at all, and will
automatically lose the combat, regardless of its WPN value.

*What happens to Sophonts aboard a scrapped Ship?*

They are scrapped together with the Ship and all Manufacts on board, 
unless a card effect specifically states otherwise.

*Can an away team attack a Ship?*

No. Away teams may only attack other away teams. Ships may only attack
other Ships.

*Can I choose to lose combat deliberately?*

You cannot choose the outcome of combat, but you do choose which
Sophont to scrap if your away team loses.

== Missions

*Can I attempt a mission on my opponent's home location?*

Home locations are special and don't have missions.

*Can two players both complete the same mission?*

No. Once a progress counter is placed on the final step of a mission,
it is complete and closed. No further steps may be attempted by any player.

*Do I score VP for steps completed by my opponent on a mission I later complete?*

No. Each player tracks their own progress counters. You only score VP
for steps you complete yourself.

*What if I complete a mission but have no room to take the seeded manufacts?*

There is no carrying limit for manufacts. You take control of
all seeded manufacts at that location regardless. 
If you can't move them away because they have SIZ larger than your Ship's hold,
that's tough luck. You'll have to bring a bigger Ship.
You can always leave some Sophonts there to keep control of the Manufacts
(but watch out! The opponent may try to come and get them from you!)

== Cards and Effects

*If a card's text contradicts these rules, which takes precedence?*

The card takes precedence. See the Silver Rule in the Introduction.

*Can I play a Superluminal card during my own turn?*

Yes. Superluminal cards may be played at any time, including during
your own main phase.

*Can Persistent events be scrapped?*

Yes, if a card effect specifically scraps them. They do not leave play
on their own.

*Can I inspect my opponent's scrapyard?*

Yes. The scrapyard is face-up and may be inspected by either player
at any time.

== Deck Construction

*Can I include locations in my main deck?*

Yes, but they currently cannot be played from hand and will have no
effect if drawn. Future expansions may introduce ways to play locations
from hand.

*Do Unique cards in my setup deck count toward my deck's copy limit?*

Yes. If you include a Unique Manufact in your setup deck, you may not
include another copy in your main deck.

*Can I include cards from multiple factions in my deck?*

Yes. There are no faction restrictions on deck construction.

= Glossary <glossary>

== Keywords

/ Crew N: this Ship requires at least N Sophonts aboard to move or act.
  A Ship with Crew 0 is automated and requires no Sophonts to operate.
/ Hold N: this Ship can carry any number of Manufacts or Ships of SIZ N or less.
/ Superluminally: this ability may be activated at any time — including
  during the opponent's turn or while another effect is being resolved.
  All other activated abilities may only be used during your main phase
  when the stack is empty (see @stack).

== Special Subtypes

In general, card subtypes don't affect how that card is played.
However, these subtypes are specifically called out in the rules,
and have a special meaning.

/ [LAND]: (Land); this location has a planet, habitat, station, or other environment
  on whose *surface* Sophonts can land and walk.
  Missions here require an away team.
/ [VOID]: (Void); this location is a region of open space. Missions here must be
  attempted from aboard a Ship. You may not send an away team to a void [VOID] location.
/ Fleeting: this Event is scrapped immediately after its effect resolves.
/ Home: this location is played face-up, by its owner, during the setup phase.
/ Persistent: this Event remains in play after its effect resolves, placed
  in the zone indicated by its card text.
/ Superluminal: this card may be played at any time — including during the
  opponent's turn or while another effect is being resolved.
  All other cards may only be played during your main phase when the
  stack is empty (see @stack).
/ Unique: you may put at most 1 copy of this card in your deck.

== Game Terms <game-terms>

/ Arrive: to exit hyperspace at the end of a move. A Ship arrives at its
  declared destination if the move is legal, or at the last transited
  location otherwise.
/ Away team: any number of Sophonts you control on the surface of a land
  [LAND] location.
/ Course: the declared sequence of locations from origin to destination;
  declared before a move begins.
/ Crew: any number of Sophonts you control aboard a Ship.
/ Depart: to leave the origin location and enter hyperspace, beginning a move.
/ Destination: the final location along a declared course.
/ Disembark: transfer any number of Sophonts from the crew to the surface.
/ Hyperspace: a separate zone that Ships pass through during movement.
  Cards in hyperspace are not on the space line, therefore cannot be targeted 
  by any effect unless it explicitly states otherwise.
/ Influence: the currency of requisitioning. Produced by tapping resources
  in the resource zone; one tap produces one influence. Influence is spent
  immediately and does not carry between turns.
/ Recycle: to place a card on the bottom of its owner's main deck.
/ Requisition: to play a card from your hand into play, paying its cost.
/ Resource: a Sophont card in the resource zone.
/ Resource zone: the area in front of each player where Sophonts are placed
  face-up to provide influence (by tapping) and affinity (by virtue of being there).
/ Scrap: to discard a card to the scrapyard.
/ Space line: the row of Location cards that forms the board. Unless otherwise
  stated, all effects target cards on the space line.
/ Scrapyard: a player's discard pile. Cards in the scrapyard are face-up and
  may be inspected by either player at any time.
/ Surface: the region of a land [LAND] location where Sophonts operate on foot,
  as part of an away team, rather than from inside a Ship as crew members.
/ Tapped: a card that has been rotated 45 degrees clockwise to indicate it has
  been used this turn. A tapped card cannot be tapped again until it is untapped.
  Cards are untapped during the Refresh Phase.
/ Team: a crew or an away team. There's no limit to how large a team can be.
/ Transit: the passage of a Ship in hyperspace through the hyperspace
  coordinates of an intermediate location along its course.
/ Untapped: a card in its normal, upright orientation, available to be used.
/ Uncharted: a face-down location is said to be "uncharted". You can chart it
  by moving there with a ship.