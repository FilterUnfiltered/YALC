#let light-blue = rgb("#00aabb").lighten(40%)
#let dark-blue = rgb("#018289").darken(10%)
#let white = white

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

#set text(
  size: 350pt,
  font: "Open Sans",
  fill: white,
)


#place(
  top,
  dx: 0.3em,

  box(
    width: 70%,
    height: 70%,

    radius: 100%,
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
  ),
)

#place(
  dx: 1.2em,
  dy: .8em,

  box(
    width: 60%,
    height: 60%,

    radius: 100%,
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
  ),
)

#place(
  bottom,
  dx: .5em,

  box(
    width: 50%,
    height: 50%,

    radius: 100%,
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
  ),
)

#place(
  bottom,
  dy: -0.5em,

  {
    box(
      width: 50%,
      height: 50%,

      radius: 15%,
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
    place(
      center + horizon,
      image(
        bytes(
          read("kys.svg").replace(
            "#000000",
            white.to-hex(),
          ),
        ),
        height: 1.3em,
      ),
    )
  },
)
