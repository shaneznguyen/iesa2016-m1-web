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
