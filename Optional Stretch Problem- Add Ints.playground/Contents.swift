import UIKit

// Week 6: Tuesday >> Stretch Problem At DevMountain
// Add Ints
func add(numbers:[Int]) -> Int {
    var resultOfNumbers = 0
    for num in numbers {
        resultOfNumbers += num
    }
    return resultOfNumbers
}
add(numbers: [3,7,2,4])

func addAgainByDevMountain(_ numbers: Int...) -> Int {
    return numbers.reduce(0) {$0 + $1}
}
addAgainByDevMountain(3,7,2,9,12,11)


// MARK: - Instructions
/* 
 Create a func called add where the method allows one to pass as many or as few Ints as desired and then adds them together and returns the result.
 Example: If I call add(3, 7), it prints out 10. Example: If I call add(3, 7, 2, 4), it prints out 16. Example: If I call add(3, 7, 2, 9, 12, 11), it prints out 44.
 */
