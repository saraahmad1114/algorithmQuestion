//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Given a string, write a function to check if it is a permutation of a palin­drome. A palindrome is a word or phrase that is the same  forwards and backwards. A permutation is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.
//EXAMPLE
//Input: Tact Coa
//Output: True (permutations: "taco cat", "atco eta", etc.)

func createFrequencyDictionary (word: String) -> [String: Int]{
    
    var frequenceyDictionary = [String : Int]()
    
    var stringArray = word.characters.map {String($0)}
    
    for char in stringArray{
        
        var value = 0
        
        for (key, val) in frequenceyDictionary {
            
            if key != char {
                
                value = frequenceyDictionary[char]!
                
                value = value + 1
            }
            else {
                
                value = 1
            }
        }
        
    }
    
    return frequenceyDictionary
}

func areStringsPermutationsAndPalindromes (randomWord: String) -> Bool{

    var isPermutationAndPalindrome = true
    
    var reversedRandomWord = String(randomWord.characters.reverse())
    
    var randomWordDictionary = createFrequencyDictionary(randomWord)
    
    var reversedRandomWordDictionary = createFrequencyDictionary(reversedRandomWord)

    if reversedRandomWord.characters.count != randomWord.characters.count {
    
        isPermutationAndPalindrome = false
    }
    else if randomWordDictionary == reversedRandomWordDictionary && randomWord.characters.count == reversedRandomWordDictionary.count {
    
        isPermutationAndPalindrome = true
    }

    return isPermutationAndPalindrome
}

areStringsPermutationsAndPalindromes("taco cat")
