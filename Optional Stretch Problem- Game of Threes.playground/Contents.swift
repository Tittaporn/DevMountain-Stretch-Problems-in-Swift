import UIKit

// Week 6: Monday >> Stretch Problem At DevMountain
// Game of Threes

func gameOfThrees(_ num:Int) -> [[String : Int]] {
    var currentValue = num
    // var arrayOfSteps: [String] = []
    var dictionariesOfStep = [[String : Int]]()
    
    while currentValue > 1 {
        switch  currentValue % 3 {
        case 0:
            currentValue /= 3
            //arrayOfSteps += ["divide by 3"]
            dictionariesOfStep.append(["divide by 3": currentValue])
        case 1:
            currentValue -= 1
            //arrayOfSteps += ["subtract by 3"]
            dictionariesOfStep.append(["subtract by 1": currentValue])
        case 2:
            currentValue += 1
            //arrayOfSteps += ["add by 3"]
            dictionariesOfStep.append(["add by 1": currentValue])

        default:
            fatalError()
        }
    }
    // print(arrayOfSteps)
    return dictionariesOfStep
}

gameOfThrees(100)


// MARK: - Instructions
/* 
 - Make a method that takes an Int and returns an array of steps to get to 1.
 - The game goes as follows: Start with the given Int and, if it is divisible by 3, divide it by 3, otherwise ADD OR SUBTRACT 1 (whichever makes the number divisible by 3, then divide it.
 - Repeat step 2, until you reach 1.
 - Example: Input: 100 Output: [100, 33, 11, 4, 1]

 ♦ Black Diamond
 Instead of returning an array, return a dictionary where the keys are the values from the array, and the keys are 0, -1, or 1 depending on how the number was manipulated to make it divisible by 3
 Sadly, the key value pairs won't be ordered :( Example: Input: 100 Output: [100 : -1 , 33 : 0, 11 : 1, 4 : -1 , 1 : 0]
 */
