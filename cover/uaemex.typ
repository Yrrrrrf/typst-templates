// cover/uaemex.typ
// Versión actualizada para un diseño centrado y con más detalles académicos.

#let cover-page(
  // --- Parámetros Académicos ---
  institute_logo: none,
  institute_name: none,
  faculty_name: none,
  faculty_logo: none,

  // --- Parámetros del Proyecto ---
  project_name: none,

  // --- Datos Generales (Opcionales) ---
  authors: (),
  subject: none,
  professor: none,
  group: none,
  semester: none,
  date: none,
) = {
  // --- Verificación de parámetros obligatorios ---
  if institute_logo == none { panic("El 'institute_logo' es obligatorio.") }
  if institute_name == none { panic("El 'institute_name' es obligatorio.") }
  if faculty_name == none { panic("El 'faculty_name' es obligatorio.") }
  if faculty_logo == none { panic("El 'faculty_logo' es obligatorio.") }
  if project_name == none { panic("El 'project_name' es obligatorio.") }

  // --- Configuración de la página ---
  set page(
    header: none,
    footer: none,
    numbering: none,
    margin: (top: 2.5cm, bottom: 2.5cm, x: 2.5cm)
  )
  // set text(font: "Linux Libertine", lang: "es")

  // --- 1. SECCIÓN DE LOGOS Y NOMBRES ---
  grid(
    columns: (1fr, 2fr, 1fr),
    align: center + horizon,

    // Izquierda
    image(institute_logo, height: 3cm),
    // Centro
    stack(
      spacing: 0.8em,
      text(16pt, weight: "bold")[#institute_name],
      text(14pt)[#faculty_name]
    ),
    // Derecha
    image(faculty_logo, height: 3cm),
  )

  v(1fr) // Espaciador flexible

  // --- 2. SECCIÓN DEL PROYECTO ---
  align(center)[
    #text(18pt, weight: "bold")[“#project_name”]
  ]

  v(1fr) // Espaciador flexible

  // --- 3. SECCIÓN DE AUTORES ---
  if authors.len() > 0 {
    align(center, stack(
      spacing: 0.65em,
      ..authors.map(author => text(12pt, weight: "bold")[#author])
    ))
  }

  v(1fr) // Espaciador flexible

  // --- 4. SECCIÓN DE DATOS ACADÉMICOS ---
  align(center, stack(
    spacing: 1.6em,
    if semester != none { text(12pt)[Semestre: #semester] },
    if subject != none { text(12pt)[#subject] },
    if professor != none { text(12pt)[Profesor: #professor] },
    if group != none { text(12pt)[Grupo: #group] },
  ))

  v(2fr) // Espaciador flexible más grande

  // --- 5. FECHA ---
  if date != none {
    align(center, text(12pt)[#date])
  }

  v(1fr) // Espaciador final
}