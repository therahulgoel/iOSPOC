//
//  Check If a Word Occurs As a Prefix of Any Word in a Sentence.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 13/11/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
// https://leetcode.com/problems/check-if-a-word-occurs-as-a-prefix-of-any-word-in-a-sentence/

func isPrefixOfWord(_ sentence: String, _ searchWord: String) -> Int { //Time : O(Number of words * searchwordLength)
    let words = sentence.components(separatedBy: " ")
    for (index,word) in words.enumerated(){
        if word.starts(with: searchWord){
            return index + 1
        }
    }
    return -1
}
