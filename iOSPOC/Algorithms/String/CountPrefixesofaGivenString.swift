//
//  CountPrefixesofaGivenString.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 12/11/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

// https://leetcode.com/problems/count-prefixes-of-a-given-string/description/

func countPrefixes(_ words: [String], _ s: String) -> Int { //Time : O(NumberOfWords*StringLength)
    var count = 0
    for word in words{
        count += s.starts(with: word) ? 1 : 0
    }
    return count
}
