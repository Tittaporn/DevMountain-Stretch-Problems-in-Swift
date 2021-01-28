import UIKit

// Week 3: Wednesday >> Stretch Problem At DevMountain

// Protocols and Protocol Extensions

// MARK: - Protocol
protocol Vehicle: AnyObject {
    var speed: Double {get set}
    var isMoving: Bool {get set}
    func startMoving()
    func stopMoving()
}

protocol Racer: Vehicle {
    func race() -> Double
}

// MARK: - Protocol extensions
extension Vehicle {
    
    func startMoving() {
        self.isMoving = true
    }
    func stopMoving() {
        self.isMoving = false
    }
}

extension Racer {
    func race() -> Double {
        let timeTotake = 1000 / self.speed
        return timeTotake
    }
}

// MARK: - classes
class LawnMower: Vehicle {
    var speed: Double
    var isMoving: Bool
    init(speed: Double, isMoving:Bool) {
        self.speed = speed
        self.isMoving = isMoving
    }
}

class Truck: Vehicle {
    var speed: Double
    var isMoving: Bool
    init(speed: Double, isMoving:Bool) {
        self.speed = speed
        self.isMoving = isMoving
    }
}
    
class Car: Racer {
    var speed: Double
    var isMoving: Bool
    init(speed: Double, isMoving:Bool) {
        self.speed = speed
        self.isMoving = isMoving
    }
}

class Motercycle: Racer {
    var speed: Double
    var isMoving: Bool
    init(speed: Double, isMoving:Bool) {
        self.speed = speed
        self.isMoving = isMoving
    }
}

// MARK: - properties
let truck = Truck(speed: 23.6, isMoving: true)
truck.stopMoving()
truck.isMoving
truck.startMoving()
truck.isMoving
let car = Car(speed: 100.00, isMoving: true)
let motercycle = Motercycle(speed: 45.3, isMoving: false)
let scooter = Motercycle(speed: 23.4, isMoving: true)

// MARK: - function
func winnerOfRacing(firstRacer: Racer, secondRacer: Racer) -> String {
    if firstRacer.race() > secondRacer.race() {
        return "\(firstRacer.self) is the winner."
    } else {
        return "\(secondRacer.self) is the winner."
    }
}

winnerOfRacing(firstRacer: scooter, secondRacer: motercycle)

// MARK: - Instructions
/*
 Instructions:

 - Create a protocol called Vehicle that requires a variable for speed as a Double, a variable for isMoving as a Bool, and a func startMoving() and func stopMoving().
 - Create two separate classes that conform to the Vehicle protocol (i.e. class LawnMower and class Truck). Your start and stop functions should simply check for whether or not the isMoving property is true or false, switch it to the opposite, and then print whether or not it is moving.
 - Create one instance of each of your two classes, and call your start and stop functions on them to be sure they work.
 - Notice that you have to write the same function in two distinct classes. Create an extension on your vehicle protocol and implement the two functions there. Now delete the two functions from your two classes. Notice that you do not have an error and that the functions still work.

 Black Diamond  💎💎💎

 - Create a protocol Racer that inherits from your first protocol and adds a func race() -> Double.
 - Implement your race function in a protocol extension. It should return the time it takes for the vehicle the function was called on to travel 1000 meters.
 - Create two more classes that conform to Racer or make your existing vehicles conform to Racer. Create another function outside of your classes that will take in two Racer objects and return the winner.
 */

