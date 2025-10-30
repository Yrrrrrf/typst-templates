// main-complete.typ
// Ejemplo con todos los parámetros de la portada.

#import "../cover/uaemex.typ": cover-page

#cover-page(
  // --- Parámetros Académicos ---
  institute_name: "Universidad Autónoma del Estado de México",
  institute_logo: "../assets/img/uaeméx.png",

  faculty_name: "Facultad de Ingeniería",
  faculty_logo: "../assets/img/fi.png",

  // --- Parámetros del Proyecto ---
  project_name: "Análisis Avanzado de Algoritmos",
  project_type: "Proyecto Final",
  // date: date(),
  date: "28 de Octubre, 2025",

  // --- Datos Generales ---
  authors: (
    "Fernando Bryan Reza Campos",
    "Yusepe"
  ),
  subject: "Estructuras de Datos Avanzadas",
  professor: "Dr. Juan Pérez",
  group: "G-05"
)

// --- Comienzo del documento ---
#set page(numbering: "1")
#counter(page).update(1)

= Introducción
Este documento muestra el uso completo de la plantilla de portada actualizada.

#lorem(128)