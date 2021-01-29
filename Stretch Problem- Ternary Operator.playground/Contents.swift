import UIKit

// Week 3: Thursday >> Stretch Problem At DevMountain
// Ternary Operator
let arrayOfInts = [341,42,43,42,55,66,47,18,94,140]

// MARK: - PART 1:  For loop
func checkInts(arrayOfInts: [Int]) {
    var printStatement = ""
    var previousValue = 0
    let newArrays = arrayOfInts
    for num in newArrays {
        if num < 50 {
            printStatement += "low"
        } else {
            printStatement += "high"
        }
        if num % 3 == 0 {
            printStatement += "didn't learn this one in school."
        } else {
            printStatement += "that's easy."
        }
        
        if num > previousValue {
            printStatement += "getting bigger"
        } else {
            printStatement += "it's stopped growing"
        }
        previousValue = num
    }
    print(printStatement)
}

checkInts(arrayOfInts: arrayOfInts)

// MARK: - PART 2: Ternary Operator

func checkIntsWithTernary(arrayOfInts: [Int]) {
    var printStatement = ""
    var previousValue = 0
    let newArrays = arrayOfInts
    for num in newArrays {
        num < 50 ? (printStatement += "low") : (printStatement += "high")
        num % 3 == 0 ? (printStatement += "didn't learn this one in school.") : (printStatement += "that's easy.")
        num > previousValue ? (printStatement += "getting bigger") : (printStatement += "it's stopped growing")
        previousValue = num
    }
    print(printStatement)
}

checkIntsWithTernary(arrayOfInts: arrayOfInts)

// MARK: - PART 3: nil coalescing
let middleName: String? = nil
let greetingsList: [String]? = ["hi", "lee"]

print(middleName ?? "Can not find middle name.")
var list = greetingsList ?? []

// MARK: - Black Diamond
func nestedTernary(isConfusing: Bool) {
    print(true && false ? "Result is (true && false)" : true || false ? "Result is (true || false)" : false || false ? "Result is (false || false)" : "The condition is unknown")
}

nestedTernary(isConfusing: true)
    
    
//    - If the integer is greater than 50 and even, it should print "big even". If it is greater than 50 and odd, it should print "big odd".
//    - Likewise, a smaller integer should print "little even" or "big even"..
//    - Do this using a nested ternary operator instead of if statements. */


// MARK: - Instructions
/*
 Instructions - PART 1:

1)  Make an array of 10 Ints. Then make a function that takes a parameter of [Int] and loops through the array.
2)  If the value is below 50, print "low". Otherwise, print "high."
3) Test your function by passing in the array.
4)  Now add an if statement to your loop so that if the value is divisible by 13 it also prints "didn't learn this one in school," otherwise print "that's easy."
5) Add another if statement to your loop so that if the value is greater than the previous value it also prints "getting bigger" otherwise print "it's stopped growing" (for the first value, you can compare it to 0).
6) An example of the print statement would be low, that's easy, getting bigger.
7) you may want to create a "print" variable and add to it every time we add a new piece of logic, i.e. let printStatement = "", then start adding to it printStatement = printStatement + "low", etc.

 Instructions - PART 2:
 - Change your code to use ternary operators (see "Ternary Conditional Operator" in the Swift Programming Guide)

 Instructions - PART 3:
 - Create two optional values, one set to nil and one not set to nil, and use “nil coalescing” (also see documentation or the Swift Programming Guide) to unwrap each optional value (in place of if let)

 Black Diamond 💎💎💎
 - Write a function called "nestedTernary" that takes in a single integer.
 - If the integer is greater than 50 and even, it should print "big even". If it is greater than 50 and odd, it should print "big odd".
 - Likewise, a smaller integer should print "little even" or "little odd".
 - Do this using a nested ternary operator instead of if statements. */
