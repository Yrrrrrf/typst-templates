// --- File: cover.typ ---
// This file defines the function that creates your cover page.

#let cover-page(
  title: [My Project Title],
  subtitle: "My Subtitle",
  author: "My Name",
  date: "Month Year",
  logo-watermark: "logo.png",
  logos-bottom: ()
) = {
  // --- Page Setup ---
  // Set this page to have no header, footer, or page number.
  set page(
    header: none,
    footer: none,
    numbering: none,
    margin: (top: 3cm, bottom: 2cm, x: 2.5cm)
  )

  // We use fractional spacing (1fr) to push content around vertically
  // This is a great way to use the `v` (vertical spacing) function. [cite: 227, 231]
  v(1fr)

  // --- Top Block (Watermark, Title, Subtitle) ---
  align(center)[
    #image(logo-watermark, width: 9cm)

    // Title
    #v(1.5cm)
    #text(size: 22pt, weight: "bold", fill: rgb("#004080"))[
      // The title is passed as "content" so it can have line breaks [cite: 247]
      #title
    ]

    // Subtitle
    #v(0.5cm)
    #text(size: 16pt, style: "italic", fill: gray)[
      #subtitle
    ]
  ]

  // This spacer takes up twice as much flexible space as the other
  // 'v(1fr)' spacers, pushing the top and bottom blocks apart.
  v(2fr)

  // --- Middle Block (Date, Author) ---
  align(center)[
    #text(size: 14pt, fill: gray)[
      #date
    ]
    #v(10pt)
    #line(length: 3cm, stroke: 0.5pt + gray) // The separator
    #v(10pt)
    #text(size: 14pt, weight: "bold", fill: gray)[
      // We'll automatically uppercase the author's name
      #upper(author)
    ]
  ]

  v(1fr)

  // --- Bottom Block (Logos) ---
  // We use a grid to align the bottom logos horizontally [cite: 103]
  grid(
    columns: (1fr,) * logos-bottom.len(), // Create equal columns for each logo
    align: center + horizon,
    gutter: 1cm,
    // We use the "spread" operator (...) to pass the array of logos [cite: 239]
    ..logos-bottom.map(logo => image(logo, width: 4cm, height: auto))
  )
}