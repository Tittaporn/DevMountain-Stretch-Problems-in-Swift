import UIKit

// Week 6: Thursday >> Stretch Problem At DevMountain
// Morse Code
var dictionaryMorseCode: [Character:String] = [
    "A" : ".-",
    "B" : "-...",
    "C" : "-.-.",
    "D" : "-..",
    "E" : ".",
    "F" : "..-.",
    "G" : "--.",
    "H" : "....",
    "I" : "..",
    "J" : ".---",
    "K" : "-.-",
    "L" : ".-..",
    "M" : "--",
    "N" : "-.",
    "O" : "---",
    "P" : ".--.",
    "Q" : "--.-",
    "R" : ".-.",
    "S" : "...",
    "T" : "-",
    "U" : "..-",
    "V" : "...-",
    "W" : ".--",
    "X" : "-..-",
    "Y" : "-.--",
    "Z" : "--..",
    "0" : "-----",
    "1" : ".----",
    "2" : "..---",
    "3" : "...--",
    "4" : "....-",
    "5" : ".....",
    "6" : "-....",
    "7" : "--...",
    "8" : "---..",
    "9" : "----.",
    "." : ".-.-.-",
    "," : " --..--",
    ":" : "---...",
    "?" : "..--..",
    "'" : ".----.",
    "-" : "-....-",
    "/" : "-..-.",
    "(" : "-.--.-",
    ")" : "-.--.-",
    "\"" : ".-..-.",
    "@" : ".--.-.",
    "=" : "-...-",
    "!" : "-.-.--",
    " " : "  "
]

func morseCodeFrom(text: String) -> String {
    var returnString = ""
    for char in text.uppercased() {
        guard let nextCharacterInMorse = dictionaryMorseCode[char] else { continue }
        returnString.append(nextCharacterInMorse)
        returnString += " "
    }
    return returnString
}

morseCodeFrom(text: "Hello! Lee!")

// MARK: - Instructions
/*
 Write a function called morse that takes a string and returns a string in morse code.
 */
