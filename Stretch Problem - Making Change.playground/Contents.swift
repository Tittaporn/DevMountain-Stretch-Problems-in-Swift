import UIKit

// Week 4: Tuesday >> Stretch Problem At DevMountain
// Making Change

// MARK: - Make a function that takes in a given amount of money (i.e. 2.15) and returns a string of the amount of dollars, quarters, dimes, nickels, and pennies needed to make that amount of money. Return something like: Your change is 1 quarter, 2 dimes, 0 nickels, and 1 penny.

func makingChange(amountOfMoney: Double) -> String {
    let dollar = 1.0
    let quarter = 0.25
    let dime = 0.10
    let nickel = 0.05
    let penny = 0.01
   
    var newAmountOfMoney = amountOfMoney
    
    let numberOfDollars: Int = Int(newAmountOfMoney / dollar)
    let dollarInDouble = (Double(numberOfDollars) * dollar)
    newAmountOfMoney -= dollarInDouble
    
    let numberOfQuarters: Int  = Int(newAmountOfMoney / quarter)
    let quartersInDouble = (Double(numberOfQuarters) * quarter)
    newAmountOfMoney -= quartersInDouble
    
    let numberOfDimes: Int  = Int(newAmountOfMoney / dime)
    let dimeInDouble = (Double(numberOfDimes) * dime)
    newAmountOfMoney -= dimeInDouble
    
    let numberOfnickels: Int  = Int(newAmountOfMoney / nickel)
    let nickelInDouble = (Double(numberOfnickels) * nickel)
    newAmountOfMoney -= nickelInDouble
    
    let numberOfPennies: Int  = Int(newAmountOfMoney / penny)
   
    return "Your change is \(numberOfDollars) dollars, \(numberOfQuarters) quarters, \(numberOfDimes) dimes, \(numberOfnickels) nickels, and \(numberOfPennies) pennies."
}

makingChange(amountOfMoney: 5.68)

// MARK: - Make a function that takes in the cost of an item, and the amount of money paid (i.e. cost: $2.15, amount paid: $5.00) and then returns a string detailing the amount of change in dollars, quarters, dimes, nickels, and pennies.

func calculateChange(costOfItem: Double, moneyPaid: Double) -> String {
    
    let dollar = 1.0
    let quarter = 0.25
    let dime = 0.10
    let nickel = 0.05
    let penny = 0.01
   
    var newAmountOfMoney = moneyPaid - costOfItem
    
    let numberOfDollars: Int = Int(newAmountOfMoney / dollar)
    let dollarInDouble = (Double(numberOfDollars) * dollar)
    newAmountOfMoney -= dollarInDouble
    
    let numberOfQuarters: Int  = Int(newAmountOfMoney / quarter)
    let quartersInDouble = (Double(numberOfQuarters) * quarter)
    newAmountOfMoney -= quartersInDouble
    
    let numberOfDimes: Int  = Int(newAmountOfMoney / dime)
    let dimeInDouble = (Double(numberOfDimes) * dime)
    newAmountOfMoney -= dimeInDouble
    
    let numberOfnickels: Int  = Int(newAmountOfMoney / nickel)
    let nickelInDouble = (Double(numberOfnickels) * nickel)
    newAmountOfMoney -= nickelInDouble
    
    let numberOfPennies: Int  = Int(newAmountOfMoney / penny)
   
    return "Your change is \(numberOfDollars) dollars, \(numberOfQuarters) quarters, \(numberOfDimes) dimes, \(numberOfnickels) nickels, and \(numberOfPennies) pennies."
}

calculateChange(costOfItem: 29.33, moneyPaid: 50)



// MARK: - Instructions
/*
 Instructions:

 - Make a function that takes in a given amount of money (i.e. 2.15) and returns a string of the amount of dollars, quarters, dimes, nickels, and pennies needed to make that amount of money. Return something like: Your change is 1 quarter, 2 dimes, 0 nickels, and 1 penny.

  

 Black Diamond 💎💎💎

 - Make a function that takes in the cost of an item, and the amount of money paid (i.e. cost: $2.15, amount paid: $5.00) and then returns a string detailing the amount of change in dollars, quarters, dimes, nickels, and pennies.

 - When this works, try to recreate Swift's built-in filter function. Just like the Swift function, it should be generic and it should take a closure that returns a Bool, from which it determines how to filter your sequence type.
 */
