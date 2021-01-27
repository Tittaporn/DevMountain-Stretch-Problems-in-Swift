import UIKit

// Week 3: Monday >> Stretch Problem At DevMountain
// Inheritance

// MARK: - Animal
class Animal {
    let name: String
    let diet: String
    
    init(name: String, diet: String) {
        self.name = name
        self.diet = diet
    }
    
    func eat() {
        print("\(name) is eating \(diet).")
    }
}

// MARK: - Bird
class Bird: Animal {
    let migratesInWinter: Bool = false
    
    func fly() {
        print("WHOOSH... \(name) is Flying")
    }
}

// MARK: - Penguin
class Penguin: Bird {
    func feedYoung() {
        print("\(name) is regurgitating some \(diet) to it's young")
    }
    
    override func fly() {
        print("\(name) is a penguin and can not fly.")
    }
}

// MARK: - Dog
class Dog: Animal {
    func bark() {
        print("WOOF WOOF... \(name) is barking")
    }
    override func eat() {
        super.eat()
        print("\(name) made a mess")
    }
}

// MARK: - Poodle
class Poodle: Dog {
    let rankInStateFair: Int
    init(name: String, diet: String, rankInStateFair: Int) {
        self.rankInStateFair = rankInStateFair
        super.init(name: name, diet: diet)
    }
}

// MARK: - Calling class and function
let penguin = Penguin(name: "Mommy Penguin", diet: "fish")
penguin.feedYoung()
penguin.diet
penguin.eat()
penguin.fly()

let doggy = Dog(name: "Doggy", diet: "bone")
doggy.bark()
doggy.eat()

let poofball = Poodle(name: "Poof ball", diet: "pizza", rankInStateFair: 5)
poofball.bark()
poofball.eat()

// MARK: - Instructions

/* Inheritance
 
 Instructions:
 
 This wonderful piece of literature may help you throughout this exercise. (Links to an external site.)
 
 1) Create an Animal class with a property for a `name` property of type String and `diet` property of type String
 2) Write a memberwise initializer for the Animal class
 3) Give the Animal class a `eat()` function which prints a statement that including the animals `name` and its `diet`. (For Example: "George is eating bananas", assuming name = "George" and diet = "bananas")
 4) Write a subclass of `Animal` called `Bird`
 5) Give the `Bird` subclass a `Boolean` property named `migratesInWinter`.  Give this property a default value of `false`.  (Notice the default value will remove any warnings about the `Bird` classes lack of an initializer)
 6) Give the `Bird` subclass a function named `fly()` which prints "WHOOSH... <insert the birds name> is Flying" (Notice the bird subclass still has access to the `name` variable we declared to be part of animal)
 7) Subclass `Bird` to create a `Penguin` subclass.
 8) Give the `Penguin` class a function called 'feedYoung()' which prints "<insert the penguins name> is regurgitating some <insert the penguins diet> to it's young"
 9) Initialize a penguin and try calling all of its available functions.
 
 We have a problem now...
 
 PENGUINS CAN'T FLY
 
 and yet...
 
 `penguin.fly()' will print a statement which should obviously be false.
 
 Note: This is one of major downsides of inheritance and one of the reasons the Swift language and many programmers support the idea of "Composition over Inheritance" (Links to an external site.) and "Protocol Oriented Programming"  (Links to an external site.)
 
 10) Override the `fly()` property for penguins and substitute an implementation which prints that penguins can't fly.
 
 11)  Create a `Dog` subclass of `Animal` with a function called `bark()` that prints "WOOF WOOF... <insert dogs name> is barking"
 
 Black Diamonds 💎
 
 - Add functionality to the `eat()` function which the `Dog` class inherits to print "<insert dogs name> made a mess" Note: This should not replace the `Animal` class's implementation of `eat()` only add onto it.
 - Create a `Poodle` class which inherits from (is a subclass of) `Dog`.  Give the `Poodle` class a `rankInStateFair` variable with NO default value.  Write an initializer for the `Poodle` class  Hint: you will need to call the superclasses initializer
 */
