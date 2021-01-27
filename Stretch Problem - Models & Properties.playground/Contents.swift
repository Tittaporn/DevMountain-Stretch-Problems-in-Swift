import UIKit

// Week 2: Monday >> Stretch Problem At DevMountain
// Models & Properties

class Person {
    let name: String
    let favoriteColor: String?
    let favoriteMovie: String?
    
    init(name: String, favoriteColor: String?, favoriteMovie: String?) {
        self.name = name
        self.favoriteColor = favoriteColor
        self.favoriteMovie = favoriteMovie
    }
    
    func printPersonFavorite() {
        if favoriteMovie != nil && favoriteColor != nil {
            print("\(name)'s favorite color is \(favoriteColor!) and favorite movie is \(favoriteMovie!)")
        } else if favoriteMovie != nil {
            print("\(name)'s favorite movie is \(favoriteMovie!)")
        } else if favoriteColor != nil {
            print("\(name)'s favorite color is \(favoriteColor!)")
        } else {
            print("\(name) doesn't like anything.")
        }
    }
}

let lee = Person(name: "Lee McCormick", favoriteColor: "Pink", favoriteMovie: "1917")
let john = Person(name: "John", favoriteColor: nil, favoriteMovie: "Star War")
let danny = Person(name: "Danny", favoriteColor: "Blue", favoriteMovie: nil)
let sandy = Person(name: "Sandy", favoriteColor: nil, favoriteMovie: nil)
lee.printPersonFavorite()
john.printPersonFavorite()
danny.printPersonFavorite()
sandy.printPersonFavorite()

// MARK: - Instructions
/* Models & Properties
 
 Instructions :
 
 Open a new Swift playground. Create a Person class with three properties:
 
 name property whose type is String.
 favoriteColor property whose type is an optional String.
 favoriteMovie property whose type is an optional String.
 Create Memberwise Initializer:
 
 Create a custom initializer where you set the name.
 Call it:
 
 Then, outside of the Person class, create an instance of Person and initialize it with your name. Set either the favoriteColor OR favoriteMovie property.
 Print:
 
 Next, print out a description of the person's favorite things, being sure to properly handle the optionals beforehand.
 Also print out the optional property you didn't set and observe the result.
 
 
 Black Diamond 💎💎💎
 
 Create a function that will print out a description of a person's favorite things, or say that the person doesn't like anything. This function should work properly whether or not the optional properties were set. Example printouts below
 
 Examples:
 
 "John's favorite color is blue."
 "John's favorite movie is Star Wars."
 "John's favorite color is blue and his favorite movie is Star Wars."
 "John doesn't like anything."
 
 */
