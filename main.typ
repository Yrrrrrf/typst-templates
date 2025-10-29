// main.typ
// Este es el archivo principal que debes compilar.

#import "../cover/uaemex.typ": cover-page

#cover-page(
  // Institución
  "../assets/img/uaeméx.png",
  // Nombre del proyecto
  "Proyecto de Ejemplo en Typst",
  // Autores (como una lista)
  (
    "Fernando Bryan Reza Campos",
    "Yusepe"
  ),

  faculty_logo: "../assets/img/fi-uaeméx.jpg",
  project_subtitle: "Un subtítulo genial para el proyecto",
  date: "Octubre 2025",
  subject: "Nombre de la Materia",
  professor: "Prof. Que Revisa Tareas",
  group: "G01"
)

// Reiniciamos la numeración de página y configuramos el encabezado/pie
#set page(
  numbering: "1",
  // header: context align(center)[Mi Reporte Escolar],
  // footer: context align(center)[Página #counter(page).display()]
)
#counter(page).update(1) // Empezar a contar desde 1

= Introducción

#lorem(64)

= Capítulo 1

#lorem(128)
