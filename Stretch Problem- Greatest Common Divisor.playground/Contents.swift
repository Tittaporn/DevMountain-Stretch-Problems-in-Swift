import UIKit


// Week 5: Thursday >> Stretch Problem At DevMountain
//  Greatest Common Divisor

func greaterCommonDivisor(a:Int, b:Int) -> Int {
    if a == b {
        return a
    }
    else {
        if a > b {
            return greaterCommonDivisor(a:a-b,b:b)
        }
        else {
            return greaterCommonDivisor(a:a,b:b-a)
        }
    }
}

print(greaterCommonDivisor(a: 20, b:12))

// MARK: - While Loop Function
func greaterCommonDivisorWithLoop(_ m: Int, _ n: Int) -> Int {
    var a = 0
    var b = max(m, n)
    var r = min(m, n)
    
    while r != 0 {
        a = b
        b = r
        r = a % b
    }
    return b
}

// MARK: - Instructions
/*
 Instructions:
 - Read about recursion.
 - Note Google's little joke when you search recursion in Chrome.
 - Create a function that returns the greatest common divisor of two numbers using recursion. (function calling itself).
 
 Black Diamond 💎💎💎
 - Go back to past stretch problems that have used loops and redo them using recursion.
 */
