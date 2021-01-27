import UIKit

// Week 2: Tuesday >> Stretch Problem At DevMountain
// X in Y

// MARK: - Make a method that prints every X number between 0 and Y.
func printX(y: Int) {
    for i in 0...y {
        print(i)
    }
}
print("-------------------- This is printX function --------------------")
printX(y: 5)

// MARK: - Make a second method that prints every multiple of X between 0 and Y.
func dividibleBy(x: Int, y: Int) {
    for i in 0...y {
        if i % x == 0 {
            print(i)
        }
    }
}
print("-------------------- This is dividibleBy function --------------------")
dividibleBy(x: 3, y: 10)

// MARK: - Make a method that prints every Prime number between 0 and Y.
func printPrimeNumber(y: Int) {
    for i in 0...y {
        if i == 2 || i == 3 || i == 5 || i == 7 {
            print("\(i) is a prime number.")
        } else if i == 1 || i % 2 == 0 || i % 3 == 0 || i % 5 == 0 || i % 7 == 0  {
            //print("\(i) is not prime number.")
        } else {
            print("\(i) is a prime number.")
        }
    }
}
print("-------------------- This is printPrimeNumber function --------------------")
printPrimeNumber(y: 100)

// MARK: - Instructions
/*
 Instructions:

 - Make a method that prints every X number between 0 and Y.

 - Make a second method that prints every multiple of X between 0 and Y.

 Black Diamond 💎💎💎

 - Make a method that prints every Prime number between 0 and Y.
 */


