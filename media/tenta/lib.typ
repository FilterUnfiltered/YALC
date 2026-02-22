#let tenta(course-code, body) = {
  set text(font: "New Computer Modern", lang: "sv")
  show heading: set block(below: 2em)
  set math.equation(numbering: "(1)")
  stack(
    dir: ltr,
    [
      LINKÖPINGS UNIVERSITET\
      Matemtaiksta instituonen\
      Igenstämplad matematris
    ],
    align(right)[
      #course-code\
      TEN1
    ],
  )
  body
}
