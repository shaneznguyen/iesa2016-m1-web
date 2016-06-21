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
    //pas de type de retour mais retourne quelq
    init(name: String) {self.name = name}
    
    //le type de retour est un String
    //la chaîne de caractère inclut une propriété(attribut/attribut membre) qui est sidesCount
    func getInfo() -> String {return "\(sidesCount) sides"}
}

var newShape = NamedShape(name: "ok")
newShape.sidesCount = 5
newShape.getInfo()


//NamedShape -> père
//Square -> enfant
class Square : NamedShape{
    var sideLength: Double
    init (length: Double, name: String){
        
        //dans soi-même (Square) je vais chercher sideLength
        self.sideLength = length
        
        //je vais chercher le constructeur du père (NamedShape) et celui qui prend le name et elle le lui donne
        //vu que le name est dans le père
        super.init(name:name)
        sidesCount = 4
    }
    
    //on crée la méthode area
    //calcul de la surface
    func area()-> Double {
        return sideLength * sideLength
    }
    
    //on redéfinit la méthode getInfo en la surchargeant 
    //après l'override on réécrit la même chose en modifiant juste ce qu'on retourne
    override func getInfo() -> String {
        return "Square: L=\(sideLength)."
    }
}

let s = Square(length: 5.2, name: "myS")
s.area()
s.getInfo()



class jeuxDeSociete {
    var GameName : String
    var nbrJoueur : Int
    init(GameName: String, nbrJoueur: Int){ self.GameName = GameName; self.nbrJoueur = nbrJoueur }
    
    func play() -> String {
        return "We are playing \(GameName) and we are \(nbrJoueur) players"
    }
}

var poker = jeuxDeSociete(GameName: "Poker", nbrJoueur: 6)
poker.play()

class jeuDePlateau : jeuxDeSociete{
    var nbrCases: Int
    var nbrPions: Int
    var notation: Double
    init(nbrCases: Int, nbrPions: Int, notation: Double, GameName: String, nbrJoueur: Int){
        self.nbrCases = nbrCases
        self.nbrPions = nbrPions
        self.notation = notation
        super.init(GameName: GameName, nbrJoueur: nbrJoueur)
    }
    override func play() -> String {
        return "We are playing \(GameName), we are \(nbrJoueur) players, you have \(nbrCases) cases, you have \(nbrPions) pawns and for notation : \(notation)."
    }
}

var monopoly = jeuDePlateau(nbrCases: 36, nbrPions: 4, notation: 4.5, GameName: "monopoly", nbrJoueur: 4)
monopoly.play()


/*

class Person {
    
    var name1: String = ""
    var age: Int = 0
    
    func getName()->String{
        return name1
    }
    func setName(name2:String){
        self.name1 = name2
    }
    
    func getAge()->Int{
        return age
    }
    func setAge(age:Int){
        self.age = age
    }
    
}
*/


//CQS Command Query Segregation
//on sépare les méthode de types command des méthodes de types query
/*
class Person {
    //get et set permettent d'acéder au name
    var name: String = ""
    var age: Int = 0
    
    //getter (query)
    func getName()->String{
        return name
    }
    
    //setter (command)
    func setName(name:String){
        self.name = name
    }
    
    func getAge()->Int{
        return age
    }
    func setAge(age:Int){
        self.age = age
    }
    
}*/


class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes times: Int){
        count += amount * times
    }
}

var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)



enum Sex: Int{
    case Male
    case Female
    case Unknown
}

class Person {
    //get et set permettent d'acéder au name
    var name: String = ""
    var age: Int = 0
    var sex: Sex = Sex.Male
    
    //getter (query)
    func getName()->String{
        return name
    }
    
    //setter (command)
    func setName(name:String){
        self.name = name
    }
    
    func getAge()->Int{
        return age
    }
    func setAge(age:Int){
        self.age = age
    }

    func getSex()->Sex{
        return sex
    }
    func setSex(sex:Sex){
        self.sex = sex
    }

}



//enum & struct
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    
    func simpleDescription() -> String{
        switch self{
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default: return
            String(self.rawValue)
        }
    }
}

let ace = Rank.Ace
let aceRawValue = ace.rawValue



enum Suit: Int {
    case Spades, Clovers, Hearts, Diamonds
    
   func simpleDescription() -> String {
            switch self {
            case .Spades:
                return "spades"
            case .Clovers:
                return "clovers"
            case .Hearts:
                return "hearts"
            case .Diamonds:
                return "diamonds"
            }
    }
}

//structure

struct Card{
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String{
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()


//permet de faire une méthode commune à chacun 
//les classes qui en hé
protocol Personnage {
    func deplacer()
}

class Humain :Personnage{
    func deplacer(){
        print("marcher")
    }
}

class Limace :Personnage{
    func deplacer(){
        print("ramper")
    }
}




//access level sans private

class Book{
    var author: String = ""
    var title: String = ""
    
    //méthode qui concatène les deux variables
    
    //func nom_de_la_methode(parametre_de_la_methode)()->Type_De_retour{}
    //peut ne pas avoir de param 
    //peut ne pas avoir de retour
    func getDescription()->String{
        return author + " - " + title  //pas de parenthèses car pas une méthode mais une données
    }
}

//instancie la classe book en donnant des valeurs aux variables
var book = Book()
book.author="JKR"
book.title="Harry Potter"


//on appelle la méthode de concaténation des deux variables qui représente la description
book.getDescription()

//si on met un private devant la classe ça ne marche pas
