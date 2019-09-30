import Localidades.*
import barrileteCosmico.*
class Usuario {
	var nombre
	var viajes // "reemplazaria" a los destinos - lugares en el TP1-
	var usuariosQueSigue
	var billeteraVirtualEnBarrileteCosmico
	constructor (unNombre,unosViajes,unosUsersQueSigue,unaBilleteraVirtual){
		nombre = unNombre
		viajes= unosViajes
		usuariosQueSigue= unosUsersQueSigue
		billeteraVirtualEnBarrileteCosmico = unaBilleteraVirtual
	}
	
//	var lugares =#{lastToninas,goodAiris} // los conoce de prepo
//	var usuariosQueSigue=[]
//	var billeteraVirtualEnBarrileteCosmico = 1500

	method agregarDestino(unDestino){
		viajes.add(unDestino)
	}
	
	method volarA(unDestino){
		if(self.alcanzaDinero(unDestino)){
			self.descontarDinero(unDestino)
			self.agregarDestino(unDestino)
		}
	}
	 
	method alcanzaDinero(unDestino){
		return (unDestino.precio() <= billeteraVirtualEnBarrileteCosmico)
	}
	method descontarDinero(unDestino){
		billeteraVirtualEnBarrileteCosmico -= unDestino.precio()
	}
	/*
	method kilometrosRecorridos(){
		return viajes.sum({unViaje=>unViaje.})
	}
	 */

	method perseguirAAlguien(unUsuario){
		usuariosQueSigue.add(unUsuario)
	}
	method devolverFollow(){
		self.perseguirAAlguien(self)
	}
	method plataQueTiene() = billeteraVirtualEnBarrileteCosmico
}
