import UIKit

// Week 4: Thursday >> Stretch Problem At DevMountain
// JsonSerialzation

// MARK: - JSON
let testDictionary: [String: Any] = ["name":"Derek","age":28,"hasLice":false,"timeSinceBirth":28.2345,"siblingNames":["Eve","Harmon","Gerald","Marty"]]

let jsonString = """

{
    "name": "Derek",
    "age": 28,
    "hasLice": false,
    "timeSinceBirth": 28.2345,
    "siblingNames": ["Eve","Harmon","Gerald","Marty"]
}

"""
let data = jsonString.data(using: .utf8, allowLossyConversion: false)!

// MARK: - Person struct

do {
    // make sure this JSON is in the format we expect
    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
        // try to read out a string array
        if let names = json["names"] as? [String] {
            print(names)
        }
    }
} catch let error as NSError {
    print("Failed to load: \(error.localizedDescription)")
}

let str = "{\"names\": [\"Bob\", \"Tim\", \"Tina\"]}"
let dataStr  = str.data(using: .utf8, allowLossyConversion: false)!

do {
    // make sure this JSON is in the format we expect
    if let json = try JSONSerialization.jsonObject(with: dataStr, options: []) as? [String: Any] {
        // try to read out a string array
        if let names = json["names"] as? [String] {
            print(names)
        }
    }
} catch let error as NSError {
    print("Failed to load: \(error.localizedDescription)")
}


// MARK: - Instructions
/*
 Instructions :
 
 - Open a new Swift playground, Copy and then paste the starter code below into your playground:
 - Create a person class with four properties
 - Name, age, hasLice, and siblingNames properties. Choose the correct types for each.
 - Make a failable initializer that takes in a dictionary of type String: Any.
 - Test this initializer on the testDictionary to make sure it works.
 
 JsonSerialzation continued:
 https://developer.apple.com/documentation/foundation/jsonserialization
 - Read about [JSONSerialization (Links to an external site.)]
 - Use a do try catch to do the following two steps:
 - Use the JSONSerialization class to deserialize the `data` using the jsonObject function.
 - Cast the result of the jsonObject function into a [String: Any] dictionary and use it to initialize a Person.
 
 */
