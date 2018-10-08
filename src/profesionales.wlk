// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar(){
		// TODO Mal indentado.
	return	universidad.provincia()
	}
	method honorariosPorHora(){
		// TODO Mal indentado.
	return	universidad.honorarios()
	}
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var property universidad
	var property honorarios
	// TODO Ojo con inicializar las variables con colecciones vacías, ¿entendés por qué lo hacés?
	var property provinciasQueTrabaja= #{}
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method honorariosPorHora(){return honorarios}
	method provinciasDondePuedeTrabajar(){return provinciasQueTrabaja}
}

class Universidad{
	var property honorarios
	var property provincia
}

class EmpresaDeServicios{
	var honorariosReferencia
	var profesionales =#{}
	
	method honorariosReferencia(){return honorariosReferencia}

	// TODO GRAVE - No tiene sentido recibir la empresa por parámetro.	
	method profesionalesCaros(empresa)=
	return profesionales.filter{elemento => elemento.honorariosPorHora()>empresa.honorariosReferencia() }
	
	// TODO GRAVE - No tiene sentido recibir la empresa por parámetro.	
	method universidadesFormadoras(empresa){
		// TODO For each no devuelve nada.
		return profesionales.forEach{elemento=> elemento.universidad()}
	}
	
	// TODO GRAVE - No tiene sentido recibir la empresa por parámetro.	
	method profesionalMasBarato(empresa)
		{return profesionales.min{elemento=> elemento.honorariosPorHora()}
	}
	
	method provinciaEstaCubierta(provincia){
		return profesionales.any{elemento=>elemento.provinciasDondePuedeTrabajar()== provincia}
	}
	
	method profesionalesQueTrabajaronEn(universidad){
		// TODO Mejor usar count para esto.
	return	profesionales.filter{elemento=>elemento.universidad()==universidad}.size()
	}
}






