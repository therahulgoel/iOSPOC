//
//  Check If String Is a Prefix of Array.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 13/11/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
// https://leetcode.com/problems/check-if-string-is-a-prefix-of-array

func isPrefixString(_ s: String, _ words: [String]) -> Bool { //Time : O(NumberOfWords)
    var str = "" //Take Emoty String
    for word in words{
        str += word
        if str == s{
            return true
        }
    }
    return false
}
