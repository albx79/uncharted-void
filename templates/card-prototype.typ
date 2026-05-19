// ── Uncharted Void card prototype ──────────────────────────────────────────
// Card size: standard US playing card 63.5mm × 88.9mm
// Layout: full-art background, floating UI elements on top

// ── Colour palette ──────────────────────────────────────────────────────────
#let attr-cha-sat   = rgb("#8b2fc9")
#let attr-int-sat   = rgb("#1a6bbf")
#let attr-str-sat   = rgb("#c0392b")
#let attr-wrd-sat   = rgb("#1a7a4a")
#let attr-cha-desat = rgb("#e8d8f0")
#let attr-int-desat = rgb("#d8eaf8")
#let attr-str-desat = rgb("#f8ddd8")
#let attr-wrd-desat = rgb("#d8f0e8")
#let attr-rng-sat   = rgb("#0a6a9a")
#let attr-wpn-sat   = rgb("#b04a10")
#let attr-siz-sat   = rgb("#555555")
#let attr-lft-sat   = rgb("#7a7a20")
#let attr-rgt-sat   = rgb("#a06020")

// Semi-transparent overlays for text boxes
#let overlay-dark  = rgb(0, 0, 0, 160)   // 63% opacity black
#let overlay-light = rgb(0, 0, 0, 120)   // 47% opacity black

// ── Helper: affinity pill (small, stackable) ────────────────────────────────
#let affinity-pill(attr, color) = box(
  fill: color,
  radius: 2pt,
  inset: (x: 2pt, y: 1pt),
)[
  #text(fill: white, size: 4.5pt, weight: "bold")[#attr]
]

// ── Helper: stacked affinity pills column ───────────────────────────────────
#let affinity-stack(affinity, color-fn) = stack(
  dir: ttb,
  spacing: 1pt,
  ..affinity.map(a => affinity-pill(a, color-fn(a)))
)

// ── Helper: attribute box (inline name + value) ─────────────────────────────
#let attr-box(name, value, bg-color, sat-color, highlighted: false) = box(
  fill: if highlighted { sat-color } else { bg-color },
  stroke: none,
  radius: 2pt,
  inset: (x: 3pt, y: 2pt),
)[
  #text(
    fill: if highlighted { white } else { bg-color.darken(70%) },
    size: 6pt,
    weight: "bold",
  )[#name #h(1pt) #value]
]

// ── Helper: floating box with dark overlay ──────────────────────────────────
#let card-box(content, width: auto) = box(
  fill: overlay-dark,
  radius: 4pt,
  inset: (x: 5pt, y: 4pt),
  width: width,
)[#content]

// ── Card template ───────────────────────────────────────────────────────────
#let sophont-card(
  name:      "Unnamed Sophont",
  cost:      0,
  affinity:  (),       // list of attr strings e.g. ("CHA", "STR")
  subtypes:  (),       // list of subtype strings
  cha: 0, int: 0, str: 0, wrd: 0,
  highlight: (),       // list of highlighted attr names
  rules:     "",
  art:       none,     // path to art file, or none for placeholder
) = {
  // Affinity colour lookup
  let affinity-color(a) = {
    if a == "CHA" { attr-cha-sat }
    else if a == "INT" { attr-int-sat }
    else if a == "STR" { attr-str-sat }
    else if a == "WRD" { attr-wrd-sat }
    else { rgb("#888888") }
  }

  // Attribute background colour lookup
  let attr-bg(a) = {
    if a == "CHA" { attr-cha-desat }
    else if a == "INT" { attr-int-desat }
    else if a == "STR" { attr-str-desat }
    else if a == "WRD" { attr-wrd-desat }
    else { rgb("#eeeeee") }
  }

  block(
    width: 63.5mm,
    height: 88.9mm,
    clip: true,
    radius: 4pt,
    stroke: 0.5pt + rgb("#333333"),
  )[
    // ── Background art (or placeholder) ──
    #place(top + left,
      if art != none {
        image(art, width: 63.5mm, height: 88.9mm, fit: "cover")
      } else {
        // Placeholder gradient-like background using a rect
        rect(
          width: 63.5mm,
          height: 88.9mm,
          fill: rgb("#2a3a4a"),
        )
      }
    )

    // ── Top bar: cost + stacked pills + name ──
    #place(top + left, dx: 2mm, dy: 2mm)[
      #card-box(width: 59.5mm)[
        #grid(
          columns: (auto, auto, 1fr),
          gutter: 2mm,
          align(left + horizon)[
            // Cost circle
            #box(
              fill: white,
              radius: 5pt,
              inset: (x: 3pt, y: 2pt),
            )[
              #text(fill: rgb("#111111"), size: 8pt, weight: "bold")[#cost]
            ]
          ],
          align(left + horizon)[
            #affinity-stack(affinity, affinity-color)
          ],
          align(left + horizon)[
            #text(fill: white, size: 7pt, weight: "bold")[#name]
          ],
        )
      ]
    ]

    // ── Subtype bar (close to top bar) ──
    #place(top + left, dx: 2mm, dy: 9mm)[
      #card-box()[
        #text(fill: rgb("#cccccc"), size: 5.5pt)[
          Sophont · #subtypes.join(" · ")
        ]
      ]
    ]

    // ── Rules text box ──
    #place(bottom + left, dx: 2mm, dy: -9mm)[
      #card-box(width: 59.5mm)[
        #text(fill: white, size: 6pt)[#rules]
      ]
    ]

    // ── Attribute row (below rules, at very bottom) ──
    #place(bottom + left, dx: 2mm, dy: -2mm)[
      #grid(
        columns: (1fr, 1fr, 1fr, 1fr),
        gutter: 1mm,
        attr-box("CHA", cha, attr-cha-desat, attr-cha-sat, highlighted: "CHA" in highlight),
        attr-box("INT", int, attr-int-desat, attr-int-sat, highlighted: "INT" in highlight),
        attr-box("STR", str, attr-str-desat, attr-str-sat, highlighted: "STR" in highlight),
        attr-box("WRD", wrd, attr-wrd-desat, attr-wrd-sat, highlighted: "WRD" in highlight),
      )
    ]
  ]
}

// ── Page setup ──────────────────────────────────────────────────────────────
#set page(
  width: 63.5mm,
  height: 88.9mm,
  margin: 0mm,
)

// ── Render a sample card ─────────────────────────────────────────────────────
#sophont-card(
  name:     "Smaragdine Archon",
  cost:     4,
  affinity: ("WRD", "CHA"),
  subtypes: ("Smaragdine", "Commander", "VIP"),
  cha: 3, int: 2, str: 2, wrd: 4,
  highlight: ("WRD",),
  rules:    "Sophonts at this location with STR < 3 cannot act.",
)
