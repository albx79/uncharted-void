// ── Uncharted Void card prototype — Option B layout ─────────────────────────
// Card size: standard US playing card 63.5mm × 88.9mm

// ── Fonts ────────────────────────────────────────────────────────────────────
#set text(font: "Exo 2")

// ── Colour palette ──────────────────────────────────────────────────────────
#let attr-data = csv("../data/attrs.csv", delimiter: ";", row-type: dictionary)

#let attr-sat = {
  let res = (:)
  for r in attr-data {
    res.insert(r.at("NAM"), rgb(r.at("full-sat")))
  }
  res
}
#let attr-desat = {
  let res = (:)
  for r in attr-data {
    res.insert(r.at("NAM"), rgb(r.at("desat")))
  }
  res
}

#let black-bar = rgb("#111111")
#let text-bg = rgb(255, 255, 255, 220)
#let frame-col = rgb("#111111")

// ── Helpers ──────────────────────────────────────────────────────────────────
#let affinity-pill(attr, color) = box(
  fill: color,
  radius: 2pt,
  inset: (x: 2pt, y: 1pt),
)[#text(fill: white, size: 4.5pt, weight: "bold")[#attr]]

#let affinity-stack(aff, color-fn) = stack(
  dir: ttb,
  spacing: 1.5pt,
  ..aff.map(a => affinity-pill(a, color-fn(a))),
)

#let attr-section(name, value, bg, sat, highlighted, tl: 0pt, tr: 0pt, bl: 0pt, br: 0pt) = box(
  fill: if highlighted { sat } else { bg },
  inset: (x: 3pt, y: 3pt),
  width: 100%,
  radius: (top-left: tl, top-right: tr, bottom-left: bl, bottom-right: br),
)[#align(center)[
  #text(
    fill: if highlighted { white } else { bg.darken(60%) },
    size: 5.5pt,
    weight: "bold",
  )[#name #h(1pt) #value]
]]

// ── Card template ────────────────────────────────────────────────────────────
#let sophont-card(
  name: "Unnamed Sophont",
  cost: 0,
  affinity: (),
  subtypes: (),
  attrs: (),
  highlight: (),
  rules: "",
  rarity: "C",
  art: none,
) = {
  let affinity-color(a) = attr-sat.at(a)
  let r = 4pt
  let cs = 5mm

  block(
    width: 63.5mm,
    height: 88.9mm,
    clip: true,
    radius: 4pt,
  )[
    // ── Full-bleed art ──
    #place(top + left, if art != none {
      image(art, width: 63.5mm, height: 88.9mm, fit: "cover")
    } else {
      rect(width: 63.5mm, height: 88.9mm, fill: rgb("#2a3a4a"))
    })

    // ── Card frame polygon with cut corner ──
    #place(top + left, dx: 2mm, dy: 2mm)[
      #polygon(
        (0mm, 0mm),
        (59.5mm, 0mm),
        (59.5mm, 84.9mm - cs),
        (59.5mm - cs, 84.9mm),
        (0mm, 84.9mm),
        stroke: 1pt + frame-col,
        fill: none,
      )
    ]

    // ── Card content ──
    #place(top + left, dx: 2mm, dy: 2mm)[
      #block(width: 59.5mm, height: 84.9mm, fill: none)[

        // ── Top bar ──
        #place(top + left)[
          #block(
            fill: black-bar,
            inset: (x: 1.2mm, y: 1.2mm),
          )[
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
                // Stack with tight spacing instead of linebreak
                #stack(dir: ttb, spacing: 2.5pt,
                  text(fill: white, size: 7.5pt, weight: "bold")[#name],
                  text(fill: rgb("#aaaaaa"), size: 5pt)[
                    #subtypes.join(" · ") · *Sophont*
                  ],
                )
              ],
            )
          ]
        ]

        // ── Bottom box ──
        #place(bottom + left, dx: 2mm, dy: -2mm)[
          #block(
            clip: true,
            width: 55.5mm,
            fill: text-bg,
            radius: r,
            stroke: 0.75pt + frame-col,
            inset: 0mm,
          )[
            #block(
              width: 100%,
              inset: (x: 1.2mm, top: 1.2mm, bottom: 2mm),
            )[
              #text(fill: black-bar, size: 6pt)[#rules]
            ]
            #grid(
              columns: attrs.keys().map(_ => 1fr),
              gutter: 0mm,
              ..attrs
                .keys()
                .enumerate(start: 1)
                .map(x => {
                  let attr = x.at(1)
                  let i = x.at(0)
                  attr-section(
                    attr,
                    attrs.at(attr),
                    attr-desat.at(attr, default: gray),
                    attr-sat.at(attr, default: gray),
                    attr in highlight,
                    bl: if i == 1 { r } else { 0pt },
                    br: if (i == attrs.keys().len()) { r } else { 0pt },
                  )
                }),
            )
          ]
        ]
      ]
    ]

    // ── Rarity circle ──
    #place(top + left, dx: 61.5mm - cs * 0.72, dy: 86.9mm - cs * 0.72)[
      #circle(radius: cs * 0.38, fill: black-bar)[
        #align(center + horizon)[
          #text(fill: white, size: 5pt, weight: "bold")[#rarity]
        ]
      ]
    ]
  ]
}

// ── Page setup ───────────────────────────────────────────────────────────────
#set page(width: 63.5mm, height: 88.9mm, margin: 0mm)

// ── Sample card ──────────────────────────────────────────────────────────────
#sophont-card(
  name: "Smaragdine Archon",
  cost: 4,
  affinity: ("WRD", "CHA"),
  subtypes: ("Smaragdine", "Commander", "VIP"),
  attrs: (
    CHA: 3,
    INT: 2,
    STR: 2,
    WRD: 4,
  ),
  highlight: ("WRD",),
  rules: "Sophonts at this location with STR < 3 cannot act.",
  rarity: "R",
)
