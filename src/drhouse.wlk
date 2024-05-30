class Persona{
	const enfermedades = []
	var property celulas
	var temperatura = 36
	
	method temperatura() = temperatura
	method contraeEnfermedad(unaEnfermedad){ enfermedades.add(unaEnfermedad)}
	method aumentaTemperatura(valor){
		temperatura = temperatura+valor
	}
	method pasaUnDia(){	
		enfermedades.forEach({e=> e.causaEfecto(self) })
	}
	method destruirCelulas(cantidad){
		celulas = celulas - cantidad
	}
	method recibirMedicacion(cantidad){
		enfermedades.forEach({ e => e.celulas() - cantidad*15 })
	}

}

class Medico{
	method atenderPersona(unaPersona, medicamento){
		unaPersona.recibirMedicacion(medicamento)
	}
}

class Enfermedad{
	var celulas
	method celulasAmenazadas() = celulas
}

class EnfermedadInfecciosa inherits Enfermedad{
	
	method causaEfecto(persona){
		persona.aumentaTemperatura(celulas/1000) 
		}
	method reproducirse(){
		celulas = celulas * 2
	}
	method enfermedadesAgresivas(persona){
		return
		celulas > persona.celulas()/10
	}
}

class EnfermedadAutoinmune inherits Enfermedad{
	var dias = 0
	method causaEfecto(persona){
		persona.destruirCelulas(celulas)
		dias = dias +1
	}
	method enfermedadesAgresivas(persona){return dias >=30} 
}
class EnfermedadAutoinmune inherits Enfermedad{
	var dias
	method causaEfecto(persona){
