// --- File: main.typ ---
// Este es el archivo principal que debes compilar.

// 1. Importar la función de portada desde el otro archivo [cite: 216]
#import "../cover/uaemex.typ": cover-page

// --- 2. LA PORTADA ---
// Llamamos a la función de portada con todos nuestros datos.
#cover-page(
  // Institución
  "../assets/img/uaeméx.png",
  // "Universidad Autónoma del Estado de México",
  // Nombre del proyecto
  "Proyecto de Ejemplo en Typst",
  
  // Autores (como una lista)
  (
    "Fernando Bryan Reza Campos",
    "Yusepe"
  ),
  // 

  faculty_logo: "../assets/img/fi-uaeméx.jpg",

  project_subtitle: "Un subtítulo genial para el proyecto",
  date: "Octubre 2025",

  // --- Metadatos Opcionales ---
  // (Puedes comentar o borrar estas líneas y desaparecerán de la portada)
  subject: "Nombre de la Materia",
  professor: "Prof. Que Revisa Tareas",
  group: "G01"
)

// --- 3. EL DOCUMENTO PRINCIPAL ---
// Aquí comienza el resto de tu reporte.

// Reiniciamos la numeración de página y configuramos el encabezado/pie. [cite: 412]
#set page(
  numbering: "1",
  // header: context align(center)[Mi Reporte Escolar],
  // footer: context align(center)[Página #counter(page).display()]
)
#counter(page).update(1) // Empezar a contar desde 1 [cite: 321]

// Tu contenido
= Introducción
#lorem(64)


= Capítulo 1

#lorem(128)
