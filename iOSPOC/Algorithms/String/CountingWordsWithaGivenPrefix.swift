//
//  CountingWordsWithaGivenPrefix.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 12/11/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

// https://leetcode.com/problems/counting-words-with-a-given-prefix/

func prefixCount(_ words: [String], _ pref: String) -> Int { // Time : O(NumberOfWords*PrefLength)
    var count = 0
    for str in words{
        count += str.starts(with: pref) ? 1 : 0
    }
    return count
}
