//: Playground - noun: a place where people can play

import UIKit

class Shape {
    var sideCount = 0
    func getInfo() -> String {
        return "A shape with \(sideCount) sides."
    }
}

var shape = Shape()

shape.sideCount = 5

shape.getInfo()

var displayInfo = shape.getInfo()



// 25 Constructeur

class NamedShape {
    var sideCount: Int = 0
    var name: String
    init(name: String){ self.name = name}
    func getInfo() -> String { return "\(self.name) : \(sideCount) sides"}
}

var newShape = NamedShape(name: "Ok")

newShape.sideCount = 5

newShape.getInfo()
