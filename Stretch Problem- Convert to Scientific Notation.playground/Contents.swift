import UIKit

// Week 4: Wednesday >> Stretch Problem At DevMountain
// Convert to Scientific Notation

func convertToScientificNotation(number: Float) -> String {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .scientific
    numberFormatter.maximumIntegerDigits = 2
    numberFormatter.maximumFractionDigits = 2
    numberFormatter.locale = Locale(identifier: Locale.current.identifier)
    let result = numberFormatter.string(from: NSNumber(value: number))
    return result ?? "default value"
}

func convertToScientificNotationSecondMethod(number: Float) -> String {
    let negative = number >= 0 ? "" : "-"
    var positiveBase = abs(number)
    var exponent = 0
    while positiveBase >= 10 {
        exponent += 1
        positiveBase /= 10
    }
    while positiveBase <= 1 {
        exponent -= 1
        positiveBase *= 10
    }
    return "\(negative) \(positiveBase)*10^\(exponent)"
}

convertToScientificNotation(number: 8.9)
convertToScientificNotationSecondMethod(number: -8.9)

// MARK: - Instructions
/*
 Instructions:
 - Create a function called convertToScientificNotation that takes in a float as a parameter and returns a string.
 - The return value should be a string of the number in scientific notation (ex: 8.9 returns "8.9 x 10 ^ 0").
 
 Black Diamond 💎💎💎
 - Handle negative numbers.
 */
