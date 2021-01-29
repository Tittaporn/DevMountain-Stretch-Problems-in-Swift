import UIKit

// Week 2: Thursday >> Stretch Problem At DevMountain
// Number Printer
func numberPrinter(number: Int) {
    let lineTopBottomEmpty = "     "
    let fill =          " _______ "
    let leftFill =      " |"
    let rightFill =       "      | "
    let fillBottom =    " ------- "
    if number == 0  {
        print(lineTopBottomEmpty)
        print("\(fill)")
        print("\(leftFill)\(rightFill )")
        print("\(leftFill)\(rightFill )")
        print("\(leftFill)\(rightFill )")
        print("\(leftFill)\(rightFill )")
        print("\(leftFill)\(rightFill )")
        print("\(fillBottom)")
    } else if number == 1 {
        print(lineTopBottomEmpty)
        print("\(rightFill )")
        print("\(rightFill )")
        print("\(rightFill )")
        print("\(rightFill )")
        print("\(rightFill )")
        print("\(rightFill )")
        print("\(rightFill )")
    } else if number == 2 {
        print(lineTopBottomEmpty)
        print("\(fill)")
        print(" \(rightFill)")
        print(" \(rightFill)")
        print("\(fillBottom)")
        print("\(leftFill)")
        print("\(leftFill)")
        print("\(fillBottom)")
    } else if number == 3 {
        print(lineTopBottomEmpty)
        print("\(fill)")
        print(" \(rightFill )")
        print(" \(rightFill )")
        print("\(fill)")
        print(" \(rightFill )")
        print(" \(rightFill )")
        print("\(fillBottom)")
    }else if number == 4 {
        print(lineTopBottomEmpty)
        print("\(leftFill)\(rightFill )")
        print("\(leftFill)\(rightFill )")
        print("\(leftFill)\(rightFill )")
        print("\(leftFill)\(rightFill )")
        print("\(fill)__")
        print(" \(rightFill )")
        print(" \(rightFill )")
    } else if number == 5 {
        print(lineTopBottomEmpty)
        print("\(fill)")
        print("\(leftFill)")
        print("\(leftFill)")
        print("\(fill)")
        print(" \(rightFill )")
        print(" \(rightFill )")
        print("\(fillBottom)")
    } else if number == 6 {
        print(lineTopBottomEmpty)
        print("\(fill)")
        print("\(leftFill)")
        print("\(leftFill)")
        print("\(fill)")
        print("\(leftFill)\(rightFill )")
        print("\(leftFill)\(rightFill )")
        print("\(fillBottom)")
    } else if number == 7 {
        print(lineTopBottomEmpty)
        print("\(fill)")
        print(" \(rightFill )")
        print(" \(rightFill )")
        print(" \(rightFill )")
        print(" \(rightFill )")
        print(" \(rightFill )")
        print(" \(rightFill )")
    }  else if number == 8 {
        print(lineTopBottomEmpty)
        print("\(fill)")
        print("\(leftFill)\(rightFill )")
        print("\(leftFill)\(rightFill )")
        print("\(fill)")
        print("\(leftFill)\(rightFill )")
        print("\(leftFill)\(rightFill )")
        print("\(fillBottom)")
    } else if number == 9 {
        print(lineTopBottomEmpty)
        print("\(fill)")
        print("\(leftFill)\(rightFill )")
        print("\(leftFill)\(rightFill )")
        print("\(fill)")
        print("  \(rightFill )")
        print("  \(rightFill )")
        print("\(fillBottom)")
    }
}

numberPrinter(number: 5)

// MARK: - Instructions
/*
 Instructions:
 
 - Create a function that takes a single digit Int as a parameter and prints it to the console the way an old-school alarm clock would look. You may create auxiliary functions if needed.
 
 For example, if you pass 2 the console might look something like this:
 
 
 
 ---
 
 |
 
 ---
 
 |
 
 ---
 
 
 
 
 
 If you pass 8 the console might look something like this:
 
 
 
 ---
 
 |     |
 
 ---
 
 |     |
 
 ---
 
 
 
 
 
 Black Diamond 💎💎💎
 
 - Modify the function to take an Int with multiple digits and print each number in the same fashion on a single Line.
 
 For example, if you pass 257 the console might look something like this:
 
 
 
 ---          ---          ---
 
 |       |                      |
 
 ---         ---                 |
 
 |                    |               |
 
 ---         ---                 |
 */

