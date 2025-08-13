//
//  CountItemsMatchingaRule.swift
//  iOSPOC
//
//  Created by Rahul Goel on 12/04/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

// @therahulgoel
// https://leetcode.com/problems/count-items-matching-a-rule/

func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
    var totalMatchingRule = 0
    let map = ["type":0,
        "color":1,
        "name":2
    ]
    let indexToLookFor = map[ruleKey] ?? 0
    for row in items{
            if row[indexToLookFor] == ruleValue {
                totalMatchingRule += 1
            }
        }
    return totalMatchingRule
}


