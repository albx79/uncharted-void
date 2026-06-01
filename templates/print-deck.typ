// ── Uncharted Void — deck print sheet ───────────────────────────────────────
// Reads one or more deck CSVs, cross-references cards.csv, prints all copies
// Usage: typst compile print-deck.typ print-deck.pdf

#import "card.typ": draw-card

#set page(paper: "a4", margin: 0mm)

#let gutter  = 0.5mm
#let card-w  = 63.5mm
#let card-h  = 88.9mm
#let margin-x = (210mm - 3 * card-w - 2 * gutter) / 2
#let margin-y = (297mm - 3 * card-h - 2 * gutter) / 2
// #let guide   = 0.3pt + rgb("#aaaaaa")  // light grey, visible but unobtrusive
#let guide   = 0.5pt + gray

// ── Load card database ────────────────────────────────────────────────────────
#let card-db = {
  let db = (:)
  for row in csv("../data/cards.csv", delimiter: ";", row-type: dictionary) {
    db.insert(row.at("name"), row)
  }
  db
}

// ── Load a deck CSV and expand copies ────────────────────────────────────────
#let load-deck(path) = {
  let cards = ()
  for row in csv(path, delimiter: ";", row-type: dictionary) {
    let name   = row.at("name")
    let copies = int(row.at("copies", default: "1"))
    if name in card-db {
      for _ in range(copies) {
        cards.push(card-db.at(name))
      }
    } else {
      // Card not found — push a placeholder so the missing card is visible
      cards.push((
        name: "MISSING",
        type: "Unknown",
        subtypes: "[]",
        attrs: "{}",
        highlight: "[]",
        affty: "[]",
        text: "ERROR: *" + name + "* not found in cards.csv",
        rarity: "?",
        cost: "?",
        tracker: "[]",
      ))
    }
  }
  cards
}

// ── Load both decks ───────────────────────────────────────────────────────────
#let all-cards = (
  load-deck("../data/decks/alliance-starter.csv")
  + load-deck("../data/decks/vokun-starter.csv")
)

// ── Split into pages of 9 ────────────────────────────────────────────────────
#let chunks = {
  let res   = ()
  let chunk = ()
  for row in all-cards {
    chunk.push(row)
    if chunk.len() == 9 {
      res.push(chunk)
      chunk = ()
    }
  }
  if chunk.len() > 0 { res.push(chunk) }
  res
}

#let cutting-guides() = {
  // Vertical guides (card left/right edges)
  for col in range(4) {
    let x = margin-x + col * (card-w + gutter) - gutter / 2
    place(top + left, dx: x, dy: 0mm,
      line(stroke: guide, start: (0mm, 0mm), end: (0mm, 297mm))
    )
  }
  // Horizontal guides (card top/bottom edges)
  for row in range(4) {
    let y = margin-y + row * (card-h + gutter) - gutter / 2
    place(top + left, dx: 0mm, dy: y,
      line(stroke: guide, start: (0mm, 0mm), end: (210mm, 0mm))
    )
  }
}

// ── Render ────────────────────────────────────────────────────────────────────
#for chunk in chunks [
  #block(width: 210mm, height: 297mm)[
    #pad(left: margin-x, top: margin-y)[
      #grid(
        columns: (card-w, card-w, card-w),
        rows:    (card-h, card-h, card-h),
        gutter:  gutter,
        ..chunk.map(row => draw-card(row)),
      )
    ]
  ]
]
