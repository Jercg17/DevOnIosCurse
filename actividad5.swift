import Foundation

var existe:Int

class persona 
{
    var Saludar:String 
    var Caminar:Int 

init(Saludar:String, Caminar:Int)
 s
 self.Saludar = Saludar
 self.Caminar = Caminar  
}
    func Saludo (Saludar:String) 
     {
    print("\(Saludar) mucho gusto")    
    }
    func pasos (Caminar:Int)
     {
    printl("\(Caminar) pasos caminados")    
        }
    }
    struct Pantalla 
    {
        var alto: Int
        var ancho: Int

init(alto:Int, ancho:Int)
 {
self.alto = alto 
self.ancho = ancho    
}
 func Tamano  () -> (Int,Int)
  {
 return (self.alto, self.ancho)    
 }       
    }
    
    extension Int 
    {
        var horas: Int 
    {
        return self*3600
    }
    }

    extension String {
        return self 
    }
    func numero () -> String
     {
    switch self.dia 
    {
    case "Domingo":
        return "1"
    case "Lunes": 
        return "2"
    case "Martes":
        return "3"
    case "Miercoles":
        return "4"
    case "Jueves":
        return "5"
    case "Viernes": 
        return "6"
    case "Sabado":
        return "7"
    default:
    return "No se reconocio el dia" 
    }
    }
        
    }

var Optional:Int
var cuidad = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200 ]    

existe = cuidad ["CDMX"]!

if let temp = cuidad ["DF"] 
{
    print("Si existe") 
}
else 
{
print("No existe"
}

