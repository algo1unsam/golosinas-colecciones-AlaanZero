class Golosina {
    var property precio  
    var property sabor = " "
    var property gluten = true
    var property peso = 0
}   

object bombon inherits Golosina (precio = 5 , sabor = "frutilla",peso = 15,gluten = false ) {

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

object alfajor inherits Golosina (precio = 12 , sabor = "chocolate",peso=300,gluten = true) {

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


object caramelo inherits Golosina(precio=1,sabor="frutilla",peso=5,gluten=false){

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

    method asignarPeso(nuevoPeso) {
        pesoInicial = nuevoPeso
        peso = nuevoPeso
       var precios = pesoInicial * 0.5
       precio = precios
        return precio
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
    

object tuti inherits Golosina (precio = 7 , sabor = "frutilla" , gluten = null, peso=5) {
var property sabores = ["chocolate" , "naranja" , "frutilla"]
var sabore = ""
method glutenTiene (valor) {
  if (valor){
    gluten = valor
    precio = 10
  }else {
     gluten = valor
    precio = 7
  }
}

method mordisquito() {
  sabore = sabores.first()
  sabores.remove(sabore)
  sabores.add(sabore)
  sabor = sabore
  return sabor
}
    method tieneGluten(){
        return gluten 
    }
}

object mariano {

    var property bolsaGolosinas =  []

    var property sabores = []
    
    method queTengo() = bolsaGolosinas

    method comprar (unaGolosina){
        bolsaGolosinas.add(unaGolosina)
    }
    
    method desechar (unaGolosina){
        bolsaGolosinas.remove(unaGolosina)
    }

    method probarGolosina() {

        //for each recorrte todo
      bolsaGolosinas.forEach({golosina => golosina.mordisquito()})
      return "La mordiste a todas goloso"

      bolsaGolosinas.forEach({golosina => golosina.mordisquito()})
      return "La mordiste toda goloso"
    }
    //con any con que 1 solo cumpla te devuelve
    method tiene() = bolsaGolosinas.any({golosina => golosina.tieneGluten()})

    //con all se tienen que cumplir TODOS
    method preciosCuidados() = (bolsaGolosinas.all({golosina => golosina.precio()>10}))
    

    method golosinaDeSabor(unSabor) = bolsaGolosinas.any({golosina => golosina.sabor() == unSabor})
    
    method sabores(){
        sabores.clear()
        bolsaGolosinas.forEach({golosina=>sabores.add(golosina.sabor())})
        return sabores
    }

    method golosinaMasCara() {
        var masCara = 0
        var golosinaa = null
        bolsaGolosinas.forEach({golosina=> if (golosina.precio()>masCara){masCara = golosina.precio() golosinaa=golosina}})
        return golosinaa
    }

    method pesoGolosinas(){
        var total = 0
        bolsaGolosinas.forEach({golosina => total += golosina.peso()})
        return total
    }

    //tengo que pasarlo asi ([golosina,golosina2,golosina3,etc])
    method golosinaFaltantes(golosinasDeseadas) {
        var faltantes = #{} 

     golosinasDeseadas.forEach({ golosinaDeseada =>  if (!bolsaGolosinas.contains(golosinaDeseada)) { faltantes.add(golosinaDeseada) }})

    return faltantes 
}

        method gustoFaltante(gustosDeseados) {
        var faltantes = [] 
        var saborPresente = null

        gustosDeseados.forEach({ gusto => saborPresente = bolsaGolosinas.any({ golosina => golosina.sabor() == gusto })
            
            if (!saborPresente) {
                faltantes.add(gusto.sabor())
            }
        })

        return faltantes 
    }

}



