//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Directions: Write a method to replace all spaces in a string with '%20  You may assume that the string has suf cient space at the end to hold the additional characters,and that you are given the "true" length of the string. (Note: If implementing in Java,please use a character array so that you can perform this operation in place.)

//Input: "Mr John Smith ", 13 Output: "Mr%20John%20Smith%20"

func removeSpaceAndSubstitute (sentence: String) -> String{

    var newSentence = sentence.stringByReplacingOccurrencesOfString(" ", withString: "%20")

    return newSentence

}