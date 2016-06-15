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

// 09 myArray.count

let individualScores2 = [75, 43, 103, 87, 12]
var teamScore2 = 0

for score in individualScores2 {
    if score > 50 {
        teamScore2 += 3
    }
    else {
        teamScore2 += 1
    }
}
print(teamScore2)

print(individualScores2.count)

// 10

//var optionalString: String? = "Hello"
//print(optionalString == nil)
//var optionalName : String? = "John Appleseed" //nil
//var greeting = "Hello"
//
//
//if let name = optionalName {
//    greeting = "Hello, \(name)"
//}


// 10

var optionalString1: String? = "Hello"
print(optionalString1 == nil)
var optionalString2: String?
print(optionalString2 == nil)
var optionalString3 : String
//print(optionalString3 == optionalString2)
optionalString3 = "Bonjour elvis "
//print(optionalString3 == nil)
print("optionalString1 = \(optionalString1)")
print("optionalString2 = \(optionalString2)")
print("optionalString3 =  \(optionalString3)")


// 11 

let vegetable = "red pepper"
var vegetableComment :String 
switch vegetable {
    case "cucumber", "watercress":
        vegetableComment = "That would make a good tea sandwich"
    case var x  where x.hasSuffix("pepper"):
        vegetableComment = "Is it a spicy \(x)"
    default:
        vegetableComment = "Everything tastes good in soup."
}
print("Result: \(vegetableComment)")

// 12 

var n = 2
while n < 100 { n = n * 2 }
print(n)

var m = 2
repeat { m = m * 2 } while m < 100
print(m)


// 13

var firstForLoop = 0

for i in 0..<4 { firstForLoop += i}
print(firstForLoop)

var secondForLoop = 0
for var i = 0; i < 4; i++ { secondForLoop += i}
print(secondForLoop)


// 14

func greet(name: String, atDay: String) -> (a:String, b:String, c:String){
    //return "Hello \(name), today is \(atDay)."
    return  (name, atDay, "Hello \(name), today is \(atDay).")
}

var blob = greet("BOb", atDay: "tuesday")
blob.a

// TUPLE
let min = 10
let max = 20
let value = 15
var range = (value, min, max)

range.2

// 15

func calculateStatistics(scores:[Int]) -> (min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if score > max { max = score } else if score < min {min = score}
        sum += score
    }
    return (min, max, sum)
}
let statistics = calculateStatistics([5, 3, 100, 3 , 9])
print(statistics.sum)
print(statistics.2)

// 16 

func sumOf(numbers: Int...) -> Int{
    var sum = 0
    for number in numbers {sum += number}
    return sum
}
sumOf()
sumOf(42, 597, 12)

// 17 

func returnFifteen() -> Int{
    var y = 10
    func add(){ y += 5}
    add()
    return y
}
returnFifteen()

// 20 
let numbers = [1, 2, 3]
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})
var names = ["r", "j"]
names.map({
    (name: String) -> String in
    return "Bonjour \(name)"
})

var peoples = [(name: "Blob", age: 23)]

peoples.map({
    (personne: (String, Int)) -> Int in
    return personne.1
})

let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)
