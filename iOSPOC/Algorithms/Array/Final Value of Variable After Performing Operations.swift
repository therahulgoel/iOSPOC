//
//  Final Value of Variable After Performing Operations.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 13/11/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

//@therahulgoel
// https://leetcode.com/problems/final-value-of-variable-after-performing-operations/

func finalValueAfterOperations(_ operations: [String]) -> Int {
    var finalVal = 0
    for operation in operations {
        switch operation {
            case "--X", "X--":
            finalVal -= 1

            case "++X", "X++":
            finalVal += 1

            default:
                break
        }
    }
    return finalVal
}
