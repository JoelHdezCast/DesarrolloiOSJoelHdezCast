import UIKit

var costo_referencia:[Float] = [8.3,10.5,9.9]
var indi:Float = 0.0
for i in costo_referencia {
    costo_referencia[Int(indi)] = i*1.16
    indi += 1
}
costo_referencia

func impuesto(arreglo:[Float]) -> [Float]{
    var resultado:[Float] = []
    for i in arreglo {
        resultado.append(i*1.16)
    }
    return resultado
}
impuesto(arreglo: costo_referencia)
costo_referencia

let suma = {(x:Int, y:Int) -> Int in return x + y}
func sumaTres(a:Int, b:Int, c:Int) -> Int{
    return suma(a,b) + c
}
sumaTres(a: 2, b: 4, c: 3)

var a:Int = 2
var b:Int = 4
func intercambio(_a:Int,_b:Int) -> (Int, Int){
    let temp = a
    a = b
    b = temp
    return (a,b)
}
intercambio(_a: a, _b: b)

extension Array{
    func transformar<T>(inicial:T, acumula:(T,Element)->T) -> T {
        var respuesta:T = inicial
        for valor in self {
            respuesta = acumula(respuesta, valor)
        }
        return respuesta
    }
}
var datos=[3,7,9,2]
datos.transformar(inicial: 0, acumula: {(a,b) in a+b})
datos

var precios = [4.2,5.3,8.2,4.5]
var impuesto = precios.map{a in return a*1.16}
impuesto

var precio_menor = impuesto.filter{a in a < 6.0}
precio_menor
