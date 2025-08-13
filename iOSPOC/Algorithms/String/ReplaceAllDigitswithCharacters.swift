//
//  ReplaceAllDigitswithCharacters.swift
//  iOSPOC
//
//  Created by Rahul Goel on 16/05/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/replace-all-digits-with-characters/

//func replaceDigits(_ s: String) -> String {
//    var result = Array(s), i = 1
//    while i < s.count{
//        result[i] = getCharacter(c: getAsciiValue(c: s.index(s.startIndex, offsetBy: i - 1)))!
//        i += 1
//    }
//
//    return String(result)
//}
//
//func getAsciiValue(c:Character)->Int{
//    return Int(c.unicodeScalars.first?.value ?? 0)
//}
//
//func getCharacter(c:Int)->Character?{
//    if let unicodeScaler = UnicodeScalar(c){
//            return Character(unicodeScaler)
//    }
//    return nil
//}
