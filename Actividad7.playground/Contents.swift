import UIKit

var str = "Hello, playground"
/*: 
### Valor por tipo y por referencia
A) Para la colección "var costo_referencia:[Float] = [8.3,10.5,9.9]", aplicar el impuesto del 16% a través de recorrer la colección "costo_referencia" para aplicar el impuesto a cada cantidad, crear una función Impuesto que recibe como parámetro la colección y regrese aplicado el impuesto a cada cantidad.
*/
var costo_referencia:[Float] = [8.3,10.5,9.9]
var indice:Int = 0

for i in costo_referencia
{
    costo_referencia[indice] = i*0.16
    indice += 1
}

costo_referencia

func PorPorcentaje(arreglo:[Float]) -> [Float]
{
    var resultado:[Float] = []
    for i in arreglo
    {
        resultado.append(i*0.16)
    }
    return resultado
}

PorPorcentaje(arreglo: costo_referencia)
costo_referencia

let Suma = {(x:Int, y:Int) -> Int in return x + y}

Suma(2, 2)


//: B) Crear la función "sumaTres"  que reciba una función con dos valores a sumar y un segundo parametro para sumar el tercer número.
func SumaTres(a:Int, b:Int, c:Int) -> Int
{
    return Suma(a, b) + c
}

SumaTres(a: 3, b: 3, c: 3)




/*:
### Funciones personalizadas y Genéricos

 
 A) Generics: Crear la función genérica para intercambiar valores entre dos variables del mismo tipo.
*/
extension Array
{
    func SAcumulada<T> (inicial: T, acumula:(T,
        Element)->T)->T
    {
        var respuesta:T = inicial
        for valor in self
        {
            respuesta = acumula(respuesta, valor)
        }
        return respuesta
    }
}

//: B) Función personalizada: Crear la función "Transformar" que reciba como parámetro una colección de tipo Int  "var datos = [3,7,9,2]" y una función que transforme cada valor de la coleción en una operación definida fuera de la función, regresando una colección transformada.
var datos = [3,7,9,2]
var letras = ["a", "e", "i", "o", "u"]
datos.SAcumulada(inicial: 0) {(a,b) in a + b}
letras.SAcumulada(inicial: "") {(a,b) in a + b}

/*:
### Biblioteca de Swift
A) Aplicar la función de librería de Swift "map" para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplicar el impuesto de 16% y asignarla a la variable "impuesto"
*/
var precios = [4.2, 5.3, 8.2, 4.5]

var sumarImpuesto = precios.map{a in return a - (a * 0.16)}
sumarImpuesto





