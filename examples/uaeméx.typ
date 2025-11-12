// main-enhanced.typ
// Ejemplo de uso del script de portada mejorado.

#import "../cover/uaemex.typ": cover-page

#cover-page(
  // --- Parámetros Académicos (Obligatorios) ---
  institute_logo: "../assets/img/uaeméx.png",
  institute_name: "Universidad Autónoma del Estado de México",
  faculty_logo: "../assets/img/fi.png",
  faculty_name: "Facultad de Ingeniería",
  
  // --- Parámetros del Proyecto (Obligatorio) ---
  project_name: "Aplicación de Marcos de Referencia en Seguridad de la Información",

  // --- Datos Generales (Opcionales) ---
  semester: "agosto-diciembre (2025B)",
  subject: "Seguridad de la información",
  professor: "Juan Carlos Escobar Gonzales",
  group: "O2",
  authors: (
    "Fernando Bryan Reza Campos",
  ),
)

// --- Comienzo del documento ---
#set page(numbering: "1")
#counter(page).update(1)

= Resumen
Este documento es un ejemplo que utiliza la nueva portada mejorada.