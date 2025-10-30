// cover/uaemex.typ
// Versión actualizada y mejorada de la portada.

#let cover-page(
	// --- Parámetros Académicos ---
	institute_logo: none,
	institute_name: none,
	faculty_name: none,
	faculty_logo: none, // Opcional

	// --- Parámetros del Proyecto ---
	project_name: none,
	project_type: none, // Opcional
	date: none, // Opcional

	// --- Datos Generales (Opcionales) ---
	authors: (),
	subject: none,
	professor: none,
	group: none,
) = {
	// --- Verificación de parámetros obligatorios ---
	if institute_logo == none { panic("El 'institute_logo' es obligatorio.") }
	if institute_name == none { panic("El 'institute_name' es obligatorio.") }
	if faculty_name == none { panic("El 'faculty_name' es obligatorio.") }
	if project_name == none { panic("El 'project_name' es obligatorio.") }

	// --- Configuración de la página ---
	set page(
		header: none,
		footer: none,
		numbering: none,
		margin: (top: 2.5cm, bottom: 2.5cm, x: 2.5cm)
	)

	// --- 1. SECCIÓN ACvADÉMICA (LOGOS Y NOMBRES) ---
	// Usamos un grid para colocar los logos en las esquinas superiores.
	grid(
	columns: (1fr, 1fr),
	align: center,

	// Columna Izquierda: Logo y nombre de la Institución
	stack(
		spacing: 0.9em, // Espacio entre logo y texto
		image(institute_logo, height: 4.5cm),
		text(16pt, weight: "bold")[#institute_name]
	),

	// Columna Derecha: Logo y nombre de la Facultad (si existe)
	if faculty_logo != none {
		stack(
		spacing: 0.9em,
		image(faculty_logo, height: 4.5cm), // Misma altura para consistencia
		text(16pt, weight: "bold")[#faculty_name]
		)
	},

	// Si no hay logo de facultad, el nombre va debajo, ocupando ambas columnas
	if faculty_logo == none {
		grid.cell(
		colspan: 2,
		text(16pt, weight: "bold")[#faculty_name]
		)
	}
	)


	// Si no hay logo de facultad, mostramos el nombre centrado debajo.
	if faculty_logo == none {
		v(1em)
		align(center, text(16pt, weight: "bold")[#faculty_name])
	}

	v(2fr) // Espaciador flexible

	// --- 2. SECCIÓN DEL PROYECTO ---
	align(center)[
		#if project_type != none {
			text(14pt, fill: gray)[#upper(project_type)]
			v(1.5em)
		}
		#text(22pt, weight: "bold")[#project_name]
		#if date != none {
			v(1.2em)
			text(14pt)[#date]
		}
	]

	v(3fr) // Espaciador flexible más grande

	// --- 3. SECCIÓN DE DATOS GENERALES ---
	grid(
		columns: (1fr, 1fr),
		align: top,
		// Columna Izquierda: Datos de la materia
		stack(
			spacing: 0.65em,
			if subject != none {
				[Materia: #text(weight: "bold")[#subject]]
			},
			if professor != none {
				[Profesor: #text(weight: "bold")[#professor]]
			},
			if group != none {
				[Grupo: #text(weight: "bold")[#group]]
			},
		),
		// Columna Derecha: Autores (en lista vertical)
		if authors.len() > 0 {
			stack(
				spacing: 0.65em,
				text(weight: "bold")[Autores:],
				..authors.map(author => [ #author ])
			)
		}
	)

	v(1fr) // Espaciador final
	}