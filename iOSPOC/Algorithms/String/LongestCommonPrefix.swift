//
//  LongestCommonPrefix.swift
//  iOSPOC
//
//  Created by Rahul Goel on 27/05/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

/*
 https://leetcode.com/problems/longest-common-prefix/
 Time : O(wordLenggth * n)
 */
func longestCommonPrefix(_ strs: [String]) -> String {
    let firstWord = Array(strs[0])
    var i = 0, prefix = "", j = 1, notMatched = false
    while i < firstWord.count {
        j = 1
        while  j < strs.count{
            if i >= strs[j].count || Array(strs[j])[i] != firstWord[i]{
                notMatched = true
                break
            }
            j += 1
        }
        
        if notMatched {
            break
        }else{
            prefix += "\(firstWord[i])"
        }
        i += 1
    }
    return prefix
}
