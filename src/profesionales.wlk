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
	return	universidad.provincia()
	}
	method honorariosPorHora(){
	return	universidad.honorarios()
	}
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var property universidad
	var property honorarios
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
	
	method profesionalesCaros(empresa)=
	return profesionales.filter{elemento => elemento.honorariosPorHora()>empresa.honorariosReferencia() }
	
	method universidadesFormadoras(empresa){
		return profesionales.forEach{elemento=> elemento.universidad()}
	}
	
	method profesionalMasBarato(empresa)
		{return profesionales.min{elemento=> elemento.honorariosPorHora()}
	}
	
	method provinciaEstaCubierta(provincia){
		return profesionales.any{elemento=>elemento.provinciasDondePuedeTrabajar()== provincia}
	}
	
	method profesionalesQueTrabajaronEn(universidad){
	return	profesionales.filter{elemento=>elemento.universidad()==universidad}.size()
	}
}






