// ── Uncharted Void — unified card renderer ───────────────────────────────────
// Card size: standard European playing card card-w × card-h
#let card-w = 63mm
#let card-h = 88mm

// ── Colour palette ───────────────────────────────────────────────────────────
#let attr-data = csv("../data/attrs.csv", delimiter: ";", row-type: dictionary)

// #let attr-font = "Share Tech Mono"
// #let attr-font = "Space Mono"
#let attr-font = "Cascadia Code"
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

#let black-bar = black //rgb("#111111")
#let text-bg = rgb(255, 255, 255, 220)
#let frame-col = rgb("#111111")
#let name-size = 12pt
#let typeline-size = 8.5pt

// ── Shared helpers ────────────────────────────────────────────────────────────
#let styling(it) = {
  show "LAND_icon" : " " + box(stroke: text-bg+0.5pt, inset: (bottom: 2pt, rest: 0.5pt), baseline: 2pt, radius: 1pt, text(font: "Noto Emoji")[🥾])
  show "VOID_icon" : " " + box(stroke: text-bg+0.5pt, inset: (bottom: 2pt, rest: 0.5pt), baseline: 2pt, radius: 1pt, text(font: "Noto Emoji")[🌌])
  show "UNIQUE_icon" : " " + box(stroke: text-bg+0.5pt, inset: (bottom: 2pt, top: 0.5pt, x: 2pt), baseline: 1pt, radius: 1pt, text(font: "Noto Emoji")[★])
  it
}

#let VP = pts => [
  #show regex("\\w+|[^\\s]"): box.with(fill: black, inset: 2pt, radius: 1pt, baseline: 2pt)
  #text(fill: white, weight: "bold")[#pts]
]

#let affinity-pill(attr, color) = box(
  fill: color,
  radius: 2pt,
  inset: (x: 2pt, y: 1pt),
)[#text(fill: white, size: 4.5pt, weight: "bold", font: attr-font)[#attr]]

#let affinity-stack(aff) = stack(
  dir: ttb,
  spacing: 1.5pt,
  ..aff.map(a => affinity-pill(a, attr-sat.at(a, default: gray))),
)

#let cost-stack(cost, aff) = stack(
  dir: ttb,
  spacing: 1.5pt,
  ..(box(fill: white, radius: 3pt, inset: (x: 3pt, y: 2pt))[
    #text(fill: black-bar, size: 9pt, weight: "bold")[#cost]
  ],
  aff.map(a => affinity-pill(a, attr-sat.at(a, default: gray))),
  ).flatten()
)

#let attr-section(name, value, bg, sat, highlighted, tl: 0pt, tr: 0pt, bl: 0pt, br: 0pt) = box(
  fill: if highlighted { sat } else { bg },
  inset: (x: 3pt, y: 3pt),
  width: 100%,
  radius: (top-left: tl, top-right: tr, bottom-left: bl, bottom-right: br),
)[#align(center)[
  #text(
    fill: if highlighted { white } else { bg.darken(60%) },
    size: 10pt,
    weight: "bold",
    font: attr-font,
  )[
    #set par(leading: 2pt)
    #name #value
  ]
]]

// Render a horizontal attr strip from a dict
#let attr-strip(attrs, highlight) = [

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
        )
      }),
  )
]

// Card frame polygon with cut corner
#let card-frame(cs) = place(top + left, dx: 2mm, dy: 2mm)[
  #polygon(
    (0mm, 0mm),
    (card-w - 4mm, 0mm),
    (card-w - 4mm, card-h - 4mm - cs),
    (card-w - 4mm - cs, card-h - 4mm),
    (0mm, card-h - 4mm),
    stroke: 1pt + frame-col,
    fill: none,
  )
]

// Rarity circle
#let rarity-circle(cs, rarity) = place(
  top + left,
  dx: card-w - 2mm - cs * 0.72,
  dy: card-h - 2mm - cs * 0.72,
)[
  #circle(radius: cs * 0.38, fill: black-bar)[
    #align(center + horizon)[
      #text(fill: white, size: 5pt, weight: "bold")[#rarity]
    ]
  ]
]

// Full-bleed art or placeholder
#let card-art(art, orientation: "portrait") = place(top + left, if art != none {
  if orientation == "portrait" {
    image(art, width: card-w, height: card-h, fit: "cover")
  } else {
    rotate(90deg, image(art, width: card-h, height: card-w, fit: "cover"))
  }
} else {
  rect(width: card-w, height: card-h, fill: rgb("#2a3a4a"))
})

// #let rules-font = "Roboto"
// #let rules-font = "AgencyFB"
// #let rules-font = "Noto Sans"
#let rules-font = "Open Sans"
#let rules-block(rules: "", tracker: ()) = block(width: 100%, inset: (x: 1.2mm, top: 1.2mm, bottom: 0mm))[
  #set par(leading: 2pt)
  #text(fill: black-bar, size: 8.5pt, font: rules-font, fallback: true, weight: "regular")[
    #eval(rules, mode: "markup", scope: (VP: VP, cost: x => x)) // TODO render cost properly in rules text
    #if tracker.len() > 0 [
      #line(length: 100%, stroke: 0.2pt)
      #for step in tracker [
        - #eval(step, mode: "markup", scope: (VP: VP))
      ]
    ]
  ]
]

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

  block(width: card-w, height: card-h, clip: true, radius: 4pt)[
    #card-art(art)
    #card-frame(cs)

    #place(top + left, dx: 2mm, dy: 2mm)[
      #block(width: card-w - 4mm, height: card-h - 4mm, fill: none)[

        // Top bar
        #place(top + left)[
          #rect(fill: black-bar, width: card-w - 4mm, inset: (left: 0.2mm, rest: 0mm))[
            #grid(
              columns: (auto, auto),
              column-gutter: 1.2mm,
              cost-stack(cost, affinity),
              block(inset: (y: 1.2mm))[
                #stack(dir: ttb, spacing: 2.5pt, text(fill: white, size: name-size, weight: "bold")[#name], text(
                fill: rgb("#aaaaaa"),
                size: typeline-size,
              )[
                #context {
                  let content = [#subtypes.join(" ") · *#card-type*]
                  let len = measure(content)
                  let content = if len.width > 55mm {
                    [#subtypes.join(" ") #strong(card-type.slice(0, count: 4)).]
                  } else {
                    content
                  }
                  content
                }
              ])
              ],
            )
          ]
        ]

        // Bottom box
        #place(bottom + left, dx: 2mm, dy: -2mm)[
          #block(
            clip: true,
            width: card-w - 8mm,
            fill: text-bg,
            radius: r,
            stroke: 0.75pt + frame-col,
            inset: 0mm,
          )[
            #rules-block(rules: rules)
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

  block(width: card-w, height: card-h, clip: true, radius: 4pt)[
    #card-art(art)
    #card-frame(cs)

    #place(top + left, dx: 2mm, dy: 2mm)[
      #block(width: 59.5mm, height: 84.9mm, fill: none)[

        // Top bar
        #place(top + left)[
          #rect(fill: black-bar, width: 59.5mm, inset: (x: 0.2mm, y: 1.2mm))[
            #grid(
              columns: (12%, auto),
              column-gutter: 1.2mm,
              rotate(180deg, attr-strip(attrs, highlight)),
              stack(dir: ttb, spacing: 2.5pt, text(fill: white, size: name-size, weight: "bold")[#name], text(
                fill: rgb("#aaaaaa"),
                size: typeline-size,
              )[
                #context {
                  let content = [#subtypes.join(" ") · *#card-type*]
                  let len = measure(content)
                  if len.width > 50mm {
                    [#subtypes.join(" ") #strong(card-type.slice(0, count: 4)).]
                  } else {
                    content
                  }
                }
              ]),
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
            #rules-block(rules: rules, tracker: tracker)
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

// ── Dispatcher ────────────────────────────────────────────────────────────────
#let draw-card(row) = {
  show: styling
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
#set page(width: card-w, height: card-h, margin: 0mm)

// ── Sample renders ────────────────────────────────────────────────────────────
#draw-card(
  (
    name: "Test Sophont Card",
    type: "Sophont",
    cost: 4,
    affty: "[WRD, CHA]",
    subtypes: "[Smaragdine, Commander, VIP, UNIQUE_icon]",
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
  name: "Test Ship Card",
  type: "Ship",
  cost: 4,
  affty: "[WRD, STR]",
  subtypes: "[Smaragdine, Destroyer]",
  attrs: "{SIZ: 3, RNG: 2, WPN: 5}",
  highlight: "[]",
  text: "*Crew 2*\\ *Hold 1*",
  rarity: "R",
  tracker: "[]",
))

#pagebreak()

#draw-card((
  name: "Test Location Card",
  type: "Location",
  subtypes: "[Nebula, VOID_icon, LAND_icon]",
  cost: "",
  affty: "[]",
  attrs: "{HTN: a}",
  highlight: "[]",
  text: "#VP(5) On completion: add an HTN symbol of your choice.",
  tracker: "[Analyse the structure. Requires INT > 8., Hyperspace is leaking! Requires WRD > 8+X., Restore structure. Requires STR > 12+Y.]",
  rarity: "R",
))
