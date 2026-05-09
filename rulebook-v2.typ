#set page(paper: "a5", numbering: "1", margin: (1.5cm))
#set heading(numbering: "I-1-A〉")
#show heading: set text(font: "Exo 2")
#set text(10pt, font: "Exo 2")
#set par(justify: true)
#set quote(block: true)

#set document(title: "TBD")

#title()

_Subtitle_

= Introduction

TO BE WRITTEN LATER.

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

Ships are the vessels that carry your Personnel across the space line.
Each Ship card has three attributes:

/ RNG (Range): how far the ship can travel in a single move action, measured in hyperspace distance units
/ WPN (Weapons): how powerful the ship is in combat
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
/ Subtypes: such as _Space_ or _Planet_, which determine whether ships or away teams interact with them

Locations also have a *progress tracker*: a series of steps describing the mission
to be completed there, each optionally awarding VP upon completion.

Finally, each Location has a *seeded manufacts* zone, where manufacts are placed
face-down at game setup. When a mission is completed, the completing player reveals
and takes control of all seeded manufacts at that location.

Locations are placed landscape on the table and remain for the duration of the game.
They are the board.

=== Manufacts (portrait)

Manufacts encompass any physical object: tools, weapons, land vehicles, ancient relics,
and cargo. They can be carried by Personnel or Ships, and interact with Locations
in a variety of ways.

Some Manufacts are *tokens*: created during play by card effects rather than drawn
from a deck.

Manufacts may have a *SIZ* attribute. A Ship with a *Hold N* keyword can carry any
Manufact or Ship of SIZ N or less.

=== Events (portrait or landscape)

Events represent one-off occurrences or ongoing phenomena. They have two subtypes:

/ Fleeting: resolved immediately and scrapped
/ Persistent: remain in play after resolution, placed on a card they affect,
  at or between locations on the space line, or in a player's resource zone as appropriate

Events may also have the *Superluminal* keyword, meaning they can be played at any
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
+ Their *starting location*: one Location card set aside
+ Their *mission locations*: four Location cards set aside
+ Their *manufact deck*: exactly 8 Manufact cards set aside
+ Their *main deck*: all remaining cards, shuffled face-down

== Building the Space Line

Determine randomly which player goes first.

Both players shuffle their mission locations together into a face-down common deck.
Player one then builds the space line from left to right as follows:

+ Draw and place 4 locations face-down from the common deck, left to right
+ Place *player two's* starting location face-up, oriented towards player two,
  to the right of those 4
+ Place *player one's* starting location face-up, oriented towards player one,
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

== Glossary

/ Recycle: to place a card on the bottom of its owner's main deck.
/ Requisition: to play a card from your hand into play, paying its cost.
/ Scrap: to discard a card to the scrapyard.
/ Scrapyard: each player's discard pile.

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
resource zone, face-up. This Personnel is now a resource provider: they
contribute their highlighted attribute(s) as affinity, and may be tapped to
provide one generic resource.

=== Requisition a card

You may play any card from your hand by paying its cost. To requisition a card:
+ Tap a number of Personnel in your resource zone equal to the card's generic cost
+ Ensure the number and kind of highlighted attributes in the resource zone satisfies
  the affinity requirements of the card (it doesn't matter whether resource Personnel
  is tapped)
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

*Act*: choose one of the following:
- *Attack*: initiate combat against a Ship at the same location (Ships may not
  attack away teams)
- *Disembark*: transfer any number of Personnel from the crew to the planet
  (if you already control an away team there, they join it, otherwise they
  form a new one)
- *Attempt mission*: if the Ship is at a space location and meets the requirements
  of the next incomplete mission step, resolve that step

A Ship may move and act in the same turn. Crew aboard the Ship do not tap
when the Ship taps; they may still perform their own actions.

=== Act with Personnel

You may tap Personnel to act. Declare your intended
action before resolving it:

*Act*: choose one of the following:
- *Attack*: an away team (as a whole) initiates combat against the opponent's
  away team at the same location (away teams may not attack Ships)
- *Embark*: transfer any number of Personnel from the away team to a Ship you
  control at the same location (a tapped Ship may still receive embarking Personnel)
- *Attempt mission*: if the away team meets the requirements of the next incomplete
  mission step, resolve that step

== End Phase

If you have more than 7 cards in hand, discard down to 7.
Pass the turn to your opponent.
