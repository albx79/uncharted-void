#set page(paper: "a5", numbering: "1", margin: (1.5cm))
#set heading(numbering: "I-1-A.")
#show heading: set text(font: "Orbitron")
#set par(justify: true)
#set text(10pt, font: "Exo 2")
#set document(title: "Uncharted Void")

#title()

_A Sci-Fi Space Exploration and Diplomacy Card Game_

#outline(depth: 2)

= Overview

Uncharted Void is a competitive and interactive collectible card game of exploration, diplomacy,
and conflict set in the far future.
Players command factions of starfaring civilizations vying for power and knowledge in uncharted
regions of space.
Through resource management, personnel deployment, daring exploration, tactical combat, and
negotiation, players race to complete missions, recover ancient Manufacts, and earn enough
victory points to triumph.

== Components

=== Card Types
  - *Personnel*: Unique or generic crew with skill ratings and special abilities.
  - *Ships*: Vessels of varying sizes with range, cargo hold, and crew requirements.
  - *Manufacts*: Artifacts, equipment, vehicles, discovered in the void or added to decks.
  - *Locations*: Planets, outposts, phenomena, and more — each with a mission to accomplish.
  - *Events*: One-time or persistent effects representing the dangers of space.

=== Decks

Each player brings:

  - a constructed deck for their faction, typically 50+ cards.
  - a Location deck for use during exploration.
  - a Manufacts mini-deck of 10 cards, seeded at the start of the game.

=== Tokens/Markers

This additional material will make it easier to track the game state:

  - Glass beads (or similar) to track progress and damage.
  - Paper and pencil, or a 20-sided die, to keep the score.

== Setup

=== Deck Preparation

Each player selects one or two factions and constructs:
- their main deck (50+ cards, which may include non-aligned cards),
- their Location deck (20+ cards), which should include their Home Location, and
- and their seeded Manufacts (exactly 10 cards).

Each player shuffles their main deck, and rolls a D6 (see @rolling) to determine who goes first.
Then, each player removes their Home Location from their Location deck, and shuffles it separately.

=== Space Line Setup

Place your seeded Manufacts face down to create a horizontal line.
This is the Space Line, and each Manufact is placed at an uncharted Location.
Your Opponent does the same, at the same time (the order in which Manufacts are seeded at a Location
doesn't matter).

At the end of this phase, there will be a Space Line of 10 Locations, each with two Manufacts.

The player who goes first places their Home Location at any slot of the Space Line, face-up.
Then the other player does the same.

=== Game Start

The player who goes *second* takes the first turn, starting with the Draw Phase.

The game starts at an Escalation Level of 2, which is the number of explored Locations on the Space Line.
The Escalation Level determines how many cards you can play as resources, and which Ship can be requisitioned.

= Card Types and Anatomy

All cards have a *Name*, a *Rarity* level, a *deck cap* (which indicates how many copies of that card you can have in your deck),
a *Type*, one or more *Subtypes*, and a *Text Box* with special abilities (triggered, activated, or passive) and other special rules
for that card.

All cards that go in the main deck also have:
- *Faction/Generic*, that affects deckbuilding
- *D6 Value* for randomized checks

If an effect causes a card to change its type, then all values required by the new type but not printed on the card,
and not specified by the effect, are assumed to be zero.
Similarly, a card may have printed values that belong to a different type, if that card is expected to change its type during the game.

Below we see details of each card type.

== Personnel

Personnel are the main staple of your deck, as it represents the people of your faction(s) that does the exploring, negotiating, and dangerous fighting on your behalf.

- *Cost* (resource requirement)
- *Resources* provided when this Personnel is in the resource zone
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
/ Rarity (deck cap) Type -- Subtypes: Legendary (1) Personnel -- Human VIP
/ Cost: 2 influence, 1 tactical, 1 mystical
/ Resources: 1 influence, 1 tactical or 1 mystical
/ Skills: CHA 5, INT 4, STR 3, WRD 1
/ Text: When Captain Tallis is revealed during a skill check, draw a card.
/ D6 Value: 2

== Ships

Ships are what allow people to move around the vastness of insterstellar space, land onto Locations, and transport precious cargo.

- *Cost* (resource requirement)
- *Crew _N_* (minimum number of Personnel on board for the Ship to function)
- *Level _N_* (minimum Escalation Level required for this Ship to be requisitioned)
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
/ Faction: The 6th Integration
/ Rarity (deck cap) Type -- Subtypes: Rare (2) Ship -- Destroyer
/ Cost: 3 tactical, 1 influence
/ Level: 4
/ Crew: 2
/ Ratings: HLD 2, WPN 4, RNG 3, SIZ 3
/ Text: When The Starfire attacks, it may deal 1 additional damage to the target if it wins by 3 or more.
/ Damage bar: 3 boxes (WPN -2, RNG -2, disabled)
/ D6 Value: 4

== Manufacts 

Manufacts represent artifacts, equipment, cargo, and other manufactured items that can be carried around and help a team achieve its objectives.

- *Cost* (resource requirement)
- *Size* (only for Cargo or other especially large Manufacts)

== Events

- *Cost*

== Locations

Locations represent planets, space habitats, orbitals, nebulae, and other places worth exploring and investigating in the Uncharted Void.

Location cards are not in your main deck, therefore don't have a cost. 
They can only be played by moving to an uncharted Location with a Ship.

- *Victory Points* awarded by completing this mission
- *Distance Left/Right*
- *Landing/Takeoff Distance* (only for Planets, Habitats, and other landable Locations)

=== Example Location

/  Name: Mira's Rift
/  Rarity (deck cap) Type - Subtypes: Uncommon (1) Location - Nebula
/  Text box: Win three 8-INT checks. Claim both Manufacts from this Location. _The physics that makes this region so unreachable is worth investigating -- Captain Arten Tallis_
/  Victory Points: 3
/  Distance: 6/6
/  Landing Distance: N/A

= Turn Structure

Each turn consists of the phases below.
The active player completes all phases, then play passes to opponent.

== Draw Phase

Draw cards from your deck until you have 6 cards in hand
(if you already have 6 or more cards, you don't draw any).

== Untap Phase

Untap (ready) all your tapped cards (Ships, Personnel, Manufacts, etc.),
making them available for use again.

== Resource Phase

There are four resource types, provided by Personnel, and displayed as coloured triangular icons:

+ *⚜︎ Influence*: diplomatic, political, or social resources
+ *⚙︎ Tech*: scientific and engineering prowess
+ *⚔︎ Tactical*: military and strategic capability
+ *✶ Mystical*: psionics, mysticism, or unexplained forces

During this phase, you may put from your hand into your resource zone:

+ a number of Personnel cards less than or equal to the current Escalation Level, and
+ any number of Ship cards provided the sum of the levels of Ships in your resource zone is less than or equal to the Escalation Level.

== Main Phase

During this phase, do any number of the following actions, in this order:

=== Requisition

To *requisition* a card, you have to pay its resource cost:

- for *crewed* cards, by transferring Personnel from your resource zone to the card as crew.
    (at the moment only Ships can be *crewed*, as indicated by the "*Crew _N_*" keyword in the card's text).
- for non-crewed cards, by recycling Personnel from your resource zone (to the bottom of your main deck -- see the Glossary on #ref(<glossary>, form: "page")).

The cost must be paid *excacly* as written on the cards; you cannot overpay for requisition!

Personnel and Manufacts enter the space line landed at your home Location. 
Ships enter it in space at your home Location. 
Events don't enter the space line: read the Event's text box and perform its effects.

=== Move

To *move* a Ship, it must have enough Range to leave its starting Location.
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

Personnel can *move* between two Ships at the same Location, or between Ship and the ground if the Ship has the
*landers _N_ * ability and the Location has landing distance $<= N$.
If all conditions are met, tap them and effect the move. 

All Personnel at the same place (on one Ship,
or landed at a Location) forms a *team*. A team on a Ship is called the Ship's *crew*, while a team landed at a
Location is called an *away team*.

=== Attempt Missions

To *attempt* a mission at a Location, you need to have an away team there, or, if the Location doesn't have
a landing distance, you need a crewed Ship there (if you have more than one crewed Ship at the same Location,
declare which one is attempting the mission).

- Perform the checks or the tasks as instructed by the mission, and place progress counters as needed.
- It may take several turns, usually 3, to complete a mission.
- The opponent may also attempt to complete the same mission at the same time.
    Unless otherwise indicated, they get their own progress tracker, and whoever completes the mission first wins.
- When you have performed all tasks assigned by the mission, add the mission's Victory Points to your score, and
    reveal the hidden Manufacts, that you can immediately take control of.

=== Attack

A crewed Ship you control may *attack* an opponent's Ship at the same Location.
Tap your ship, then
- Perform an opposed STR+WPN check against the other Ship's.
- If you win, the other Ship takes one damage; if you lose, your Ship takes one damage.
- If the damage bar was already full and the Ship cannot take any more damage, it is destroyed (scrap it, and scrap all cards that were aboard it).

Each slot in the damage bar may show a malus the Ship takes for being damaged (for example, WPN -1).
Usually, the last slot says "*disabled*", which means the Ship cannot move or attack and its abilities stop functioning.
If you attack a disabled Ship, you don't need to roll: you just declare the attack and you win automatically.

An away team you control may *attack* another away team at the same Location.
Tap your away team, then
- Perform an opposed STR check against the other away team.
- The controller of the losing team choses one Personnel to scrap.

== Discard Phase

- If you have more than 6 cards in hand, scrap down to 6 (put the extra into your *scrapyard*).
- Recycle as many (or as few) as you want of the remaining cards in your hand.

At the end of this phase, you will be left with between 0 and 6 cards.

== End of Turn

The turn ends, which may trigger some card effects. Then, pass play to your opponent.

= Action Details

== Rolling a D6 <rolling>

A D6 is a six-sided die.
The game rules will often can for rolling a D6, but you're not expected to bring dice at the
table and actually roll them.
Instead, you will reveal the top card of your main deck, and check it's D6 value.
That value is the outcome of the roll.

== Making a Skill Check

When the rules call for a skill check against a target value,

+ choose a team member whose skill will be used
+ roll a D6
+ add any relevant modifier
+ if the total is greater or equal than the target value, you pass the check; otherwise, you fail.

When the rules call for an opposed check, the target value isn't fixed, but it's determined by
the opponent rolling a D6 and adding the appropriate skill value.

=== Examples

Bob's away team is on a planet. 
The mission text there says "A war gang attacks you with STR 8; you must defend successfully". 
Bob looks at his away team and notices that the highest STR value is Captain Tallis, but it's only 3!
Trying to beat an 8 with a 3 is quite risky. 
However, the away team has a Demolition Charge (Equipment),
which says "Scrap _this_ $arrow$ add +3 to a STR check". 

With this, Bob decides that the attempt would be safe enough, so he "rolls a D6": 
Bob draws a card, and it's a 6!
The total (6+3) is 9, so Captain Tallis' team successfully defends against the war gang and next turn will be able to attempt 
the next task of the mission. 

If Bob had rolled a lower value, he could have scrapped the Demolition Charge for a +3 bonus.
If he had rolled a very low value (2 or less), even the Demolition Charge couldn't have won the fight, 
and Bob would have had to scrap a Personnel from the away team.

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

= Example

An example of how the first 2 turns may play in a game.

TODO write it.

= The Uncharted Void

TODO Describe the setting here.

== Factions

The universe of Uncharted Void teems with diverse factions, each channeling a different ethos and approach to the unknown. 
The base set features six distinct factions — each designed to offer unique mechanics and playstyles — and several more are hinted as possibilities for future expansions.

Each faction’s Home Location includes a unique mission designed to reinforce that faction's ethics and encourage a playstyle that adheres to it.

=== The Accord

(Diplomacy-Focused)

/ Theme: Peacekeepers, negotiators, and envoys of the Void. Their fleets prioritize alliances, treaties, and de-escalation.
/ Strengths: Excel with Influence (diplomatic) resources; can form alliances, prevent or redirect combat, share resources, and complete missions cooperatively.
/ Weaknesses: Struggle in direct combat and rely on tricks or alliances to survive militaristic threats.

=== The Vanguard 

(Exploration-Focused)

/ Theme: Trailblazers, scientists, and scouts obsessed with discovery. They venture deeper into the Void than any others.
/ Strengths: Exceptional Tech (engineering) generation; bonus rewards for revealing or traversing new Locations; can scry or re-order the Space Line; field specialized scout ships.
/ Weaknesses: Poor at combat and sabotage; vulnerable if opponents exploit their spread-out forces.

=== The 6th Integration 

(Combat/Expansion-Focused)

/ Theme: Conquerors and warlords, valuing strength and obedience. They expand aggressively, subjugating planets and rivals in their path.
/ Strengths: Generate Tactical (military) resources efficiently; field powerful Ships and elite soldiers; can destroy or seize Installations and suppress resistance.
/ Weaknesses: High-cost units; less flexible in diplomacy or subterfuge; must pay to maintain conquest.

=== The Syndicate 

(Hybrid/Opportunist/Asymmetrical)

/ Theme: Smugglers, info-brokers, pirates, and mercenaries. They play all sides and thrive in chaos.
/ Strengths: Steal or blackmail resources, artifacts, or even victory points; can sabotage or “buy” Installations; excellent at ambushes and adaptation.
/ Weaknesses: Unpredictable; lack brute strength or dedicated research.

=== The Continuum 

(Psionic/Mystic)

/ Theme: Psionic, mystic, or post-biological entities—ancient, enigmatic, perhaps remnants of AI or uplifted minds.
/ Strengths: Excel in Mystical resource use; manipulate the Space Line or player hands; disrupt enemy plans via “weird” powers.
/ Weaknesses: Often inflexible; may have “backlash” risks or dependence on certain conditions.

=== The Guild of Lifters 

(Trade/Logistics/Space Truckers)

/ Theme: Space hauliers, trade caravans, and deal-makers—descendants of independent prospectors.
/ Strengths: Efficient Cargo handling, bonus resource generation via trade; skilled at moving Cargo/Artifacts; economic sabotage and fast transport.
/ Weaknesses: Few combat options; rely on negotiation over might.

= Glossary of Terms <glossary>

/ Control: A Location or Place is controlled if you placed your Home Location there, if you completed a mission there, or as per card effects.
/ Crew Requirement: Minimum number of Personnel needed to operate a Ship.
/ Disabled: A disabled card is tapped, doesn't untap, and cannot move, attack, or perform any other action; 
  moreover, its triggered abilities don't trigger, its activated abilities cannot be activated, and its passive abilities don't function.
/ D6 Value: Every card has a printed number from 1 to 6, used instead of dice for randomization in skill checks and combat.
/ Draw Phase: The part of your turn in which you may draw cards to reach your hand limit. The Draw Phase always occurs, even if you do not draw any cards due to already having a full hand or other effects.
/ Escalation Level: The number of explored Locations in the space line.
/ Flash: Keyword indicating a card can be played at any time its requirements are met (including during an Opponent’s turn).
/ Hold: Attribute of Ships determining Cargo capacity.
/ Home Location: The Location that is the starting base for your faction.
/ Hyperspace: The network of hyperdimensional nodes and tunnels was built aeons ago by a lost civilization with unimaginable technology. Nowadays this network is used by all starfaring races and most Ships can enter it. Ships in Hyperspace cannot interact with Ships or Locations in realspace, nor be attacked or attack.
/ Lander: This Ship can Land on Planets (or Habitats, or any Location with a Landing distance), provided it has sufficient Range.
/ Landers: This Ship has at its disposal a fleet of small landers, that can transfer Personnel and Cargo between the Ship and the Planet. They are assumed to have the required Range and Hold.
/ Location: A card type representing a planet, nebula, or other point of interest. Placed at a Slot when explored.
/ Manufact: An artifact, piece of Equipment, or other item, placed at a Location or in a Player’s Deck; plural is Manufacts.
/ Prisoner: A Team taken Prisoner is no longer controlled by you, but by your Opponent, and their abilities are disabled. However, the Opponent is only able to move the Team as a whole as if it were a Cargo item, and cannot split it except as part of a deal or special effect.
/ Recycle: Move a card (from anywhere) to the bottom of your main deck.
/ Scrap: To move a card (from anywhere) to the scrapyard, i.e. to discard it. Killed Personnel and destroyed Ships are scrapped.
/ Scrapyard: Where discarded cards go. What most card games would simply call the discard pile.
/ Size: A Ship's Size determines how much Hold it occupies when it is carried as Cargo by another Ship (when carried, it has to be empty and uncrewed).
/ Slot: A position on the Space Line. May be uncharted (empty) or contain a Location card.
/ Space Line: The horizontal line of Locations (with Manufacts) forming the game board.
/ Team: A group of Personnel and their Equipment acting together for Missions or Combat.
