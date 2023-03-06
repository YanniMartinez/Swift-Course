import UIKit
/*This is the library that contains all the needed functions*/

/**
 Var: Hace referencia a que se trata de una variable
 Let: Hace referencia a que se trata de una constante**/
var greeting = "Hello, playground"
print(greeting)


let constant = "This is the way to declare a constant on swift"
print(constant)


//En swift no tenemos poblemas con la modificación por referencia como se muestra
let defaultScore = 100
var playerOneScore = defaultScore
var playerTwoScore = defaultScore

print("Score Player 1: ",playerOneScore)
print("Score Player 2: ",playerTwoScore)

playerOneScore = 20000
print("Score despues de modificar Player 1: ", playerOneScore)

/**Tipos de datos en swift
 Integer Int, Double Double, Boolean Bool, String String
 Así mismo Swift permite el uso de Diccionarios o Arreglos**/

//Structs:
struct Person{
    let firstName: String
    let lastName: String
    
    func sayHello(){
        print("Hello there! My name is: \(firstName) \(lastName)")
    }
}

//Instance of Person:
let aPerson = Person(firstName: "Yann", lastName: "Edwards")
let anotherPerson = Person(firstName: "Candace", lastName: "Aguilar")

aPerson.sayHello()
anotherPerson.sayHello()


//Tipado seguro:
let playerName = "Julian"
var playerScore = 1000
var gameOver = false

/** La siguiente sentencia marcara error debido a que switf es tipado
playerScore = playerName
 
 Esta sentencia arrojará un error*/

/**También hay una diferencia entre enteros y dobles, por lo que si intentamos igualarlos darà problema
 
 var wholeNumber = 30
 var numberWithDecimals = 17.5
 wholeNumber = numberWithDecimals**/
