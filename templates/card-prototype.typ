// ── Uncharted Void card prototype — Option B layout ─────────────────────────
// Card size: standard US playing card 63.5mm × 88.9mm

// ── Fonts ────────────────────────────────────────────────────────────────────
#set text(font: "Exo 2")

// ── Colour palette ──────────────────────────────────────────────────────────
#let attr-cha-sat   = rgb("#8b2fc9")
#let attr-int-sat   = rgb("#1a6bbf")
#let attr-str-sat   = rgb("#c0392b")
#let attr-wrd-sat   = rgb("#1a7a4a")
#let attr-cha-desat = rgb("#e8d8f0")
#let attr-int-desat = rgb("#d8eaf8")
#let attr-str-desat = rgb("#f8ddd8")
#let attr-wrd-desat = rgb("#d8f0e8")

#let black-bar  = rgb("#111111")
#let text-bg    = rgb(255, 255, 255, 220)
#let frame-col  = rgb("#111111")

// ── Helpers ──────────────────────────────────────────────────────────────────
#let affinity-pill(attr, color) = box(
  fill: color, radius: 2pt,
  inset: (x: 2pt, y: 1pt),
)[#text(fill: white, size: 4.5pt, weight: "bold")[#attr]]

#let affinity-stack(aff, color-fn) = stack(
  dir: ttb, spacing: 1.5pt,
  ..aff.map(a => affinity-pill(a, color-fn(a)))
)

#let attr-section(name, value, bg, sat, highlighted,
                  tl: 0pt, tr: 0pt, bl: 0pt, br: 0pt) = box(
  fill: if highlighted { sat } else { bg },
  inset: (x: 3pt, y: 3pt),
  width: 100%,
  radius: (top-left: tl, top-right: tr, bottom-left: bl, bottom-right: br),
)[#align(center)[
  #text(
    fill: if highlighted { white } else { bg.darken(60%) },
    size: 5.5pt, weight: "bold",
  )[#name #h(1pt) #value]
]]

// ── Card template ────────────────────────────────────────────────────────────
#let sophont-card(
  name:      "Unnamed Sophont",
  cost:      0,
  affinity:  (),
  subtypes:  (),
  cha: 0, int: 0, pstr: 0, wrd: 0,
  highlight: (),
  rules:     "",
  rarity:    "C",
  art:       none,
) = {

  let affinity-color(a) = {
    if a == "CHA"      { attr-cha-sat }
    else if a == "INT" { attr-int-sat }
    else if a == "STR" { attr-str-sat }
    else if a == "WRD" { attr-wrd-sat }
    else               { rgb("#888888") }
  }

  let r  = 4pt   // corner radius for bottom box
  let cs = 4mm   // cut size

  // Outer card — rounded corners, clips art to card shape
  block(
    width: 63.5mm, height: 88.9mm,
    clip: true, radius: 4pt,
  )[
    // ── Full-bleed art ──
    #place(top + left,
      if art != none {
        image(art, width: 63.5mm, height: 88.9mm, fit: "cover")
      } else {
        rect(width: 63.5mm, height: 88.9mm, fill: rgb("#2a3a4a"))
      }
    )

    // ── Card frame ──
    #place(top + left, dx: 2mm, dy: 2mm)[
      #block(
        width: 59.5mm, height: 84.9mm,
        stroke: 1pt + frame-col,
        fill: none,
      )[

        // ── Top bar ──
        #place(top + left)[
          #rect(
            fill: black-bar,
            width: 59.5mm,
            inset: (x: 1.2mm, y: 1.2mm),
          )[
            #set par(leading: 2pt)
            #grid(
              columns: (auto, auto, 1fr),
              column-gutter: 1.2mm,
              align(horizon)[
                #box(
                  fill: white,
                  radius: 3pt,
                  inset: (x: 3pt, y: 2pt),
                )[#text(fill: black-bar, size: 9pt, weight: "bold")[#cost]]
              ],
              align(horizon)[
                #affinity-stack(affinity, affinity-color)
              ],
              align(horizon)[
                #text(fill: white, size: 7.5pt, weight: "bold")[#name]
                #linebreak()
                #text(fill: rgb("#aaaaaa"), size: 5pt)[
                   #subtypes.join(" ") · *Sophont*
                ]
              ],
            )
          ]
        ]

        // ── Bottom box ──
        #place(bottom + left, dx: 2mm, dy: -2mm)[
          #block(
            width: 55.5mm,
            fill: text-bg,
            radius: r,
            stroke: 0.75pt + frame-col,
            clip: true,
            inset: 0mm,
          )[
            #block(
              width: 100%,
              inset: (x: 1.2mm, top: 1.2mm, bottom: 2mm),
            )[
              #text(fill: black-bar, size: 6pt)[#rules]
            ]
            #grid(
              columns: (1fr, 1fr, 1fr, 1fr),
              gutter: 0mm,
              attr-section("CHA", cha,  attr-cha-desat, attr-cha-sat,
                "CHA" in highlight, bl: r),
              attr-section("INT", int,  attr-int-desat, attr-int-sat,
                "INT" in highlight),
              attr-section("STR", pstr, attr-str-desat, attr-str-sat,
                "STR" in highlight),
              attr-section("WRD", wrd,  attr-wrd-desat, attr-wrd-sat,
                "WRD" in highlight, br: r),
            )
          ]
        ]

      ]
    ]

    // ── Cut corner with rarity circle ──
    //Frame bottom-right is at card coords (61.5mm, 86.9mm)
    #place(top + left,
      dx: 61.5mm - cs,
      dy: 86.9mm - cs,
    )[
      #polygon(stroke: 5pt + rgb("#2a3a4a"), fill: rgb("#2a3a4a"), (0mm, cs), (cs, 0mm), (cs, cs))
      #line(stroke: 1pt + frame-col, start: (cs, 0mm), end: (cs, cs))
    ]
    #place(top + left,
      dx: 61.5mm - cs * 0.72,
      dy: 86.9mm - cs * 0.72,
    )[#circle(radius: cs * 0.38, fill: black-bar)[
      #align(center + horizon)[
        #text(fill: white, size: 5pt, weight: "bold")[#rarity]
      ]
    ]]
  ]
}

// ── Page setup ───────────────────────────────────────────────────────────────
#set page(width: 63.5mm, height: 88.9mm, margin: 0mm)

// ── Sample card ──────────────────────────────────────────────────────────────
#sophont-card(
  name:      "Smaragdine Archon",
  cost:      4,
  affinity:  ("WRD", "CHA"),
  subtypes:  ("Smaragdine", "Commander", "VIP"),
  cha: 3, int: 2, pstr: 2, wrd: 4,
  highlight: ("WRD",),
  rules:     "Sophonts at this location with STR < 3 cannot act.",
  rarity:    "R",
)
