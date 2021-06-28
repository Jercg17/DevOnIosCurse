import UIKit
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*: 
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/
precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ~ : PowerPrecedence

func ~ (a:Int, b:Int) -> Int {
    return Int(pow(Double(a), Double(b)));
}

print("--Potencia")
print(5~3);


//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor
prefix operator |> ;

prefix func |> ( array: inout [Int]) -> Void {
    array.sort();
    print("--Ordenar")
    print(array);
}

var  numbers: [Int] = [ 2, 5, 3, 4 ];

|>numbers;

/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/
let  datos:[Double] = [2,3,4,5];

class Dato{
    var valores:[Double];
    init(v:[Double]){
        self.valores=v;
    }
    subscript(ind:Int) -> Double{
        get{
            return valores[ind];
        }
        set(newVal){
            let val = valores[ind];
            let res = val.remainder(dividingBy: 2)
            if(res==0){
                valores[ind]=newVal;
            }
        }
    }
    func toString()->Void{
        print(valores);
    }
}

let v1 = Dato(v: datos);

print("--Subscript")
print(v1[3]);
v1[0]=5;
v1[1]=12;
v1[2]=25;
print(datos)
v1.toString();




//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps
class Enemigo{
    var CGPoint:Int;
    init(i:Int){
        self.CGPoint=i;
    }
    func toString() -> Int {
        return CGPoint;
    }
}

let enemigos:[Enemigo] = [Enemigo(i: 5),Enemigo(i: 30),Enemigo(i: 3),Enemigo(i: 25)];

struct Enemies{
    var enemigos:[Enemigo];
    init(v:[Enemigo]){
        self.enemigos=v;
    }
    subscript(ind:Int) -> Enemigo{
        get{
            return enemigos[ind];
        }
        set(newVal){
            enemigos[ind]=newVal;
        }
    }
    func toString()->Void{
        for enemigo in enemigos{
            print(enemigo.toString());
        }
    }
}

var v2 = Enemies(v: enemigos);

print("--Struct");
v2.toString();
print(v2[1].toString());
print(v2[3].toString());
v2[2] = Enemigo(i: 100);
v2.toString();

/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
let values = ["A":1, "B":2,"C":3];
func ExisteValor(ind:String){
    guard let existe = values[ind] else {
        print("No existe");
        return;
    }
    print("Existe ", existe);
}
print("--Control")
ExisteValor(ind:"A")
print(values["A"] as Any)
ExisteValor(ind:"F")
print(values["F"] as Any)







