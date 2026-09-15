//  🏔️ MTECH Code Challenge SB07: "Alphabet Indexer"
//  Concept: Practice storing and evaluating a custom dataset

//  Instructions:
//  When provided with a letter, return its position in the English alphabet.
//  Your code should either throw an error, return nil, or fail to compile if something other than a single letter is provided.

//  Examples:
//  Input: "a"
//  Output: 1

//  Notes:
//  Your code should be case insensitive.

//  ⌺ Black Diamond Challenge:
//  Extend the functionality to handle strings with multiple characters. For such strings, return the sum of the positions of all the letters in the string. If any non-letter characters are present, throw an error, return nil, or fail to compile.
//  Rewrite your function to not rely on using a literal array for the alphabet. (In other words, the alphabet itself should not appear in your function.)

import Foundation


func whereInAlphabet(letter: Character) -> Int? {
    let alphabet: [String: Int] = ["A" : 1, "B" : 2, "C" : 3, "D" : 4, "E" : 5, "F" : 6, "G" : 7, "H" : 8, "I" : 9, "J" : 10, "K" : 11, "L" : 12, "M" : 13, "N" : 14, "O" : 15, "P" : 16, "Q" : 17, "R" : 18, "S" : 19, "T" : 20, "U" : 21, "V" : 22, "W" : 23, "X" : 24, "Y" : 25, "Z" : 26]
    let correctCaseLetter = letter.uppercased()
    let locationInAlphabet = alphabet[correctCaseLetter]
    return locationInAlphabet
}

if let position = whereInAlphabet(letter: "D") {
    print(position)
}

func whereInAlphabet2(at letter: Character) -> Int? {
    guard letter.isLetter else {
        return nil
    }
    let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
    var position = alphabet.firstIndex(of: letter)
    return position! + 1
}

print(whereInAlphabet2(at: "e"))

