//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Given two strings,write a method to decide if one is a permutation of the other.

//assuming the string given is "eat" - the following are permutations of the string "eat"; tea and ate. By permutation the letters and the frequency of those letters appearing in that string must be the same. 

//One of the first things that I thought about was that they must have the same count, and if they do not have the same count of letters then by default they cannot even be considered any further to be a permutation so that condition in specific should be used to rule out any permutation in the beginning

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

func areStringsPermutations (stringOne: String, stringTwo: String) -> Bool{

    var isPermutation = true
    
    if stringOne.characters.count != stringTwo.characters.count {
    
        isPermutation = false
    }
    
    else {
    
        var firstDictionary = createFrequencyDictionary(stringOne)
        
        var secondDictionary = createFrequencyDictionary(stringTwo)
        
        if firstDictionary == secondDictionary {
        
            isPermutation = true
        }
    
    }

    return isPermutation
}

areStringsPermutations("eat", stringTwo: "ate")

areStringsPermutations("eat", stringTwo: "toot")

