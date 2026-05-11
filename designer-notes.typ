#set document(title: "Designer Notes")
#title()

On the design of a space-operatic trading cards game of exploration, diplomacy, and combat.

= Principles

Everything in this Section is set in stone, as it explains what kind of feel I want from this
game, why, and why I'm doing it at all.

== What I Want

To create a Trading Cards Game that will allow players to live the feeling of exploring a Galaxy full
mystery and awe, with dangers lurking behind every corner, and violence being always a solution, but
often the last one.

== Inspirations

*Movies and TV Series*

+ Star Wars - the original trilogy
+ Star Trek - mainly Next Generation
+ Farscape
+ Babylon 5
And, to a lesser extent, 
+ Battlestar Galactica
+ Cowboy Bebop
+ Firefly

*Books*
+ Isaac Asimov - the Foundation series
+ Poul Andersen - the Van Rijn series
+ Iain Banks - the Culture series

*Games and Toys*
+ Traveller RPG
+ Stars without Numbers RPG
+ Mindjammer RPG
+ Classic Lego Space (because why not! it's space exploration and you live the adventures you want)

== What the Game Has to Provide

=== A Sense of Exploration

A feeling that the galaxy is huge, with many places still unknown, each with its own history and problems to be solved
by "the player".

=== A Sense of Urgency

We're not space tourists on a galactic safari. 
There is a real society out there whose wellbeing depends on our researches, exploration, and expansion.
And there are real enemies out there, who are in the same condition, but whose interests conflict with ours.

=== A Sense of Mystery

Not all is known, and not all is science. 
There are forces that even the most advanced civilisations can't explan.
Perhaps one day they will, and perhaps one day they used to, but those days are millenia
removed from now.

= Implementation

Nothing in this Section is set in stone.
These are just some ideas I've had about delivering what detailed above. 
If better ideas come to mind, I'm happy to reconsider everything here.

== The Space Line Mechanic

Inspired by: Star Trek CCG, Sorcery Contested Realm TCG.
Both these games skid the line between a card game and a tabletop game, 
in that they use cards to setup the board on which the game is played.
However, they do so in very different ways.

The advantage of this approach is that it makes the setting feel "real".
Places aren't just abstract concepts, but actual on-the-table places
where characters can interact. 
Their physical placement matters, too, in terms of where one can move to
and what one can attack from there.

Sorcery plays on a 5x4 grid, initially empty. 
Turn by turn lands are placed in the grid, allowing minions to be cast and
players to battle each other.

Star Trek plays on a 12-cards line, created before the game start by placing
missions, and seeded with dilemmas.

The space line
+ allows more cards to be present at the same location without causing confusion
+ it's a bit more "abstract" therefore better suited to model movement thru hyperspace

Overall, 1D line leaves less space for chess-like tactics (position-based interaction), 
in favour of more interaction at each location, which is a better fit for a Sci-Fi
game where locations are light-years apart, but each location is an entire solar
system where lots of things can happen.

Therefore, I'm keen to adopt the space line as a core mechanic, unless a *strictly*
better solution is found.

== Attributes

Star Trek has Cunning, Integrity, and Strength. 
Magic The Gathering has Attack/Defense. 
Sorcery has just Power.

I would like to play a game that isn't just combat, so I'd veer towards a higher attribute
count like in Star Trek.
Perhaps even higher as I also want to model force-sensitivity, psionics, and other classic
"space magic" found in the inspiring literature.

My current proposal is 4 attributes: 
+ charisma, for diplomacy and social combat,
+ intelligence, for scientific and egineering tasks,
+ strength, for combat and military activity,  
+ weird, for psionics, mysticism, and other space-wizardry.

But I'm open to options, especially about collapsing them to 3.

== Resources

I want a resource system for these reasons:
+ give a natural sense of progress and escalation to the game, by preventing the most powerful
  cards from being played at the very beginning
+ help give identity to factions, by having multiple resource "colors"

Magic The Gathering and Sorcery Contested Realm both use lands as resource-generators,
albeit in slightly different ways. Sorcery's way of handling it is such that:
+ You cannot be mana-screwed or mana-flooded
+ It's harder to be color-screwed
+ Because of the 2D-grid structure, your character can actually "walk" on the lands you play,
  making them feel more present, realistic, and meaningful.

Star Trek CCG had no resource system, and it sucked. I'm not gonna go there.

So, if I had to copy a system, it would be Sorcery's, but here I would like to come up with something
more original.

One concept I had in mind was having Personnel cards (roughly the requivalent of Magic's creatures or
Sorcery's minions) double as resource providers: you could play them on the space line as active
personnel, or you could play them in a "resource zone" in front of you and they would provide the
resources you need for the game (they could represent the unseen people in the galaxy that work to make
the main characters' adventures possible). 
Because the resource zone is physically distinct from the space line, you can play Personnel
always face up, with the following advantages:
+ Personnel can provide colored resources, and even have special effects when they are in the resource zone
+ Players can look at their beautiful cards, instead of having to look at the back of their card sleeves.

== Factions

What are factions? Do I even want them?

Star Trek CCG has hard, unmixable factions, plus some nonaligned cards that can be mixed-in in any deck.
But Star Trek has its own IP to respect, and I don't. 
Having unmixable factions is considered one of the 7 capital sins of TCGs. 
I'm not going to commit it.

Magic The Gathering and Sorcery Contested Realm don't have hard factions. 
Instead, they use resource colors to limit the variety of cards one can effectively put in a deck.
Then, they add "soft" factions, identified as minions/creatures subtypes, that one is free
to exploit or not.

Clearly, one way is better than the other. 
Yet, a common trope in space opera is unmixable factions like the Rebellion vs the Empire,
or the Foundation vs the Empire, or the league of worlds vs the Shadows. 
How do I reconcile these things?

My original idea was to create a handful of hard factions, with some limited mixability
(each faction's home world would provide additional rule text for how they can be mixed).
However, it requires to get the factions flavour right upfront.
Otherwise, some badly designed factions would poison the game forever.

A more viable solution would be a "soft factions" approach, where they are defined by 
playstyle and values rather than card restrictions. That would provide
+ More flexibility in Setting design, as a badly conceived faction may slowly fade
  away from the lore without affecting the game rules
+ More flexibility in deck creation, as players could find innovative ways to mix and
  match cards from different factions

at the cost of Setting design. 

I couldn't have classic Federation vs Klingons anymore.
They would have to be something that allows mixing. 
Or maybe not? Maybe preconstructed decks can be sold as single-factions, but players
can do whatever they want without needing a game designer to justify their deck.
  
== The Setting

No external Intellecual Property! Because:
+ I'm poor, I can't afford to buy one.
+ It's one of the 7 sins of TCGs.
+ I'd end up serving the IP; I'd have to design a game that serves the universe, 
  rather than designing a universe that serves my game.
  
That said, if I found some kind of "open source" setting compatible with the game,
I'd use it and tweak it if needed.
Or I may just reskin Josh Till's "Strange Stars", a little known space-opera RPG setting
created to be system-agnostic (it's got all the ingredients I need).

The Setting is especially important in combination with the Weird. 
"Strange Stars" has some weird everywhere, but some factions or species lean more heavily
into it.

For now I'll keep Strange Stars as the setting, and I'll reskin it later if I have to 
(but I may involve the authors instead and get their blessing for the game). 
This informs the main factions:
- The Alliance (charisma based)
- The Vokun Empire (strength based)
- The Instrumentality of Aom (combining strength and charisma)

The Alliance has the Deva with high weird, and the Smaragdine with low weird. 
The rest have none.

The Vokun Empire has the Yantrans and the Voidglider with medium-to-high weird. 
The rest have none.

The Instrumentality of Aom doesn't define any species in the book. 
We can assume that species from other factions appear here.
They can take low-, mid-, and high-weird species from there.

== The Win Condition

This is a game of exploration and diplomacy. 
Yes, combat, too, but the players' goal shouldn't be killing each other.
Rather, it should be furthering the goals of their faction/civilisation.

This was best represented by Star Trek CCG, with its missions and victory points (VP).
I'm keen on taking this wholesale, with a small tweak: 
rather than winning by reaching a fix target of VP, you win by having the highest VP
when *all* missions one the space line have been completed (or when the time is up, if
there is a time limit). 
This should create more incentive to players to attempt an opponent's missions or 
intefere with the opponent's attempts, rather than playing two solitaires.
Missions could be even written in such a way that forces players to interact.

== Exploration, Seeding, and Mission Completion

Bringing it all together.
How is the space line explored?
How are the manufacts seeded? Are they?
How can locations/missions interact with the seeded manufacts?

Some random ideas for locations: 
- locations are unsleeved, shuffled, and played face-down
  as initial space line
  - pro: fair distribution of missions between players
  - con: risk of mixing of cards between players
  - workaround: bring extra sleeves and put a marker in the front
- as above, but locations aren't unsleeved so that the owner remains known
  (if playing sleeveless, keep card orientation consistent)
  - pro: fair distribution
  - pro: easier of all
  - con: a bit less mystery
- locations are initially not on the space line (the blank slot is 
  reserved by another seeded card, or by a token). 
  When a ship first moves there, a location is drawn from 
  - the ship's controller's deck
    - pro: a player can control where his missions are placed
    - con: first player to move can spam the space line with his missions
    - workaround: ensure thru mulligans that a fast start is available to all?
  - a common deck with missions from both players
    - con: again, mixing ownership of cards
    - workaround: again, putting a marker in the front of the sleeve
  - the deck is chosen randomly
    - con: in case of bad luck one player's locations may not get placed

Some random ideas for manufacts:
- they're seeded at setup, 
  - one per player per slot; players know what they're placing where
  - one per player per slot, from a shuffled mini-deck (players don't know which manufact is where)
  - two per slot, from a shuffled common deck
    - players don't know what is where, but they'll be motivated to chase those locations with 2 of their manufacts

- they're not seeded; instead, locations/missions cause them to be pulled from a deck
  - when they're first revealed
  - when their text says so
  If so, pull them 
  - from the deck of the player that triggered the pull
  - from a common deck / a randomly chosen deck (it's effectively the same)

Does anything have to be seeded at all? 
Sorcery starts with an empty grid, which makes using a custom playmat almost mandatory.
With a 1-d space line, one could possibly start on an empty table even without aids, 
especially if ship movement rules are designed to help it.

The two players could place the initial locations next to each other (e.g. "place your
starting location on the righ of your opponent's"), then expand rightwards at first, 
then it depends. 

Locations should have different distances from the left and from the right:
the fastest path to another location isn't necessarily a direct jump.
Good starting locations have a very large distance to the left, and short to the right.
This way, the opponent's starting location would be physically close, but very far away
in hyperspace.

Would initial locations be just normal locations?

I'm converging towards this structure:

+ 4 locations per player are shuffled into a mini-deck
+ place 4 locations face-down
+ the opponent places his starting location
+ you place your starting location
+ place 4 more locations face-down
+ each player seeds 1 manufact face down under each face-down location.

Why I prefer seeding manufacts?
+ keep mission text short; by default, who completes a mission takes the manufacts
+ maintains _some_ flexibility, in that missions can still reference them
+ long term, few mission cards that pull manufacts from only one player may be 
  collected into a deck that pulls all manufacts from one player; this is to be avoided
  at all costs
+ missions can still generate token manufacts (like «ancient relic» or «unstable device»)

=== Parenthesis: on Manufacts
  
I'd like Manufact to be a card type that encompasses anything from tools, to weapons, to land vehicles, 
and even ancient relics. This is both to keep the game simple (need to write rules just for one card type)
and to help deck construction in limited environments (e.g. drafting), where one may not be able to draw
a plethora of ancient relics.

Some manufacts could be tokens generated by cards effects (and I envision this will be the only type of token
in the game).

End of parenthesis.

=== Jargon

/ CHA: charisma
/ INT: intelligence
/ Requisition: sort of equivalent to "summon" in Magic and Sorcery.
/ Scrap: to discard; I want the discard pile to be called "the scrapyard".
/ STR: strength
/ \#VP(N): _N_ Victory Points (a typst function that prints a small box with the number inside).
/ WPN: Ship weapon (equiv. to strength for Ships)
/ WRD: weird

=== Missions

```yaml
name: Mira's Nebula
type: Location
subtypes: [Space]
distances: [Left 10, Right 2]
text: |
  \#VP(5)
  On completion, Left distance becomes 2.
tracker: 
  - Analyse the structure of the nebula. Requires INT > 12.
  - |
    Hyperspace is leaking into realspace! Reveal the seeded Manufacts: requires WRD > 6+X, 
    where X is the highest cost among those Manufacts. If you fail, the Ship takes 1 damage.
  - |
    Use high energy beams to restore hyperspace structure. Requires WPN > 6+Y,
    where Y is the lowest cost of the seeded Manufacts.

---

name: The Grangian Civil War
type: Location
subtypes: [Planet]
distances: [Left 3, Right 6]
text: |
  Scrap a resource: requisition a *unique* Manufact Weapon token with «team has STR +1».
tracker: 
  - |
    \#VP(1)
    Deliver military supplies to an allied faction: scrap a Weapon from this away team.
  - |
    \#VP(2)
    Help them negotiate a peace deal: requires CHA > 10 - X, where X is the cost of the scrapped Weapon.

---

name: Aballian Jungle Expedition
type: Location
subtypes: [Planet]
distances: [Left 4, Right 4]
text: 
  \#VP(5)
tracker:
  - |
    Explore the jungle: requires INT+STR > 16 or scrap one Personnel.
  - | 
    Reveal the seeded Manufacts. Compare their cost with the highest INT, and separate
    those with cost > INT from the rest.
  - |
    Bring all Manufacts with cost > INT to your opponent starting Location.
      
```

== On What Ships Can Do

Can ships land on planets? 
Can they transport other ships? 
How many?
How do away teams land on planets if ships can't land?

The source material here isn't just scant: it's absent.
Nothing in the Strange Stars books tell us whether their ships can land, 
and how to get planetside if they can't.
But given my source material, most ships *can* land on planets.

I have vague memories about Star Trek CCG, but I think their ship couldn't land, 
untill a few expansions later when they added rules for landing, which were complicated
and unclear.
If I decide that they can land, I want to set out clear rules from the start, otherwise 
I swear never to make them land!

So, landing on a planet:
- pro: it's cool and source-appropriate
- con: complicates the rules (is landing an action? is it part of a move? how much range does it use up?)

Not landing on a planet: we can just assume that even small ships are large (and draw them accordingly),
and say that they have shuttles to move personnel and manufacts to and from orbit.
No "beam me up Scotty", please.

Ships carrying other ships is another common trope. 
The Enterprise with its shuttles, a Battlestar with its vipers, Andromeda with Bekka's transport.
Even Moya from farscape had a landing deck.

Star Trek CCG, indeed, allowed ships equipped with a tractor beam to carry a shuttle.
I can't remember if there were limits to how many shuttles (probably not, as you wouldn't 
want to play too many anyway).

Is it works adding cargo hold and size attributes to ships, and say that they can carry
any other ship as long as their size fits the cargo hold?
It would add a new dimension of play, for example there could be large manufacts that have
a size attribute and need a larger ship to carry them.
While I find all of this exciting, would it make the game more exciting?

Eventual decision: allow ships to carry other ships (have SIZ and Hold N), as SIZ
also double as toughness against combat damage, and the rules are simple.
Don't allow ships to land - just assume they have plenty of shuttles, as the interaction
surface between locations, personnel and ships is a lot and complex to cover with rules. 
Let's save it for a future expansion.

=== Summary of Hooks

Card effects may trigger at the following moments during a move:
- *Before departure*: Superluminal effects targeting the Ship at its origin
- *On transit*: Superluminal effects targeting the Ship at an intermediate location
- *On reveal*: effects on a face-down destination, resolved before arrival
- *On arrival*: effects triggered when the Ship exits hyperspace for the last time
- *When a Ship exits hyperspace*: effects that trigger on both transit and arrival
