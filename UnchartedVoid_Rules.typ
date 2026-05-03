#set page(paper: "a5")
#set heading(numbering: "1.")
#set document(title: "Uncharted Void")

= Uncharted Void

_A Sci-Fi Space Exploration and Diplomacy Card Game_

= Overview

Uncharted Void is a competitive and interactive collectible card game of exploration, diplomacy,
and conflict set in the far future.
Players command factions of starfaring civilizations vying for power and knowledge in uncharted
regions of space.
Through resource management, personnel deployment, daring exploration, tactical combat, and
negotiation, players race to complete missions, recover ancient Manufacts, and earn enough
victory points to triumph.

= Components

== Card Types
  - *Personnel*: Unique or generic crew with skill ratings and special abilities.
  - *Ships*: Vessels of varying sizes with range, cargo hold, and crew requirements.
  - *Manufacts*: Artifacts, equipment, vehicles, discovered in the void or added to decks.
  - *Locations*: Planets, outposts, phenomena, and more — each with a mission to accomplish.
  - *Events*: One-time or persistent effects representing the dangers of space.

== Decks

Each player brings:

  - a constructed deck for their faction, typically 50+ cards.
  - a Location deck for use during exploration.
  - a Manufacts mini-deck of 10 cards, seeded at the start of the game.

== Tokens/Markers

This additional material will make it easier to track the game state:

  - Glass beads (or similar) to track progress and damage.
  - Paper and pencil, or a 20-sided die, to keep the score.

== Factions of the Uncharted Void

The universe of Uncharted Void teems with diverse factions, each channeling a different ethos and approach to the unknown. The base set features four distinct factions — each designed to offer unique mechanics and playstyles — and several more are hinted as possibilities for future expansions.

Each faction’s Home Location includes a unique mission designed to reinforce that faction's ethics and encourage a playstyle that adheres to it.

=== The Accord (Diplomacy-Focused)
*Theme:* Peacekeepers, negotiators, and envoys of the Void. Their fleets prioritize alliances, treaties, and de-escalation.
*Strengths:* Excel with Influence (diplomatic) resources; can form alliances, prevent or redirect combat, share resources, and complete missions cooperatively.
*Weaknesses:* Struggle in direct combat and rely on tricks or alliances to survive militaristic threats.

=== The Vanguard (Exploration-Focused)
*Theme:* Trailblazers, scientists, and scouts obsessed with discovery. They venture deeper into the Void than any others.
*Strengths:* Exceptional Tech (engineering) generation; bonus rewards for revealing or traversing new Locations; can scry or re-order the Space Line; field specialized scout ships.
*Weaknesses:* Poor at combat and sabotage; vulnerable if opponents exploit their spread-out forces.

=== The 7th Integration (Combat/Expansion-Focused)
*Theme:* Conquerors and warlords, valuing strength and obedience. They expand aggressively, subjugating planets and rivals in their path.
*Strengths:* Generate Tactical (military) resources efficiently; field powerful Ships and elite soldiers; can destroy or seize Installations and suppress resistance.
*Weaknesses:* High-cost units; less flexible in diplomacy or subterfuge; must pay to maintain conquest.

=== The Syndicate (Hybrid/Opportunist/Asymmetrical)
*Theme:* Smugglers, info-brokers, pirates, and mercenaries. They play all sides and thrive in chaos.
*Strengths:* Steal or blackmail resources, artifacts, or even victory points; can sabotage or “buy” Installations; excellent at ambushes and adaptation.
*Weaknesses:* Unpredictable; lack brute strength or dedicated research.

=== The Continuum (Psionic/Mystic)
*Theme:* Psionic, mystic, or post-biological entities—ancient, enigmatic, perhaps remnants of AI or uplifted minds.
*Strengths:* Excel in Mystical resource use; manipulate the Space Line or player hands; disrupt enemy plans via “weird” powers.
*Weaknesses:* Often inflexible; may have “backlash” risks or dependence on certain conditions.

=== The Guild of Lifters (Trade/Logistics/Space Truckers)
*Theme:* Space hauliers, trade caravans, and deal-makers—descendants of independent prospectors.
*Strengths:* Efficient Cargo handling, bonus resource generation via trade; skilled at moving Cargo/Artifacts; economic sabotage and fast transport.
*Weaknesses:* Few combat options; rely on negotiation over might.

= Setup

== Deck Preparation

Each player selects one or two factions and constructs:
- their main deck (50+ cards, which may include non-aligned cards),
- their Location deck (20+ cards), which should include their Home Location, and
- and their seeded Manufacts (exactly 10 cards).

Each player shuffles their main deck, and rolls a D6 (see below for D6 rules) to determine who goes first.
Then, each player removes their Home Location from their Location deck, and shuffles it separately.

== Space Line Setup

Place your seeded Manufacts face down to create a horizontal line.
This is the Space Line, and each Manufact is placed at an uncharted Location.
Your Opponent does the same, at the same time (the order in which Manufacts are seeded at a Location
doesn't matter).

At the end of this phase, there will be a Space Line of 10 Locations, each with two Manufacts.

The player who goes first places their Home Location at any slot of the Space Line, face-up.
Then the other player does the same.

== Game Start

The player who goes *second* takes the first turn, starting with the Draw Phase.

The game starts at an Escalation Level of 2, which is the number of explored Locations on the Space Line.
The Escalation Level determines how many cards you can play as resources, and which Ship can be requisitioned.

= Turn Structure

Each turn consists of the phases below.
The active player completes all phases, then play passes to opponent.

== Draw Phase

Draw cards from your deck until you have 7 cards in hand
(if you already have 7 or more cards, you don't draw any).

== Untap Phase

Untap (ready) all your tapped cards (Ships, Personnel, Manufacts, etc.),
making them available for use again.

== Main Phase

During this phase, do any number of the following actions, in this order:

=== Play resources

There are four resource types, provided by Personnel, and displayed as coloured triangular icons:

+ *⚜︎ Influence*: diplomatic, political, or social resources
+ *⚙︎ Tech*: scientific and engineering prowess
+ *⚔︎ Tactical*: military and strategic capability
+ *✶ Mystical*: psionics, mysticism, or unexplained forces

Put a number of Personnel cards less than or equal to the current Escalation Level from your hand into your resource zone.

=== Requisition, Move, Attempt Missions, Attack

- To *requisition* a card, you have to pay its resource cost:
  - for *crewed* cards, by transferring Personnel from your resource zone to the card as crew.
    (at the moment only Ships can be *crewed*, as indicated by the "*Crew _N_*" keyword in the card's text).
  - for non-crewed cards, by recycling Personnel from your resource zone (to the bottom of your main deck -- see Dictionary below).
  The cost must be paid *excacly* as written on the cards; you cannot overpay for requisition!

- To *move* a Ship, it must have enough Range to leave its starting Location.
  If it does, tap it, then:
  - choose a Location within its range, and move it there (if the destination Location
    has a *landing distance* and the Ship can *land*, you can choose to land provided the move is still within range).
  - choose a Location outside its range, and put the Ship in hyperspace (place it near the destination Location
    but slightly offset towards the starting Location).
    It will arrive at the beginning of your next turn, and you can choose to land it if possible.
  - choose an uncharted slot, then draw a Location from your deck and place it there.
    Then, apply one of the two rules above for moving to a Location.
  Ships may bring Personnel and Cargo with them. There’s no limit to how many Personnel a Ship can carry.
  However, a Ship can only carry Cargo with total Size less than or equal to its Hold rating.

- Personnel can *move* between two Ships at the same Location, or between Ship and the ground if the Ship has the
  *landers _N_ * ability and the Location has landing distance $<=$ N.
  If all conditions are met, tap them and effect the move. All Personnel at the same place (on one Ship,
  or landed at a Location) forms a *team*. A team on a Ship is called the Ship's *crew*, while a team landed at a
  Location is called an *away team*.

- To *attempt* a mission at a Location, you need to have an away team there, or, if the Location doesn't have
  a landing distance, you need a crewed Ship there (if you have more than one crewed Ship at the same Location,
  declare which one is attempting the mission).
  - Perform the checks or the tasks as instructed by the mission, and place progress counters as needed.
  - It may take several turns, usually 3, to complete a mission.
  - The opponent may also attempt to complete the same mission at the same time.
    Unless otherwise indicated, they get their own progress tracker, and whoever completes the mission first wins.
  - When you have performed all tasks assigned by the mission, add the mission's Victory Points to your score, and
    reveal the hidden Manufacts, that you can immediately take control of.

- A crewed Ship you control may *attack* an opponent's Ship at the same Location.
  Tap your ship, then
  - Perform a Strength+Weapons check against the other Ship's.
  - The Ship that loses the check takes one *damage* (add one damage counter to the Ship's damage bar).
    If the check ends in a tie, both Ships take one damage.
  - If the damage bar is full, the Ship is disabled (it cannot perform any action listed in this section,
    and all its abilities are unavailable).
  - If a disabled Ship takes damage, it is destroyed (scrap it, and scrap all cards that were aboard it).

- An away team you control may *attack* another away team at the same Location.
  Tap your away team, then
  - Perform a Strength check against the other away team.
  - The controller of the losing team choses one Personnel to scrap. On a tie, both teams lose one Personnel.

== Discard Phase

- If you have more than 7 cards in hand, discard down to 7.
- Recycle as many (or as few) as you want of the remaining cards in your hand.

At the end of this phase, you will be left with between 0 and 7 cards.

== End of Turn

The turn ends, which may trigger some card effects. Then, pass play to your opponent.

= Card Types & Anatomy

All cards have a *Name*, a *Rarity* level, an *Arity* level (which indicates how many copies of that card you can have in your deck),
a *Type*, one or more *Subtypes*, and a *Text Box* with special abilities (triggered, activated, or passive) and other special rules
for that card.

Additionally, all cards that go in the main deck have:
- *Faction/Generic*, that affects deckbuilding
- *D6 Value* for randomized checks

Below we see details of each card type.

== Personnel

- *Cost* (resource requirement)
- #strong[Resource]s provided when this Personnel is in the resource zone
- *Skills*: Numeric ratings for charisma (CHA), intelligence (INT), strength (STR), and weird (WRD)

=== Charisma (CHA)

TODO

=== Intelligence (INT)

TODO

=== Strength (STR)

TODO

=== Weird (WRD)

TODO

=== Example Personnel

/ Name: Captain Arten Tallis
/ Faction: The Accord
/ Rarity (Arity) Type -- Subtypes: Legendary (1) Personnel -- Human VIP
/ Cost: 2 influence, 1 tactical, 1 mystical
/ Skills: CHA 5, INT 4, STR 3, WRD 1
/ Text: When Captain Tallis is revealed during a skill check, draw a card.
/ D6 Value: 2

== Ships

- *Cost* (resource requirement)
- *Crew _N_* (minimum number of Personnel on board for the Ship to function)
- *Ratings*: numeric values for cargo hold (HLD), weapons (WPN), range (RNG), and size (SIZ)
- *Damage bar* (one box per SIZ rating, put tokens to mark damage)

=== Cargo Hold (HLD)

TODO

=== Weapons (WPN)

TODO

=== Range (RNG)

TODO

=== Size (SIZ)

TODO

=== Example Ship

/ Name: The Starfire
/ Faction: The 7th Integration
/ Rarity (Arity) Type -- Subtypes: Rare (2) Ship -- Destroyer
/ Cost: 3 tactical, 1 influence
/ Crew 2
/ Ratings: HLD 2, WPN 4, RNG 3, SIZ 3
/ Text: When The Starfire attacks, it may deal 1 additional damage to the target if it wins by 3 or more.
/ Damage bar: 3 boxes
/ D6 Value: 4

== Manufacts (Artifacts/Equipment/Cargo/...)

- *Cost* (resource requirement)
- *Size* (only for Cargo or other special Manufacts)

== Events

- *Cost*

== Locations

Locations are not in your main deck, therefore don't have a cost. They can only be played by moving to an uncharted Location with a Ship.

- *Victory Points* awarded by completing this mission
- *Distance Left/Right*
- *Landing/Takeoff Distance* (only for Planets, Habitats, and other landable Locations)

=== Example Location

/  Name: Mira's Rift
/  Rarity (Arity) Type - Subtypes: Uncommon (1) Location - Nebula
/  Text box: Win three 8-INT checks. Claim both Manufacts from this Location. _The physics that makes this region so unreachable is worth investigating -- Captain Arten Tallis_
/  Victory Points: 3
/  Distance: 6/6
/  Landing Distance: N/A

= Action Details

== Rolling a D6

A D6 is a six-sided die.
The game rules will often can for rolling a D6, but you're not expected to bring dice at the
table and actually roll them.
Instead, you will reveal the top card of your main deck, and check it's D6 value.
That value is the outcome of the roll.

== Making a Skill Check

When the rules call for a skill check,
+ choose a team member whose skill will be used
+ roll a D6
+ add any relevant modifier (for example, for a STR check from a Ship, add the Ship's WPN value)
+ check the outcome
  + vs. a fixed value: you win by matching or surpassing that value
  + _opposed_: the opponent does the same, and the player with the highest total wins\
  (in a tie, it usually counts as a loss for both)

== Crewing Ships

Ships have a Crew Requirement specifying how many Personnel need to be on board for the ship to be able to move, attack, and defend.
Some Ships have a Crew Requirement of 0,
meaning that they can move, attack, and defend, even without any Personnel on board
(this represents either highly automated Ships, or capital Ships with an implicit crew complement
of hundreds of people).
An empty Ship with a Crew Requirement of 0 is considered crewed for all intent and purposes
(including attempting to complete a Space mission!); however,
whenever a rule calls for a Skill check, that Skill is automatically 0.

= Victory Conditions

The first player to acquire 20 victory points (mainly via missions, but possibly via major combats or other cards) wins the game.

If there is a time limit and the time is up, the player with the highest score wins.

= Glossary of Terms

/ Control: A Location or Place is controlled if you placed your Home Location there, if you completed a mission there, or as per card effects.
/ Crew Requirement: Minimum number of Personnel needed to operate a Ship.
/ D6 Value: Every card has a printed number from 1 to 6, used instead of dice for randomization in skill checks and combat.
/ Draw Phase: The part of your turn in which you may draw cards to reach your hand limit. The Draw Phase always occurs, even if you do not draw any cards due to already having a full hand or other effects.
/ Flash: Keyword indicating a card can be played at any time its requirements are met (including during an Opponent’s turn).
/ Hold: Attribute of Ships determining Cargo capacity.
/ Home Location: The Location that is the starting base for your faction.
/ Hyperspace: The network of hyperdimensional nodes and tunnels was built aeons ago by a lost civilization with unimaginable technology. Nowadays this network is used by all starfaring races and most Ships can enter it. Ships in Hyperspace cannot interact with Ships or Locations in realspace, nor be attacked or attack.
/ Junkyard: Location for cards after use. What most card games would call the discard pile.
/ Lander: This Ship can Land on Planets (or Habitats, or any Location with a Landing distance), provided it has sufficient Range.
/ Landers: This Ship has at its disposal a fleet of small landers, that can transfer Personnel and Cargo between the Ship and the Planet. They are assumed to have the required Range and Hold.
/ Location: A card type representing a planet, nebula, or other point of interest. Placed at a Slot when explored.
/ Manufact: An artifact, piece of Equipment, or other item, placed at a Location or in a Player’s Deck; plural is Manufacts.
/ Prisoner: A Team taken Prisoner is no longer controlled by you, but by your Opponent, and their abilities are disabled. However, the Opponent is only able to move the Team as a whole as if it were a Cargo item, and cannot split it except as part of a deal or special effect.
/ Size: A Ship's Size determines how much Hold it occupies when it is carried as Cargo by another Ship (when carried, it has to be empty and uncrewed).
/ Slot: A position on the Space Line. May be uncharted (empty) or contain a Location card.
/ Space Line: The horizontal line of Locations (with Manufacts) forming the game board.
/ Team: A group of Personnel and their Equipment acting together for Missions or Combat.
