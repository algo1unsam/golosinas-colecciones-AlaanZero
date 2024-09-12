class Golosina {
    var property precio  
    var property sabor = " "
    var property gluten = true
    var property peso = 0
}   

object bombon inherits Golosina (precio = 5 , sabor = "Frutilla",peso = 15,gluten = false ) {

    method tieneGluten() = gluten 
     
    method mordisquito() {
        if (peso>1){
            peso = (peso * 0.8) - 1
            return peso
            }
        else {
         return "Te la comiste toda goloso"
        }
    }

    
}

object alfajor inherits Golosina (precio = 12 , sabor = "Chocolate",peso=300,gluten = false) {

    method tieneGluten() = gluten 


    method mordisquito() {
        if (peso > 1){
            peso = (peso*0.8)
            return peso
        }else{
            return "Te comiste todo goloso"
        }
    }
}


object caramelo inherits Golosina(precio=1,sabor="frutilla",peso=5,gluten=true){

    method tieneGluten() = gluten 


    method mordisquito() {
        if (peso > 1){
            peso -= 1
            return peso
        }else{
            return "Te comiste todo goloso"
        }
    }
}

object chupetin inherits Golosina(precio=2,sabor="naranja",peso=7,gluten=false){
    
    method tieneGluten() = gluten 

    method mordisquito() {
        if (peso > 2){
            peso = (peso*0.9)
            return peso
        }else{
            return peso
        }
    }
}

object oblea inherits Golosina(precio=5 , sabor ="vainilla", peso = 250, gluten = true) {

    method tieneGluten() = gluten 


        method mordisquito() {
        if (peso > 70){
            peso = (peso*0.5)
            return peso
        }else{
            peso = (peso*0.75)
            return peso
        }
    }
}

object chocolatin inherits Golosina (precio = 0 , sabor = "chocolate" , gluten = false, peso=0) {
    
    var pesoInicial = peso 
    var precios = 0

    method asignarPeso(nuevoPeso) {
        pesoInicial = nuevoPeso
        peso = nuevoPeso
        precios = pesoInicial * 0.5
        return precios
    }

    method mordisquito() {
        if (peso > 2) {
            peso = peso - 2
        }return "Te lo comiste todo"

    }

    method tieneGluten() = gluten 

}

// Golosina Bañada
object banado inherits Golosina (precio = 2, sabor = " ", gluten = false, peso=4) {

    var golosinaBase = null 
    var banadoRestante = 4 

    method queGolosina(golosina) {
        golosinaBase = golosina
        peso = golosinaBase.peso() + 4
        precio = golosinaBase.precio() +2 
        sabor = golosinaBase.sabor()
        gluten =  golosinaBase.gluten()
    }

    method mordisquito() {
        if (banadoRestante > 0) {
            banadoRestante -= 2
            peso -= 2
        } else {
            golosinaBase.mordisquito()
            peso = golosinaBase.peso() 
        }
        return peso
    }

    method tieneGluten() = gluten 

}
    

object tuti inherits Golosina (precio = 7 , sabor = "chocolate" , gluten = false, peso=5) {
var property sabores = ["frutilla" , "chocolate" , "naranja"]
var sabore = ""
method glutenT (valor) {
  if (valor){
    precio = 7
  }else {
    precio = 10
  }
}

method mordisquito() {
  sabore = sabores.first()
  sabores.remove(sabore)
  sabores.add(sabore)
  return sabore
}
    method tieneGluten() = gluten 
}

object mariano {

    var property bolsaGolosinas =  []
    
    method queTengo() = bolsaGolosinas

    method comprar (unaGolosina){
        bolsaGolosinas.add(unaGolosina)
    }
    
    method desechar (unaGolosina){
        bolsaGolosinas.remove(unaGolosina)
    }

    method probarGolosina() {
      bolsaGolosinas.forEach({golosina => golosina.mordisquito()})
      return "La mordiste toda goloso"
    }
    //con any con que 1 solo cumpla te devuelve
    method tiene() = bolsaGolosinas.any({golosina => golosina.tieneGluten()})

    //con all se tienen que cumplir TODOS
    method preciosCuidados() = (bolsaGolosinas.all({golosina => golosina.precio()>10}))
    
    
    }