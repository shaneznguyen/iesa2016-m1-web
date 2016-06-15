//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playgrounde"
print(str)


// 2

var myVariable = 42

myVariable = 50

var myOtherVariable :Double


// 03 

let implicitInteger = 70

let implicitDouble = 70.0

let explicitDouble :Double = 70

// 04

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

//05 

let apples = 3
let oranges = 5

let appleSummary = "I have \(apples) apples."

let fruits = "I have \(apples + oranges) fruits"


// 06 

var shoppingList = ["catfish" , "water", "tulips"]
shoppingList[1]
shoppingList[1] = "bottle of water"
var occupations = [
    "Malcolm" : "Captain",
    "Kaylee" : "Mechanic"
]
occupations["Jayne"] = "Public Relations"
//shoppingList[10] = "blob"
var strangeList = ["catfish" , 33 , 22.3]
strangeList[1]
strangeList[2]

//07

var emptyArray = [String]()
emptyArray.append("Hello")
let emptyDictionnary = [String : Float]()

//07Bis
//var emptyArray2 = []
//emptyArray2.append("Hello")
//emptyArray2.append(33)
//emptyArray2

// 08

shoppingList = []

occupations = [:]

// 09
var score = 50
var teamScore = 0
if score > 50 {
    teamScore += 3
}
else if score < 0{
    teamScore = 0
}
else{
    teamScore += 1
}
teamScore

var individualScores = [4, 0, 3]

for score in individualScores {
    score
}



