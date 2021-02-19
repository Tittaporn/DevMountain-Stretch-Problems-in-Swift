import UIKit

// Week 6: Wednesday >> Stretch Problem At DevMountain
// Fibonacci Number ==> 1, 1, 2, 3, 5, 8, 13, 21,...
func fibonacciLessThan(_ number: Int) -> Int {
    var smaller = 1
    var larger = 1
    while larger <= number {
        larger = larger + smaller
        smaller = larger - smaller
    }
    return smaller
}
fibonacciLessThan(20)

// MARK: - Instructions
/*
 Create a function that finds the closest fibonacci number that is less than or equal to the number that is passed into a function.
 Don't hesitate to Google what a Fibonacci number is.
 Test it by passing in the number 2000. We will compare results.
 Black Diamond
 Create the above using a single line of code in the function body. (Hint: recursion)
 */
