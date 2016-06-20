//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//dans un playgroud on peut faire tout et n'importe quoi
//créer une classe swift 


//on crée des objets (structure de données)

//dans un objet on a deux choses, 
//possède 0 ou plusieurs (données de route (attribut))
//possède 0 ou plusieurs comportement (méthode, fonctions)

//23
//majuscule pour le nom d'une classe 
//minuscule pour le nom d'une variable dans laquelle on met une instance de la classe Shape
class Shape{
    
    //donnée (attribut)
    var sidesCount = 0
    
    //comportement (fonction)
    func getInfo() -> String{
        return "A shape with \(sidesCount) sides."
    }
}
//let nom_de_la_constante = ....
//var nom_de_la_variable = nom_de_l'instance_De_la_classe_Shape
var shape = Shape()

//deux instances de la classe Shape
var triangle = Shape()
var carre = Shape()

//la variable shape est de type class
shape.sidesCount=3

//nom_variable.nom_methode
var shapeSize = shape.getInfo()

//constructeur est un comportement(méthode) particulier(e) qui me permet de construire mon objet

class NamedShape{
    var sidesCount: Int = 0
    var name: String
    
    //créé un constructeur 
    //qui prend en paramètre (ce qu'il y a entre parenthèse) une variable de type string
    //j'affecte mon paramètre à un attribut
    
    //init(name: String) est une méthode avec le parametre name
    init(name: String) {self.name = name}
    
    //le type de retour est un String
    //la chaîne de caractère inclut une propriété(attribut/attribut membre) qui est sidesCount
    func getInfo() -> String {return "\(sidesCount) sides"}
}

