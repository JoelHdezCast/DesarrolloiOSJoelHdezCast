import Darwin

infix operator ^^

func ^^(a:Int, b:Int) -> Int{
    return Int(pow(Double(a), Double(b)))
}

let power = 2^^4

let array = [2,4,5,3]
postfix operator |>
postfix func |>(col:[Int]){
    col.sorted()
}
array|>

class modificar{
    var valores:[Int]
    init(v:[Int]) {
        self.valores = v
    }
    subscript(indice:Int) -> Int{
        get{
            return valores[indice]
        }
        set{
            valores[indice] = valores[2]
        }
    }
}
let v1 = modificar(v: array)
v1[2]
v1.valores

class enemigo{
    var x:Int
    var y:Int
    init(x:Int, y:Int) {
        self.x = x
        self.y = y
    }
    subscript(xn:Int, yn:Int) -> Int{
        get{
            return x
        }
        set {
            x = xn
            y = yn
        }
    }
}
var v2 = enemigo(x: 5, y: 4)
v2.x
v2.y

let coleccion = ["A":1,"B":2,"C":3]
func ExisteValor(idx:String){
    guard let existe = coleccion[idx] else{
        print("no existe")
        return
    }
    print("existe")
}
ExisteValor(idx: "D")
ExisteValor(idx: "A")
