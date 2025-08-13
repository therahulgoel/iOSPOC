//
//  LetterCombinationsofaPhoneNumber.swift
//  iOSPOC
//
//  Created by Rahul Goel on 31/05/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/letter-combinations-of-a-phone-number/

func letterCombinations(_ digits: String) -> [String] {
    var result = [String]()
    if digits.isEmpty{
        return result
    }
    var map = [Character:[Character]]()
    map = ["2":["a","b","c"],
           "3":["d","e","f"],
           "4":["g","h","i"],
           "5":["j","k","l"],
           "6":["m","n","o"],
           "7":["p","q","r","s"],
           "8":["t","u","v"],
           "9":["w","x","y","z"]]
    letterCombinationsHelper(map: &map, Array(digits), 0, &result, "")
    return result
}

func letterCombinationsHelper(map: inout [Character:[Character]], _ digits:[Character], _ startIndex:Int,
                              _ result:inout [String], _ element:String){
    if startIndex >= digits.count{
        result.append(element)
        return
    }
    let values = map[digits[startIndex]]!
    for ele in values{
        letterCombinationsHelper(map: &map, digits, startIndex + 1, &result, "\(element)\(ele)")
    }
}




