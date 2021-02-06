import UIKit

var str = "Hello, playground"
// Week 5: Wednesday >> Stretch Problem At DevMountain
// Palindrome
func palindrome(string: String) -> Bool {
    var customCharacterSet = CharacterSet()
    customCharacterSet.formUnion(.whitespaces)
    customCharacterSet.formUnion(.punctuationCharacters)
    let newString = string.lowercased().components(separatedBy: customCharacterSet).joined()
    let reveresedString = String(newString.reversed())
    customCharacterSet
    return newString == reveresedString
}

print(palindrome(string: "da.d"))

// MARK: - Instructions
/*
 Instructions:
 - Make a function that takes in a string and returns if it is a palindrome (true/false).
 - palindrome("thanks") -> false
 - palindrome("rAcecar") -> true
 - Then ignore spaces.
 - palindrome("dammit im mad") -> true
 - palindrome("this is totally a palindrome") -> false
  
 Black Diamond 💎💎💎
 - Ignore punctuation.
  */
