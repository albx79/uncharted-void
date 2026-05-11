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

=== Personnel (portrait)

Personnel represent the individuals who crew your ships, attempt missions,
and fight your battles. They are the heart of your deck.

Each Personnel card has four attributes:
/ CHA (Charisma): effectiveness in diplomacy, negotiation, and social conflict
/ INT (Intelligence): effectiveness in scientific, engineering, and analytical tasks
/ STR (Strength): effectiveness in combat and military operations
/ WRD (Weird): effectiveness in psionics, mysticism, and other space-wizardry

One or more attributes may be *highlighted*: these indicate the affinity this
Personnel provides when placed in the resource zone.

=== Ships (landscape)

Ships are the vessels that carry your Personnel and Manufacts across the space line
(physically place the Personnel and Manufact cards atop the Ship's, to
represent that they are being carried).
Each Ship card has three attributes:

/ RNG (Range): how far the ship can travel in a single move action, measured in hyperspace distance units
/ WPN (Weapons): a measure of the Ship's overall combat effectiveness, including weaponry, sensors,
  jamming, and evasive capability
/ SIZ (Size): the physical scale of the ship, from 1 (shuttle) upward

SIZ also determines the ship's durability: a ship is scrapped when it has accumulated
damage counters equal to its SIZ.

Ships have the *Crew N* keyword, indicating the minimum number of Personnel
that must be aboard for the ship to move or act. A ship with *Crew 0*
is assumed to be automated or NPC-crewed and requires no Personnel to operate.

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

Each card (except basic tokens) has an *affinity requirement* printed in its corner.
To requisition a card, you must have at least one Personnel in your resource zone
whose highlighted attribute matches that affinity. This Personnel does not need to
be untapped.

The four affinities correspond to the four Personnel attributes:
*CHA*, *INT*, *STR*, and *WRD*.

Cards with no affinity requirement can be requisitioned by anyone.

== Counters and Tokens

The game uses two types of physical markers:

/ Progress counters: placed on Location cards to track mission step completion
/ Damage counters: placed on Ships to track hull damage

Token Manufacts are represented by cards provided in the game or created by card
effects; they follow all normal Manufact rules.

= Setup

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

The resulting space line has 10 locations total: 4 unknown on the left,
2 face-up home locations at the centre, and 4 unknown on the right.

All LFT and RGT values on non-home locations are read from player one's perspective.
For convenience, these values are mirrored upside-down on the top border of each
location card, so player two can read them from their side of the table without
ambiguity.

== Seeding Manufacts

Each player takes their manufact deck and shuffles it face-down. Players then
seed manufacts in parallel: each player places one manufact face-down on each
of the 8 unknown locations, in any order they choose. Home locations are not seeded.

The order in which manufacts are placed under a location is not tracked and
has no rules significance.

== Initial Draw

Draw 7 cards from your main deck as your opening hand. If your opening hand
contains no Ships or no Personnel, you may recycle all 7 and draw 7 again.
This mulligan may only be used once.

= Turn Structure

Each turn consists of four phases, resolved in order:

== Refresh Phase

Untap all your tapped cards. This includes Personnel in your resource zone,
Ships and Personnel on the space line, and any other tapped cards you control.

== Draw Phase

Draw one card from your main deck. If your main deck is empty, you may not
draw; if you are required to draw and cannot, you lose the game.

== Main Phase

The main phase is where most of the game's action takes place. You may perform
the following actions in any order, any number of times, unless otherwise stated:

=== Play one resource

Once per turn, you may place one Personnel card from your hand into your
resource zone, face-up. This Personnel is now a *resource*: they
contribute their highlighted attribute(s) as affinity, and may be tapped to
produce 1 influence. Spend influence to requisition cards.

=== Requisition a card

You may play any card from your hand by paying its cost. To requisition a card:
+ Tap a number of resources equal to the card's cost
+ Ensure the number and kind of highlighted attributes in the resource zone satisfies
  the affinity requirements of the card (it doesn't matter whether resources are tapped)
+ Place the card into play

Personnel and Manufacts enter play on land at your home location.
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
- *Disembark*: transfer any number of Personnel from the crew to the surface [SURF]
  (if you already control an away team there, they join it, otherwise they
  form a new one)
- *Attempt mission*: if the Ship is at a void [VOID] location and meets the requirements
  of the next incomplete mission step, resolve that step

A Ship may move and act in the same turn. Crew aboard the Ship do not tap
when the Ship taps; they may still perform their own actions.

Personnel on a planet surface remain there if their Ship departs.

=== Act with Personnel

You may tap Personnel to act. Declare your intended
action before resolving it:

*Act*: choose one of the following:
- *Attack*: an away team (as a whole) initiates combat against the opponent's
  away team at the same location (away teams may not attack Ships)
- *Embark*: transfer any number of Personnel from the away team to a Ship you
  control at the same location (a tapped Ship may still receive embarking Personnel)
- *Transfer*: move any number of Personnel from their current Ship to another Ship you
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

Personnel aboard a scrapped Ship are scrapped with it, unless a card effect
specifies otherwise.

== Away Team Combat

Away team combat occurs when an away team's Attack action targets an enemy
away team at the same location. Resolve as follows:

+ Each player sums the STR of all Personnel in their away team
+ The player with the lower total loses: they scrap one Personnel of their choice
  from their away team
+ In case of a tie, both players scrap one Personnel of their choice

== Missions <missions>

=== Attempting a Mission Step

To attempt a mission step, a Ship at a void [VOID] location, or an away team
at a surface [SURF] location, must meet the requirements listed for the next
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

= Glossary <glossary>

== Keywords

/ Crew N: this Ship requires at least N Personnel aboard to move or act.
  A Ship with Crew 0 is automated and requires no Personnel to operate.
/ Hold N: this Ship can carry any number of Manufacts or Ships of SIZ N or less.
/ Superluminally: this ability may be activated at any time — including 
  during the opponent's turn or while another effect is being resolved. 
  All other activated abilities may only be used during your main phase 
  when the stack is empty (see @stack).

== Special Subtypes

In general, card subtypes don't affect how that card is played.
However, these subtypes are specifically called out in the rules,
and have a special meaning.

/ [SURF]: (Surface); this location has a planet, habitat, station, or other environment
  that Personnel can physically walk on. Missions here require an away team.
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
  
== Game Terms <game-terms>

/ Arrive: to exit hyperspace at the end of a move. A Ship arrives at its
  declared destination if the move is legal, or at the last transited
  location otherwise.
/ Away team: any number of Personnel you control on the surface of
  a surface [SURF] location.
/ Course: the declared sequence of locations from origin to destination;
  declared before a move begins.
/ Crew: any number of Personnel you control aboard a Ship.
/ Depart: to leave the origin location and enter hyperspace, beginning a move.
/ Destination: the final location along a declared course.
/ Disembark: transfer any number of Personnel from the crew to the surface [SURF].
/ Hyperspace: a separate zone that Ships pass through during movement.
  Cards in hyperspace cannot be targeted by any effect unless that effect
  explicitly states otherwise.
/ Influence: the currency of requisitioning. Produced by tapping resources
  in the resource zone; one tap produces one influence. Influence is spent
  immediately and does not carry between turns.
/ Recycle: to place a card on the bottom of its owner's main deck.
/ Requisition: to play a card from your hand into play, paying its cost.
/ Resource: a Personnel card in the resource zone.
/ Resource zone: the area in front of each player where Personnel are placed
  face-up to provide influence (by tapping) and affinity (by virtue of being there).
/ Scrap: to discard a card to the scrapyard.
/ Space line: the row of Location cards that forms the board. Unless otherwise
  stated, all effects target cards on the space line.
/ Scrapyard: a player's discard pile. Cards in the scrapyard are face-up and
  may be inspected by either player at any time.
/ Tapped: a card that has been rotated 45 degrees clockwise to indicate it has
  been used this turn. A tapped card cannot be tapped again until it is untapped.
  Cards are untapped during the Refresh Phase.
/ Team: a crew or an away team. There's no limit to how large a team can be.
/ Transit: the passage of a Ship in hyperspace through the hyperspace
  coordinates of an intermediate location along its course.
/ Untapped: a card in its normal, upright orientation, available to be used.
