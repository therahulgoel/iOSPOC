//
//  CheckIfTwoStringArraysareEquivalent.swift
//  iOSPOC
//
//  Created by Rahul Goel on 17/04/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/check-if-two-string-arrays-are-equivalent/
func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
    let str1 = word1.reduce("") { (res, str) -> String in
        return res + str
    }
    let str2 = word2.reduce("") { (res, str) -> String in
        return res + str
    }
    return str1 == str2
}
