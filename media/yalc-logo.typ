#let light-blue = rgb("#00aabb")
#let dark-blue = rgb("#018289")

#set page(
  height: 1230pt,
  width: 1230pt,
  margin: 0pt,
  fill: none,
)

#set box(
  width: 100%,
  height: 100%,
)

#set place(center + horizon)

#box(
  radius: 4%,
  clip: true,
  inset: (
    top: -50%,
    right: -50%,
  ),
  box(
    fill: gradient.radial(
      light-blue,
      dark-blue,
    ),
  ),
)

#set text(
  size: 350pt,
  font: "Open Sans",
  fill: white,
)

#place[*YALC*]
