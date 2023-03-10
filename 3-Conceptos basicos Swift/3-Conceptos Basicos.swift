struct Temperature {
  var celsius: Double

  init(celsius: Double) {
    self.celsius = celsius
  }

  init(fahrenheit: Double) {
    celsius = (fahrenheit - 32) / 1.8
  }

  init(kelvin: Double) {
    celsius = kelvin - 273.15
  }
}

let currentTemperature = Temperature(celsius: 18.5)
let boiling = Temperature(fahrenheit: 212.0)
let freezing = Temperature(kelvin: 273.15)

print(currentTemperature.celsius)
print(boiling.celsius)
print(freezing.celsius)



/**Definicion de clases en swift*/
class Person {
  let name: String

  init(name: String) {
    self.name = name
  }
 
 func sayHello() {
     print("¡Hola!")
  }
 }

let person = Person(name: "Jasmine")
print(person.name)
person.sayHello()


//Definicion de una clase base
class Vehicle {
    var currentSpeed = 0.0

    var description: String {
         "viajando a \(currentSpeed) millas por hora"
    }

     func makeNoise() {
          // No hacer nada: un vehículo aleatorio no necesariamente 
          print("hacer ruido")
    }
}

let someVehicle = Vehicle()
print("Vehículo: \(someVehicle.description)")

/**
 
 “Para definir un nuevo tipo que hereda de una superclase, escribe el nombre del tipo antes del nombre de la superclase, separados por dos puntos:
 
 class SomeSubclass: SomeSuperclass {
     // La definición de la subclase va aquí
 }

 */

class Bicycle: Vehicle {
    var hasBasket = false
}


class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

//Al tener una herencia compuesta tendra todos los elementos padres
let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tándem: \(tandem.description)")

//Asi mismo podemos hacer una sobreestructura
class Train: Vehicle {
     override func makeNoise() {
          print("¡Chu, chu!")
    }
}

let train = Train()
train.makeNoise()

//Tambien se puede hacer un override de un atributo como se muestra a continuacion

class Car: Vehicle {
    var gear = 1
    override var description: String {
         super.description + " en marcha \(gear)"
    }
}


let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Automóvil: \(car.description)")
//Datos en la consola:
//Automóvil: viajando a 25.0 millas por hora en marcha 3


//Si se necesita iniciar un atributo entonces hay que hacerlo mediante su iniciador

class Student: Person {
  var favoriteSubject: String

  init(name: String, favoriteSubject: String) {
    self.favoriteSubject = favoriteSubject
    super.init(name: name)
  }
}


///Tablas
/*Piensa en una subclase MessageCellde UITableViewCell  que representa una fila en la vista de tabla. La celda está diseñada para mostrar información sobre el mensaje del correo electrónico. Se accederá a cada instancia de MessageCell en muchos lugares en el código, como verás.

class MessageCell: UITableViewCell {

  func update(message: Message) {
     // Actualiza las propiedades de `UITableViewCell` con información sobre el mensaje 
    textLabel.text = message.subject
    detailTextLabel.text = message.previewText
  }
}
*/

//Arreglos
var namesE: [String] = ["Anne", "Gary", "Keith"]
//Segundo modo de declarar un arreglo>
var myArray1: Array<Int> = []

var myArray2 = [Int]()


//Hacer un arreglo con conteo del 0 al 100 elementos incluidos
var myArray = [Int](repeating: 0, count: 100)

let count = myArray.count
if myArray.isEmpty { print("This array is empty") }


//Metodos para el uso de arreglos
var names = ["Amy"]
names.append("Joe")
names += ["Keith", "Jane"]
print(names) // ["Amy", "Joe" "Keith", "Jane"]


//***************Diccionarios:
//Declaracion de un diccionario
var scores = ["Richard": 500, "Luke": 400, "Cheryl": 800]

//Para realizar la actualizacion de un diccionario refiera a la siguiente sentencia

let oldValue = scores.updateValue(100, forKey: "Richard")

//Un diccionario puede declararse vacio de la siguiente manera:
var myDictionary = [String: Int]()
var myDictionary2 = Dictionary<String, Int>()
var myDictionary3: [String: Int] = [:]

//Eliminar elementos de un diccionarii
scores["Richard"] = nil // ["Luke": 400, "Cheryl": 800]

if let removedValue = scores.removeValue(forKey: "Luke") {
  print("El puntaje de Luke era \(removedValue) antes de que dejara de jugar")
}

//******** CICLOOS

for index in 1...5 {
  print("Este es el número \(index)")
}

//Si no tenemos una variable explicita lo que podemos hacer es poner un _ para omitirla sin que nos genere errores
for _ in 1...3 {
  print("¡Hola!")
}

//As[i mismo podemos optar por la alterntiva definida del for-in para recorrer una estructura
let namesC = ["Joseph", "Cathy", "Winston"]
for name in namesC {
  print("Hola, \(name)")
}

//Si quisieramos tener el indice y el valor podemos colocar una sentencia como a continuacion
for (index, letter) in "ABCD".enumerated() {
  print("\(index): \(letter)")
}

//De igual manera podemos extraer 2 valores si existe en nuestro arreglo de elementos:
let vehicles = ["monociclo": 1, "bicicleta": 2, "triciclo": 3, 
"cuatriciclo": 4] 
for (vehicleName, wheelCount) in vehicles {
  print("Un(Una) \(vehicleName) tiene \(wheelCount) rueda(s)")
}


/*El ciclo do-While se conoce aqui como repeat-while*/
var steps = 0
let wall = 2 // hay una pared después de dos pasos

repeat {
  print("Paso")

  steps += 1

  if steps == wall {
      print("¡Tropezaste con una pared!")
     break
  }
} while steps < 10 // máximos en esta dirección

