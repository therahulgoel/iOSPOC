//
//  DetermineifStringHalvesAreAlike.swift
//  iOSPOC
//
//  Created by Rahul Goel on 13/04/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/determine-if-string-halves-are-alike/
func halvesAreAlike(_ s: String) -> Bool {
    var i = 0
    let vowels: [Character] = ["a","e","i","o","u","A","E","I","O","U"], length = s.count, charArr = Array(s)
    var firstHalfCount = 0, secondHalfCount = 0
    while i < length/2 {
        firstHalfCount += vowels.contains(charArr[i]) ? 1 : 0
        secondHalfCount += vowels.contains(charArr[length - i - 1]) ? 1 : 0
        i += 1
    }
    return firstHalfCount == secondHalfCount
}
