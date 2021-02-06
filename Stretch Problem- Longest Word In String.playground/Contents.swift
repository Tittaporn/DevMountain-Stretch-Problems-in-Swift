import UIKit

// Week 5: Tuesday >> Stretch Problem At DevMountain
// Stretch Problem: Longest Word In String

func longestWord(in string: String) -> String {
    var customCharacterSet = CharacterSet()
    customCharacterSet.formUnion(.whitespaces)
    customCharacterSet.formUnion(.punctuationCharacters)
    
    let words = string.components(separatedBy: customCharacterSet)
    print(words)
    var longestWord = ""
    for word in words {
        if word.count  > longestWord.count {
            longestWord = word
        }
    }
    return longestWord
}

longestWord(in: "one two threeeee")

// MARK: - Objective-C ==> https://en.wikibooks.org/wiki/Algorithm_Implementation/Strings/Longest_common_substring
/*
 
    (NSString *)longestCommonSubstring : (NSString *)substring string:(NSString *)string {
        if (substring == nil || substring.length == 0 || string == nil || string.length == 0) {
            return nil;
            
        }
        NSMutableDictionary * map = [NSMutableDictionary dictionary];
        int maxlen = 0;
        int lastSubsBegin = 0;
        NSMutableString *sequenceBuilder = [NSMutableString string];
            
        for (int i = 0; i < substring.length; i++)
        {
            for (int j = 0; j < string.length; j++)
            {
                unichar substringC = [[substring lowercaseString] characterAtIndex:i];
                unichar stringC = [[string lowercaseString] characterAtIndex:j];

                if (substringC != stringC) {
                    [map setObject:[NSNumber numberWithInt:0] forKey:[NSString stringWithFormat:@"%i%i",i,j]];
                }
                else {
                    if ((i == 0) || (j == 0)) {
                        [map setObject:[NSNumber numberWithInt:1] forKey:[NSString stringWithFormat:@"%i%i",i,j]];
                    }
                    else {
                        int prevVal = [[map objectForKey:[NSString stringWithFormat:@"%i%i",i-1,j-1]] intValue];
                        [map setObject:[NSNumber numberWithInt:1+prevVal] forKey:[NSString stringWithFormat:@"%i%i",i,j]];
                    }
                    int currVal = [[map objectForKey:[NSString stringWithFormat:@"%i%i",i,j]] intValue];
                    if (currVal > maxlen) {
                        maxlen = currVal;
                        int thisSubsBegin = i - currVal + 1;
                        if (lastSubsBegin == thisSubsBegin)
                        {//if the current LCS is the same as the last time this block ran
                            NSString *append = [NSString stringWithFormat:@"%C",substringC];
                            [sequenceBuilder appendString:append];
                        }
                        else //this block resets the string builder if a different LCS is found
                        {
                            lastSubsBegin = thisSubsBegin;
                            NSString *resetStr = [substring substringWithRange:NSMakeRange(lastSubsBegin, (i + 1) - lastSubsBegin)];
                            sequenceBuilder = [NSMutableString stringWithFormat:@"%@",resetStr];
                        }
                    }
                }
            }
        }
        return [sequenceBuilder copy];
    }

*/

// MARK: - Instructions
/*
 Instructions:
 - Write a function that takes a string and returns the biggest word in that string.
 - Make sure to remove punctuation and whitespace.
 - longestWord("This string, has a gigantic! word in it...") // returns "gigantic"
 - longestWord("one, two, three") // returns "three"
 - Look up NSCharacterSet methods to remove whitespace and punctuation. Create the charSets as NSMutableCharset objects so you can combine the two CharSets. Call the componentsSeperatedByCharacterInSet method on the parameter string to get an array of strings after separating them by the charSets. Loop through the array to check against your return string length.

 Black Diamond 💎💎💎
- Do this in an Objective-C project.
 */
