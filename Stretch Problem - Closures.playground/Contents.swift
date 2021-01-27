import UIKit

// Week 4: Monday >> Stretch Problem At DevMountain
// Stretch Problem - Closures

// MARK: - Use filter to create an array
// - User filter to create an array that contains all the numbers that are multiples of 3 from the numbersArray. Print your result.
let arrayOfNumbers = [1,2,3,33,34,46,23,64,345,43,45,67,4543623,87,99,202,4546,4542,65757,563,]

// 1) MostVerbose Using function in filter
func mutiplesOfThreeFunction(value: Int) -> Bool {
    return value % 3 == 0
}

let mutiplesOfThreeMostVerbose = arrayOfNumbers.filter(mutiplesOfThreeFunction)
print("mutiplesOfThree MostVerbose : \(mutiplesOfThreeMostVerbose)")

// 2) Verbose
let mutiplesOfThreeVerbose = arrayOfNumbers.filter({ (value: Int) -> Bool in
    return value % 3 == 0
})
print("mutiplesOfThree Verbose : \(mutiplesOfThreeVerbose)")

// 3) Medium
let mutiplesOfThreeMedium = arrayOfNumbers.filter { (value) -> Bool in
    return value % 3 == 0
}
print("mutiplesOfThree Medium  : \(mutiplesOfThreeMedium)")

// 4) Short
let mutiplesOfThreeShort = arrayOfNumbers.filter { (value) in
    value % 3 == 0
}
print("mutiplesOfThree Short  : \(mutiplesOfThreeShort)")

// 5) Swifty == The best and the shortest way.
let mutiplesOfThreeSwifty = arrayOfNumbers.filter { $0 % 3 == 0 }
print("mutiplesOfThree Swifty  : \(mutiplesOfThreeSwifty)")

// MARK: - Use reduce to find largest Number
// - Find the largest number from the previous number array and then print it. Use reduce to solve. Print your result.
let largestNumVerbose = arrayOfNumbers.reduce(0, { (currentMaximum, nextValue) -> Int in
    print("Current Largest Number : \(currentMaximum)")
    print("Next Value : \(nextValue)")
    return max(currentMaximum, nextValue)
})

let largestNumSwifty = arrayOfNumbers.reduce(0) { max($0 ,$1)}
print("Largest Num Swifty :\(largestNumSwifty)")



// MARK: - Use reduce to join all the string objects
// - Join all the string objects in the stringsArray into one string using reduce. Make sure spaces are in between each string. Print your result.
let stringsArray = ["My", "name", "is", "Lee", "Mccormick"]
let myStringShort = stringsArray.reduce("", {(runningTotal, nextValue) -> String in
    return runningTotal + nextValue + " "
})
print(myStringShort)

let myStringSwifty = stringsArray.reduce("", {$0 + $1 + " "})
print(myStringSwifty )


// MARK: - CompactMap and Reduce
// - In one line convert blackDiamondDictionary into a joined string describing Mama, Papa, and Baby bear's porridge temperature. CompactMap, Reduce, and anonymous closure arguments will be your friend.
let bearsDictionary = ["Mama" : "too colde" , "Papa" : "too hot", "Baby": "just right"]
let bearsString = bearsDictionary.compactMap{ $0.key + " is " + $0.value + "." }.reduce("", {$0 + $1 + " "})
print(bearsString)

// MARK: - Instructions
/* Closures
 
 Instructions:

- User filter to create an array that contains all the numbers that are multiples of 3 from the numbersArray. Print your result.

- Find the largest number from the previous number array and then print it. Use reduce to solve. Print your result.

- Join all the string objects in the stringsArray into one string using reduce. Make sure spaces are in between each string. Print your result.

Black Diamond 💎💎💎

- In one line convert blackDiamondDictionary into a joined string describing Mama, Papa, and Baby bear's porridge temperature. CompactMap, Reduce, and anonymous closure arguments will be your friend.
*/

/* NOTE
 Swift’s various map functions are great to keep in mind when we need to transform sequences, or optionals, into a new form. They’re also general patterns that are not unique to Swift, and learning how each of them works can let us unlock a whole suite of powerful functional programming features that can also result in simpler, more elegant code.
 https://www.swiftbysundell.com/basics/map-flatmap-and-compactmap/
 //______________________________________________________________________________________
 */
