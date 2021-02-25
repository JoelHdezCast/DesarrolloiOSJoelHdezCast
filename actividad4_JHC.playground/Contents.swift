import Darwin

var datos = [3,6,9,2,4,1]
for n in datos{
    if n<5 {
        print(n)
    }
}

func suma(a:Int, b:Int) -> Int{
    return a + b
}
print(suma(a: 6, b: 5))

func potencia(c:Double, d:Double) -> Double{
    return pow(c, d)
}
print(potencia(c: 3, d: 2))

enum meses{
    case enero
    case febrero
    case marzo
    case abril
    case mayo
    case junio
    case julio
    case agosto
    case septiembre
    case octubre
    case noviembre
    case diciembre
}
func numeromes(mes:meses) -> meses {
    switch mes {
    case .enero:
        print(1)
    case .febrero:
        print(2)
    case .marzo:
        print(3)
    case .abril:
        print(4)
    case .mayo:
        print(5)
    case .junio:
        print(6)
    case .julio:
        print(7)
    case .agosto:
        print(8)
    case .septiembre:
        print(9)
    case .octubre:
        print(10)
    case .noviembre:
        print(11)
    case .diciembre:
        print(12)
    }
    return mes
}
var queMesEs:meses = .mayo
numeromes(mes: queMesEs)
