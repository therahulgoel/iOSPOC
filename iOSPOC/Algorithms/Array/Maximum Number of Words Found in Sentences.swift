//
//  Maximum Number of Words Found in Sentences.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 13/11/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
// https://leetcode.com/problems/maximum-number-of-words-found-in-sentences/

func mostWordsFound(_ sentences: [String]) -> Int { 
    var maxCount = 0
    for sentence in sentences{
        let tmp = sentence.components(separatedBy: " ").count
        maxCount = max(tmp, maxCount)
    }
    return maxCount
}
