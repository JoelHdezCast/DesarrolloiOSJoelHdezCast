import UIKit

class Persona{
    func saludar(nombre:String) -> String {
        return nombre + " mucho gusto"
    }
    func caminar(n:Int) -> String {
        return String(n) + " pasos"
    }
}
var persona = Persona()
persona.saludar(nombre: "joel")
persona.caminar(n: 6)

struct pantalla{
    var ancho:Int
    var alto:Int
    
    init(alto:Int, ancho:Int) {
        self.alto = alto
        self.ancho = ancho
    }
    func medidasPantalla() -> (Int, Int) {
        return(self.alto, self.ancho)
    }
}
var p = pantalla(alto: 12, ancho: 30)
p.medidasPantalla()

extension Int{
    var segundos:Int{
        return self*3600
    }
}
5.segundos

extension String{
    var dia:String{
        switch self {
        case "Domingo":
            return String(1)
        case "Lunes":
            return String(2)
        case "Martes":
            return String(3)
        case "Miercoles":
            return String(4)
        case "Jueves":
            return String(5)
        case "Viernes":
            return String(6)
        case "Sabado":
            return String(7)
        default:
            return "hola"
        }
    }
}
"Domingo".dia

var opcional:Int?
let dias = ["GDL":120,"PUE":300,"MYT":100,"CDMX":200]
opcional = dias["DF"]
