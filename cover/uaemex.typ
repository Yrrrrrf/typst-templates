// --- File: cover-uaemex.typ ---
// Define la función para crear tu portada estilo UAEMéx.

#let cover-page(
  // Argumentos requeridos
  institute_logo,
  project_name,
  authors,

  // Argumentos opcionales (puedes borrarlos o dejarlos en `none`)
  faculty_logo: none,
  project_subtitle: none,
  date: none,
  subject: none,
  professor: none,
  group: none
) = {
  // --- Configuración de la Página ---
  // Una página limpia, sin encabezado, pie de página o numeración.
  set page(
    header: none,
    footer: none,
    numbering: none,
    margin: (top: 3cm, bottom: 2.5cm, x: 2.5cm)
  )

  // Espaciador vertical flexible para empujar el contenido [cite: 231]
  v(1fr)

  // --- Bloque Superior (Logo Instituto y Título) ---
  align(center)[
    // Logo principal de la universidad
    #image(institute_logo, width: 9cm)

    #v(2cm)

    // Título del Proyecto (en color naranja/rojo de la imagen)
    #text(size: 20pt, weight: "bold", fill: rgb("#C93312"))[
      #project_name
    ]

    // Subtítulo (solo si se proporciona)
    #if project_subtitle != none {
      v(0.6cm)
      text(size: 16pt, style: "italic", fill: gray)[
        #project_subtitle
      ]
    }
  ]

  // Espaciador flexible más grande para empujar hacia abajo
  v(3fr)

// --- Bloque Medio (Metadatos Opcionales y Autores) ---
  align(center)[

    // Metadatos de la materia (solo aparecen si se proporcionan)
    #if subject != none or professor != none or group != none {
      // 1. Primero, construimos un arreglo con los items que SÍ existen
      let metadata_items = ()
      if subject != none {
        metadata_items.push("Materia:")
        metadata_items.push(text(weight: "bold")[#subject])
      }
      if professor != none {
        metadata_items.push("Profesor:")
        metadata_items.push(text(weight: "bold")[#professor])
      }
      if group != none {
        metadata_items.push("Grupo:")
        metadata_items.push(text(weight: "bold")[#group])
      }
      
      // 2. Segundo, pasamos ese arreglo a la grid usando el operador "spread" (..)
      grid(
        columns: (auto, 1fr),
        align: left,
        column-gutter: 1em,
        ..metadata_items
      )
      v(1.5cm) // Espacio después del bloque de metadatos
    }

    // Fecha (solo si se proporciona)
    #if date != none {
      text(size: 14pt, fill: gray)[
        #date
      ]
      v(10pt)
    }

    // Autores (convertidos a mayúsculas y separados por comas)
    #text(size: 14pt, weight: "bold")[
      #authors.map(s => upper(s)).join(", ")
    ]
  ]

  // Espaciador flexible final
  v(1fr)

  // --- Bloque Inferior (Logos Secundarios) ---
  let bottom_logos = ()
  if faculty_logo != none {
    bottom_logos.push(image(faculty_logo, width: 6.5cm))
  }

  grid(
    columns: (1fr,) * bottom_logos.len(), // Columnas iguales para cada logo [cite: 233]
    align: center + horizon,
    gutter: 1cm,
    ..bottom_logos // "Sprea" el arreglo de logos en la grid [cite: 239]
  )
}