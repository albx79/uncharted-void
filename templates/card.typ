// ── Uncharted Void — unified card renderer ───────────────────────────────────
// Card size: standard US playing card 63.5mm × 88.9mm

// ── Colour palette ───────────────────────────────────────────────────────────
#let attr-data = csv("../data/attrs.csv", delimiter: ";", row-type: dictionary)
#let attr-sat = {
  let res = (:)
  for r in attr-data { res.insert(r.at("NAM"), rgb(r.at("full-sat"))) }
  res
}
#let attr-desat = {
  let res = (:)
  for r in attr-data { res.insert(r.at("NAM"), rgb(r.at("desat"))) }
  res
}

#let black-bar = rgb("#111111")
#let text-bg = rgb(255, 255, 255, 220)
#let frame-col = rgb("#111111")
#let name-size = 8pt
#let typeline-size = 6.5pt
#let VP = pts => [
     #show regex("\\w+|[^\\s]"): box.with(fill: black, inset: 2pt, radius: 1pt, baseline: 2pt)
     #text(fill: black, stroke: white)[#pts]
]

// ── Shared helpers ────────────────────────────────────────────────────────────

#let affinity-pill(attr, color) = box(
  fill: color,
  radius: 2pt,
  inset: (x: 2pt, y: 1pt),
)[#text(fill: white, size: 4.5pt, weight: "bold")[#attr]]

#let affinity-stack(aff) = stack(
  dir: ttb,
  spacing: 1.5pt,
  ..aff.map(a => affinity-pill(a, attr-sat.at(a, default: gray))),
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

// Render a horizontal attr strip from a dict
#let attr-strip(attrs, highlight) = grid(
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
      )
    }),
)

// Card frame polygon with cut corner
#let card-frame(cs) = place(top + left, dx: 2mm, dy: 2mm)[
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

// Rarity circle
#let rarity-circle(cs, rarity) = place(
  top + left,
  dx: 61.5mm - cs * 0.72,
  dy: 86.9mm - cs * 0.72,
)[
  #circle(radius: cs * 0.38, fill: black-bar)[
    #align(center + horizon)[
      #text(fill: white, size: 5pt, weight: "bold")[#rarity]
    ]
  ]
]

// Full-bleed art or placeholder
#let card-art(art) = place(top + left, if art != none {
  image(art, width: 63.5mm, height: 88.9mm, fit: "cover")
} else {
  rect(width: 63.5mm, height: 88.9mm, fill: rgb("#2a3a4a"))
})

// ── Portrait card (Sophont, Manufact, Event) ──────────────────────────────────
#let draw-portrait(
  name: "Unnamed",
  card-type: "Sophont",
  cost: 0,
  affinity: (),
  subtypes: (),
  attrs: (:),
  highlight: (),
  rules: "",
  rarity: "C",
  art: none,
) = {
  let r = 4pt
  let cs = 5mm

  block(width: 63.5mm, height: 88.9mm, clip: true, radius: 4pt)[
    #card-art(art)
    #card-frame(cs)

    #place(top + left, dx: 2mm, dy: 2mm)[
      #block(width: 59.5mm, height: 84.9mm, fill: none)[

        // Top bar
        #place(top + left)[
          #rect(fill: black-bar, width: 59.5mm, inset: (x: 1.2mm, y: 1.2mm))[
            #grid(
              columns: (auto, auto, 1fr),
              column-gutter: 1.2mm,
              align(horizon)[
                #box(fill: white, radius: 3pt, inset: (x: 3pt, y: 2pt))[
                  #text(fill: black-bar, size: 9pt, weight: "bold")[#cost]
                ]
              ],
              align(horizon)[#affinity-stack(affinity)],
              align(horizon)[
                #stack(dir: ttb, spacing: 2.5pt, text(fill: white, size: name-size, weight: "bold")[#name], text(
                  fill: rgb("#aaaaaa"),
                  size: typeline-size,
                )[
                  #subtypes.join(" ") · *#card-type*
                ])
              ],
            )
          ]
        ]

        // Bottom box
        #place(bottom + left, dx: 2mm, dy: -2mm)[
          #block(
            clip: true,
            width: 55.5mm,
            fill: text-bg,
            radius: r,
            stroke: 0.75pt + frame-col,
            inset: 0mm,
          )[
            #block(width: 100%, inset: (x: 1.2mm, top: 1.2mm, bottom: 2mm))[
              #text(fill: black-bar, size: 6pt)[#eval(rules, mode: "markup", scope: (VP: VP))]
            ]
            #if attrs.len() > 0 {
              attr-strip(attrs, highlight)
            }
          ]
        ]
      ]
    ]

    #rarity-circle(cs, rarity)
  ]
}

// ── Landscape card (Ship) ─────────────────────────────────────────────────────
#let draw-landscape(
  name: "Unnamed Ship",
  card-type: "Ship",
  cost: 0,
  affinity: (),
  subtypes: (),
  attrs: (:),
  highlight: (),
  rules: "",
  rarity: "C",
  art: none,
) = {
  let r = 4pt
  let cs = 5mm

  block(width: 63.5mm, height: 88.9mm, clip: true, radius: 4pt)[
    #card-art(art)
    #card-frame(cs)

    #place(top + left, dx: 2mm, dy: 2mm)[
      #block(width: 59.5mm, height: 84.9mm, fill: none)[

        // Left bar (becomes bottom bar when rotated CCW on table)
        #place(top + left)[
          #rotate(90deg, reflow: true, block(
            fill: black-bar,
            inset: (x: 1.2mm, y: 1.2mm),
          )[
            #grid(
              columns: (auto, 1fr, 20%),
              column-gutter: 1.2mm,
              // Cost + pills: counter-rotated to stay upright in hand
              rotate(-90deg, reflow: true, align(horizon)[
                #stack(
                  dir: ttb,
                  spacing: 2.5pt,
                  box(fill: white, radius: 3pt, inset: (x: 3pt, y: 2pt))[
                    #text(fill: black-bar, size: 9pt, weight: "bold")[#cost]
                  ],
                  affinity-stack(affinity),
                )
              ]),
              // Name + subtypes
              align(horizon)[
                #stack(dir: ttb, spacing: 2.5pt, text(fill: white, size: name-size, weight: "bold")[#name], text(
                  fill: rgb("#aaaaaa"),
                  size: typeline-size,
                )[
                  #subtypes.join(" ") · *#card-type*
                ])
              ],
              // Attr strip (right corner)
              attr-strip(attrs, highlight),
            )
          ])
        ]

        // Rules box
        #place(bottom + left, dx: 9mm, dy: -2mm)[
          #rotate(90deg, reflow: true, block(
            clip: true,
            width: 80.9mm,
            fill: text-bg,
            radius: r,
            stroke: 0.75pt + frame-col,
            inset: 0mm,
          )[
            #block(width: 100%, inset: (x: 1.2mm, top: 1.2mm, bottom: 1.2mm))[
              #text(fill: black-bar, size: 6pt)[#eval(rules, mode: "markup", scope: (VP: VP))]
            ]
          ])
        ]
      ]
    ]

    #rarity-circle(cs, rarity)
  ]
}

// ── Location card ─────────────────────────────────────────────────────────────
#let draw-location(
  name: "Unnamed Location",
  card-type: "Location",
  subtypes: (),
  attrs: (:),
  highlight: (),
  rules: "",
  tracker: (),
  rarity: "C",
  art: none,
) = {
  let r = 4pt
  let cs = 5mm

  block(width: 63.5mm, height: 88.9mm, clip: true, radius: 4pt)[
    #card-art(art)
    #card-frame(cs)

    #place(top + left, dx: 2mm, dy: 2mm)[
      #block(width: 59.5mm, height: 84.9mm, fill: none)[

        // Left bar
        #place(top + left)[
          #rotate(90deg, reflow: true, block(
            fill: black-bar,
            inset: (x: 1.2mm, y: 1.2mm),
          )[
            #grid(
              columns: (10%, 1fr, 10%),
              column-gutter: 1.2mm,
              // Attrs upside-down (counter-rotated + 180°)
              rotate(180deg, attr-strip(attrs, highlight)),
              // Name + subtypes: centered
              align(center + horizon)[
                #stack(
                  spacing: 2.5pt,
                  text(fill: white, size: name-size, weight: "bold")[#name],
                  text(fill: rgb("#aaaaaa"), size: typeline-size)[
                    #subtypes.join(" ") · *#card-type*
                  ],
                )
              ],
              // Attrs normal
              attr-strip(attrs, highlight),
            )
          ])
        ]

        // Rules + tracker box
        #place(bottom + left, dx: 9mm, dy: -2mm)[
          #rotate(90deg, reflow: true, block(
            clip: true,
            width: 80.9mm,
            fill: text-bg,
            radius: r,
            stroke: 0.75pt + frame-col,
            inset: 0mm,
          )[
            #block(width: 100%, inset: (x: 1.2mm, top: 1.2mm, bottom: 1.2mm))[
              #if rules != "" [
                #text(fill: black-bar, size: 6pt)[#rules]
                #v(1mm)
              ]
              #for step in tracker [
                #text(fill: black-bar, size: 5.5pt)[
                  #sym.bullet #h(0.5mm) #step
                ]
                #linebreak()
              ]
            ]
          ])
        ]
      ]
    ]

    #rarity-circle(cs, rarity)
  ]
}

// ── Dispatcher ────────────────────────────────────────────────────────────────
#let draw-card(row) = {
  set text(font: "Exo 2")

  let name = row.at("name")
  let card-type = row.at("type")
  let subtypes = yaml(bytes(row.at("subtypes")))
  let attrs = yaml(bytes(row.at("attrs")))
  let highlight = yaml(bytes(row.at("highlight")))
  let affinity = yaml(bytes(row.at("affty")))
  let rules = row.at("text", default: "")
  let rarity = row.at("rarity", default: "C")
  let cost = row.at("cost", default: "")
  let tracker = yaml(bytes(row.at("tracker")))
  // Use art if file exists — Typst will error if missing, so pass none for now
  let art = "../data/img/" + name + ".png"

  if card-type == "Location" {
    draw-location(
      name: name,
      card-type: card-type,
      subtypes: subtypes,
      attrs: attrs,
      highlight: highlight,
      rules: rules,
      tracker: tracker,
      rarity: rarity,
      art: art,
    )
  } else if card-type == "Ship" {
    draw-landscape(
      name: name,
      card-type: card-type,
      cost: cost,
      affinity: affinity,
      subtypes: subtypes,
      attrs: attrs,
      highlight: highlight,
      rules: rules,
      rarity: rarity,
      art: art,
    )
  } else {
    draw-portrait(
      name: name,
      card-type: card-type,
      cost: cost,
      affinity: affinity,
      subtypes: subtypes,
      attrs: attrs,
      highlight: highlight,
      rules: rules,
      rarity: rarity,
      art: art,
    )
  }
}

// ── Page setup ────────────────────────────────────────────────────────────────
#set page(width: 63.5mm, height: 88.9mm, margin: 0mm)

// ── Sample renders ────────────────────────────────────────────────────────────
#draw-card(
  (
    name: "Test Sophont Card",
    type: "Sophont",
    cost: 4,
    affty: "[WRD, CHA]",
    subtypes: "[Smaragdine, Commander, VIP]",
    attrs: "{CHA: 3, INT: 2, STR: 2, WRD: 4}",
    highlight: "[WRD]",
    tracker: "[]",
    text: "Tap _this_ ▶ make text *bold* and score #VP(2).",
    rarity: "R",
    art: none,
  ),
)

#pagebreak()

#draw-card((
  name: "Eidolon",
  type: "Ship",
  cost: 4,
  affty: "[WRD, STR]",
  subtypes: "[Smaragdine, Destroyer]",
  attrs: "{SIZ: 3, RNG: 2, WPN: 5}",
  highlight: "[]",
  text: "*Crew 2*\\ *Hold 1*",
  rarity: "R",
  tracker: "[]"
))

#pagebreak()

#draw-location(
  name: "Mira's Nebula",
  card-type: "Location",
  subtypes: ("Nebula", "Void"),
  attrs: (HTN: 3),
  highlight: (),
  rules: [#sym.star VP(5). On completion: gain HTN symbol.],
  tracker: (
    "Analyse the structure. Requires INT > 8.",
    "Hyperspace is leaking! Requires WRD > 8+X.",
    "Restore structure. Requires STR > 12+Y.",
  ),
  rarity: "R",
)
