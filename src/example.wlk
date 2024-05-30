class Persona{
	const enfermedades = []
	var property celulas
	var temperatura = 36
	
	method contraeEnfermedad(unaEnfermedad){ enfermedades.add(unaEnfermedad)}
	method aumentaTemperatura(valor){
		temperatura = 45.max(temperatura+valor)
	}
	method pasaUnDia(){	
	}
}

class Enfermedad{
	var celulas
	method celulasAmenazadas() = celulas
}

class EnfermedadInfecciosa inherits Enfermedad{
	
	method causaEfecto(persona){
		persona.aumentaTemperatura( 45.max(celulas/1000)) 
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
	var dias
	method causaEfecto(persona){
