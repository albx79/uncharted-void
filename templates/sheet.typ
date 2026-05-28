// ── Uncharted Void — A4 print sheet ─────────────────────────────────────────
// 9 cards per sheet in a 3×3 grid, 2mm gutters

#import "card.typ": draw-card

#set page(paper: "a4", margin: 0mm)

#let gutter = 2mm
#let card-w  = 63.5mm
#let card-h  = 88.9mm

// Margins to centre the grid on A4
// A4 = 210 × 297mm
// Grid width  = 3 × 63.5 + 2 × 2 = 194.5mm → left margin = (210 - 194.5) / 2 = 7.75mm
// Grid height = 3 × 88.9 + 2 × 2 = 270.7mm → top margin  = (297 - 270.7) / 2 = 13.15mm
#let margin-x = (210mm - 3 * card-w  - 2 * gutter) / 2
#let margin-y = (297mm - 3 * card-h - 2 * gutter) / 2

#let all-cards = csv("../data/cards.csv", delimiter: ";", row-type: dictionary)

// Split into chunks of 9
#let chunks = {
  let res = ()
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
