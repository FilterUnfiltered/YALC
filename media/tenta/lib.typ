#let tenta(course-code, institution, body) = {
  set text(font: "New Computer Modern", lang: "sv")
  show heading: set block(below: 2em)
  set math.equation(numbering: "(1)")
  stack(
    dir: ltr,
    [
      LINKÖPINGS UNIVERSITET\
      #institution \
    ],
    align(right)[
      #course-code\
      TEN1
    ],
  )
  body
}
