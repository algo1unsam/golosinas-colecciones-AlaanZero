class Golosina {
    var property precio  
}

object bombon inherits Golosina (precio = 5) {
    
    method sabor () = "Frutilla"
    method peso () = 15
    method gluten() = false 
    var pesoN = self.peso()
    method mordisquito() {
        if (pesoN > 1){
            pesoN = (pesoN*0.8)-1
            return pesoN
        }else{
            return "Te comiste todo goloso"
        }
    }
}

object alfajor {
    method precio () = 12
    method sabor () = "Chocolate"
    method peso () = 300
    method gluten() = false 
    var pesoN = self.peso()
    method mordisquito() {
        if (pesoN > 1){
            pesoN = (pesoN*0.8)
            return pesoN
        }else{
            return "Te comiste todo goloso"
        }
    }
}


object caramelo {
    method precio () = 1
    method sabor () = "frutilla"
    method peso () = 5
    method gluten() = true 
    var pesoN = self.peso()
    method mordisquito() {
        if (pesoN > 1){
            pesoN -= 1
            return pesoN
        }else{
            return "Te comiste todo goloso"
        }
    }
}

object chupetin {
    method precio () = 2
    method sabor () = "naranja"
    method peso () = 7
    method gluten() = false 
    var pesoN = self.peso()
    method mordisquito() {
        if (pesoN > 2){
            pesoN = (pesoN*0.9)
            return pesoN
        }else{
            return pesoN
        }
    }
}

object oblea {
    method precio () = 5
    method sabor () = "vainilla"
    method peso () = 250
    method gluten() = true 
    var pesoN = self.peso()
    method mordisquito() {
        if (pesoN > 70){
            pesoN = (pesoN*0.5)
            return pesoN
        }else{
            pesoN = (pesoN*0.75)
            return pesoN
        }
    }
}
object chocolatin {
    var pesos = 0
    var precios = 0
    var pesos2 = 0
    method sabor () = "chocolate"
    method gluten() = false 
    method peso (valor) {pesos2 = valor pesos = valor return pesos}
    method precio (){ precios = pesos * 0.5 return precios}
    method mordisquito() {
    if (pesos2>1){
    pesos2 -=2
    return pesos2    
    }else{
        return "Te lo comiste todo "
    }
    }
}
object tuti {
    var gluten2 = " "
    var precio2= 0

    method precio (){
    if (gluten2 == "true"){
        precio2 = 7
     }else (gluten2 == "false"){
        precio2 = 10
        return precio2
     }  
    }
    var sabor = "frutilla"
    method peso () = 5
    method gluten(valor){
    gluten2 = valor
    return gluten2
    }

    method mordisquito() {
    if (sabor == "frutilla"){
        sabor = "chocolate"
        return sabor
    }else if (sabor == "chocolate"){
        sabor = "naranja"
        return sabor 
    }else {
        sabor = "frutilla"
        return sabor
    }

    }
}

object tuti2 {
    var primer = " "
    var gluten = true 
    var property gustos = ["frutilla","chocolate","naranja"]

    method mordisco (){
    primer = gustos.first()
    gustos.remove(primer)
    gustos.add(primer)
    return primer
    }
}
