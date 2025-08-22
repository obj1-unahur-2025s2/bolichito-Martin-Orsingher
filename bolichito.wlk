import objetos.*
import personas.*

object bolichito {
    var objetoEnVidriera = remera
    var objetoEnMostrador = pelota


    method objetoEnVidriera(unaCosa) {
        objetoEnVidriera = unaCosa
    }

    method objetoEnMostrador(unacOsa) { 
        objetoEnMostrador = unaCosa
    }

    method esBrillante() {
        return objetoEnMostrador.material().esBrillante() && objetoEnVidriera().material().esBrillante()
    }

    method esMonocromatico(){
        return objetoEnMostrador.color() == objetoEnVidriera().color()
    }

    method estaEquilibrado(){
        return objetoEnMostrador().peso() > objetoEnVidriera().peso()
    }

    method tieneObjetoDeColor(unColor){
        return objetoEnVidriera().color() == unColor or objetoEnMostrador().color() == unColor
    }    

    method puedeMejorar(){
        return !self.estaEquilibrado() or self.esMonocromatico()
    }

    method puedeOfrecerleAlgoA(unaPersona){
        return unaPersona().leGusta(objetoEnMostrador) or unaPersona().leGusta(objetoEnVidriera)
    }
}
