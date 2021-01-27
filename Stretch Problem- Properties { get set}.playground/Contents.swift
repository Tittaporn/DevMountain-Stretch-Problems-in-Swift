import UIKit

// Week 3: Tuesday >> Stretch Problem At DevMountain
// Properties { get set}

let currentYear = Calendar.current.component(.year, from: Date())

struct Person {
    let firstName: String
    let lastName: String
    var yearOfBirth: Int
    var age: Int  {
        get {
            return currentYear - yearOfBirth
        }
        set(newAge) {
           yearOfBirth = currentYear - newAge
        }
    }
}

var lee = Person(firstName: "Lee", lastName: "McCormick", yearOfBirth: 1989)
print("\(lee.firstName) \(lee.lastName) was born in \(lee.yearOfBirth)")
print(lee.age)

lee.age = 36
print(lee.yearOfBirth)


// MARK: - Instructions
/*
 Instructions - PART 1 :
 - Make a constant called currentYear that is an integer equal to the current year (e.g. 2016).
 - Create a Person struct with properties for first name as a String, last name as a String, and year of birth as an Int.
 - Create an instance of the Person struct
 - Print out the instance's birth year
 - Print out its first and last name
 
 Instructions - PART 2 :
 - Add a computed property for age to the Person struct
 - Implement a getter for age. The getter should calculate and return the person's age based on the current year and the person's year of birth. (Hint: Look up getters in the Swift programming guide or in documentation).
 - Implement a setter for age. The setter should update the year of birth based on the age and current year. (Hint: look up setters).
 - Print out the person's age
 - Update their age and then print their new year of birth.
 
 Black Diamond 💎💎💎
 - Change your currentYear constant so that instead of being a hard-coded, static year, it uses DateComponents to get the actual current year anytime it runs. Documentation should help you out.
 
 */

/* NOTE
 // Getters and Setters in Swift
 We can store properties inside classes, structures, and enumerations. Those properties are called stored properties. In addition to stored properties, we can also define properties that aren’t stored anywhere in the object. Instead of directly accessing these properties, they’re computed every time when trying to access them. These properties are called computed properties. Computed properties offer getter and setter methods for indirectly retrieving and modifying other properties of the object.
 Computed properties come in handy when we don’t want or need to store a value in the object. Computed properties use getters to calculate the property on demand and setters to indirectly modify other properties.
 https://medium.com/codex/getters-and-setters-in-swift-79a46e9401a0
 //______________________________________________________________________________________
 */
