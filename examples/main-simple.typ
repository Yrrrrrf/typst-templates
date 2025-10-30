// main-simple.typ
// Ejemplo con solo los parámetros mínimos y obligatorios.

#import "../cover/uaemex.typ": cover-page

#cover-page(
  // --- Parámetros Académicos (Obligatorios) ---
  institute_logo: "../assets/img/uaeméx.png",
  institute_name: "Universidad Autónoma del Estado de México",
  faculty_name: "Facultad de Ingeniería",
  project_name: "Tarea de Investigación Rápida"
)

// --- Comienzo del documento ---
#set page(numbering: "1")
#counter(page).update(1)

= Resumen
Este documento presenta la versión mínima de la portada.

#lorem(128)
