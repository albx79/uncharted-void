#set page(paper: "a5", numbering: "1", margin: (1.5cm))
#set heading(numbering: "I-1-A〉")
#show heading: set text(font: "Exo 2")
#set text(10pt, font: "Exo 2")
#set par(justify: true)
#set quote(block: true)

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
  - *Personnel*: The people, humanoid or otherwise, who use their skills and abilities to win the game for you!
  - *Ships*: Vessels of varying sizes capable of carrying Personnel and cargo around the space line.
  - *Manufacts*: Artifacts, equipment, vehicles, discovered in the void or added to decks.
  - *Locations*: Planets, outposts, phenomena, and more — each with a mission to accomplish.
  - *Events*: One-time or persistent effects representing the dangers of space.

=== Decks

Each player brings:

  - a main deck for their faction, typically 50+ cards.
  - a Location deck for use during exploration, typically 20+ cards.
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
This is the space line, and each Manufact is placed at an uncharted slot.
Your opponent does the same, at the same time (the order in which Manufacts are seeded at a slot
doesn't matter).

At the end of this phase, there will be a space line of 10 slots, each with two Manufacts.

The player who goes first places their Home Location at any slot of the space line, face-up.
Then the other player does the same.

=== Game Start

The player who goes *second* takes the first turn, starting with the Draw Phase.

The game starts at an Escalation Level of 2, which is the number of explored Locations on the space line.
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
- *Attributes*: Numeric ratings for charisma, intelligence, strength, and weird

=== Charisma (CHA)

The social clout of this Personnel. 
How much influece they have, how good they are at speaking and parleying, and at making
other people change their mind.

Political leaders, diplomats, and negotiators typically excel at charisma.

=== Intelligence (INT)

The scientific and technical experties of this Personnel. 
People who like to solve problems by applying method and expertise.

Scientists, doctors, and engineers typically have high intelligence.

=== Strength (STR)

Strength is the ability of a Personnel to brute-force its way with little regards for collateral damage.
This is not to be confused with brute strength (although it could certainly be a part of it!),
but with familiarity with military, tactical, and destructive disciplines that use brain as much as brawl
in order to obtain the intended mayhem.

Soldiers, warriors, and military commanders excel at strength.

=== Weird (WRD)

There are things science cannot explain. 
Perhaps it used to be able to, back in the day when the hyperspace network was built and men yielded the power of gods,
but that is no longer the case. 

Weird represents the effect of mind over matter, and of hyperspace over mind:
seeing the unseeable, sensing the unsensable, and affecting the unaffectable.

Monks, knights, and priests usually have high weird.

=== Example Personnel

/ Name: Captain Arten Tallis
/ Faction: The Accord
/ Rarity (deck cap) Type -- Subtypes: Legendary (1) Personnel -- Humanoid VIP
/ Cost: 2 influence, 1 tactical, 1 mystical
/ Resources: 1 influence, 1 tactical or 1 mystical
/ Attributes: CHA 5, INT 4, STR 3, WRD 1
/ Text: When Captain Tallis is revealed during a check, draw a card.
/ D6 Value: 2

== Ships

Ships are what allow people to move around the vastness of insterstellar space, land onto Locations, and transport precious cargo.

- *Cost* (resource requirement)
- *Crew _N_* (minimum number of Personnel on board for the Ship to function)
- *Level _N_* (minimum Escalation Level required for this Ship to be requisitioned)
- *Attributes*: numeric values for cargo hold, weapons, range, and size
- *Damage bar*: put tokens here to mark damage; at each damage level, a malus may be indicated.

=== Cargo Hold (HLD)

Ships can carry Manufacts and other Ships, up to their HLD attribute. 
Add the SIZ attributes of all Ships and Manufacts to determine whether they fit; if they don't, some will have to be left
floating in space, or be picked up by another Ship.

Manufacts without a SIZ attributes are assumed to be small enough that we don't need to track how many you're carrying.

If, at any point in the game, the SIZ or the HLD values change such that they no longer fit, you must immediately eject
enough cargo to make them fit again.

=== Weapons (WPN)

A combination defensive power (armour and evasion) and offensive power (beams, projectiles, missiles) 
that determines how good this Ship is in combat (see @combat).

This attribute is added to the crew STR when doing an attack or defense check.

=== Range (RNG)

The ability of a Ship to move around stellar and insterstellar space.
See @moving for details about moving between Locations and landing on land-based Locations.

=== Size (SIZ)

How large this Ship is. 
Used to determine whether it can fit another Ship's cargo hold.
By default, SIZ also determines the length of the damage bar.

=== Example Ship

/ Name: The Starfire
/ Faction: The 6th Integration
/ Rarity (deck cap) Type -- Subtypes: Rare (2) Ship -- Destroyer
/ Cost: 3 tactical, 1 influence
/ Level: 4
/ Crew: 2
/ Attributes: HLD 2, WPN 4, RNG 3, SIZ 3
/ Text: When The Starfire attacks, it may deal 1 additional damage to the target if it wins by 3 or more.
/ Damage bar: 3 boxes (WPN -2, RNG -2, disabled)
/ D6 Value: 4

== Manufacts

Manufacts represent artifacts, equipment, cargo, and other manufactured items that can be carried around and help a team achieve its objectives.

- *Cost* (resource requirement)
- *Attributes*: Cargo and other especially large Manufacts have a size (SIZ) attribute

== Events

- *Cost*

== Locations

Locations represent planets, space habitats, orbitals, nebulae, and other places worth exploring and investigating in the Uncharted Void.

There are two main types of Locations: land-based and space-based. 
Land-based Locations have a landing distnace and a take-off distance, and in order to attempt a mission there 
you have to land an away team.

The missions at space-based Locations can be attempted from a Ship.

Location cards are not in your main deck, therefore don't have a cost.
They can only be played by moving to an uncharted Location with a Ship.

- *Victory Points* awarded by completing this mission
- *Attributes*: numeric values for left- and right-distance (LFT/RGT), and for landing and take-off (LND/TKF)

=== Example Location

/  Name: Mira's Rift
/  Rarity (deck cap) Type - Subtypes: Uncommon (1) Location - Nebula
/  Text box: Win three 8-INT checks. Claim both Manufacts from this Location. _The physics that makes this region so unreachable is worth investigating -- Captain Arten Tallis_
/  Victory Points: 3
/  Attributes: LFT 6, RGT 6

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

=== Move <moving>

To *move* a Ship, it must have enough Range to leave its starting Location.
If it does, tap it, then:

- choose a Location within its range, and move it there
  - if the destination is land-based, and your Ship has the *lander* ability, you can add the Location LND attribute and,
    if the move is still within range, land the Ship.
  - if the Ship was landed at departure, also add the Location TKF attribute.
- choose a Location outside the Ship's range, and put the Ship in hyperspace (place it near the destination Location
    but slightly offset towards the starting Location).
    It will arrive at the beginning of your next turn, and you can choose to land if possible.
- choose an uncharted slot, then draw a Location from your deck and place it there.
    Then, apply one of the two rules above for moving to a Location.

Ships may bring Personnel and Cargo with them. There’s no limit to how many Personnel a Ship can carry.
However, a Ship can only carry Cargo with total Size less than or equal to its Hold rating.

Personnel can *move* between two Ships at the same Location, or between Ship and the ground if the Ship has the
*landers _N_ * ability and the landing distance or take-off distance are ≤ _N_ 
(use the appropriate distance depending on wheter you're moving the team _to_ or _from_ land).
If all conditions are met, tap them and effect the move.

All Personnel at the same place (on one Ship,
or landed at a Location) forms a *team*. A team on a Ship is called the Ship's *crew*, while a team landed at a
Location is called an *away team*.

=== Attempt Missions

To *attempt* a mission at a land-based Location, you need to have an away team there. 
For space-based Locations, you need a crewed Ship there 
(if you have more than one crewed Ship at the same Location,
declare which one is attempting the mission).

- Perform the checks or the tasks as instructed by the mission, and place progress counters as needed.
- It may take several turns, usually 3, to complete a mission.
- The opponent may also attempt to complete the same mission at the same time.
    Unless otherwise indicated, they get their own progress tracker, and whoever completes the mission first wins.
- When you have performed all tasks assigned by the mission, add the mission's Victory Points to your score, and
    reveal the hidden Manufacts, that you can immediately take control of.

=== Attack <combat>

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

== Making a Check

When the rules call for a check against a target value,

+ choose a team member whose attribute will be used
+ roll a D6
+ add any relevant modifier
+ if the total is greater or equal than the target value, you pass the check; otherwise, you fail.

When the rules call for an opposed check, the target value isn't fixed, but it's determined by
the opponent rolling a D6 and adding the appropriate attribute value.

=== Examples

Bob's away team is on a planet.
The mission text there reads:

#quote[A war gang attacks you with STR 8; you must defend successfully.]

Bob looks at his away team and notices that the highest STR value is Captain Tallis, but it's only 3!
Trying to beat an 8 with a 3 is quite risky.
However, the away team has a Demolition Charge (Equipment),
which reads:

#quote[Scrap _this_ 🞂 add +3 to a STR check.]

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
whenever a rule calls for a check, its attribute value is automatically 0.

= Victory Conditions

The first player to acquire 20 victory points (mainly via missions, but possibly via major combats or other cards) wins the game.

If there is a time limit and the time is up, the player with the highest score wins. 
If, for whatever reasons, no player has reached 20 victory points but there are no completable missions left, 
then the player with the highest score wins.

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
/ Strengths: Exceptional Tech (engineering) generation; bonus rewards for revealing or traversing new Locations; can scry or re-order the space line; field specialized scout ships.
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
/ Strengths: Excel in Mystical resource use; manipulate the space line or player hands; disrupt enemy plans via “weird” powers.
/ Weaknesses: Often inflexible; may have “backlash” risks or dependence on certain conditions.

=== The Guild of Lifters

(Trade/Logistics/Space Truckers)

/ Theme: Space hauliers, trade caravans, and deal-makers—descendants of independent prospectors.
/ Strengths: Efficient Cargo handling, bonus resource generation via trade; skilled at moving Cargo/Artifacts; economic sabotage and fast transport.
/ Weaknesses: Few combat options; rely on negotiation over might.

= Glossary of Terms <glossary>

/ Check: A way to determine the outcome of an action, by adding a D6 value to an attribute and comparing against a target value (see @rolling).
/ Control: You controll the Personnel and Ships you play, uncontested Locations, and you control Manufacts held by a team you control.
/ Crew Requirement: Minimum number of Personnel needed to operate a Ship.
/ Combat: A lethal kind of check. Can be between away teams (where one team member will die), or between Ships (where one will take damage and may be destroyed).
/ Disabled: A disabled card is tapped, doesn't untap, and cannot move, attack, or perform any other action;
  moreover, its triggered abilities don't trigger, its activated abilities cannot be activated, and its passive abilities don't function.
/ D6 Value: Every card has a printed number from 1 to 6, used instead of dice for randomization during checks.
/ Draw Phase: The part of your turn in which you may draw cards to reach your hand limit. The Draw Phase always occurs, even if you do not draw any cards due to already having a full hand or other effects.
/ Escalation Level: The number of explored Locations in the space line.
/ Flash: Keyword indicating a card can be played at any time its requirements are met (including during an opponent’s turn).
/ Hold: Attribute of Ships determining Cargo capacity.
/ Home Location: The Location that is the starting base for your faction.
/ Hyperspace: The network of hyperdimensional nodes and tunnels was built aeons ago by a lost civilization with unimaginable technology. Nowadays this network is used by all starfaring races and most Ships can enter it. Ships in Hyperspace cannot interact with Ships or Locations in realspace, nor be attacked or attack.
/ Lander: This Ship can Land on land-based Locations, provided it has sufficient Range.
/ Landers _X_ HLD _Y_: This Ship has at its disposal a fleet of small landers, that can transfer Personnel and Cargo between the Ship and the land. 
  They have range _X_ and hold _Y_ (if indicated; otherwise they cannot carry cargo).
/ Location: A card type representing a planet, nebula, or other point of interest. Placed at a Slot when explored.
/ Manufact: An artifact, piece of Equipment, or other item, placed at a Location or in a Player’s Deck; plural is Manufacts.
/ Prisoner: A Team taken Prisoner is no longer controlled by you, but by your opponent, and their abilities are disabled. However, the opponent is only able to move the Team as a whole as if it were a Cargo item, and cannot split it except as part of a deal or special effect.
/ Recycle: Move a card (from anywhere) to the bottom of your main deck.
/ Scrap: To move a card (from anywhere) to the scrapyard, i.e. to discard it. Killed Personnel and destroyed Ships are scrapped.
/ Scrapyard: Where discarded cards go. What most card games would simply call the discard pile.
/ Size: A Ship's Size determines how much Hold it occupies when it is carried as Cargo by another Ship (when carried, it has to be empty and uncrewed).
/ Slot: A position on the space line. May be uncharted (empty) or contain a Location card.
/ Space Line: The horizontal line of Locations (with Manufacts) forming the game board.
/ Team: A group of Personnel and their Manufacts acting together for Missions or Combat. 
  A team on a Ship is a *crew*, and a team landed at a Location is an *away team*.
