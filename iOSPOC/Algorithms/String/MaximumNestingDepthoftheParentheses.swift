//
//  MaximumNestingDepthoftheParentheses.swift
//  iOSPOC
//
//  Created by Rahul Goel on 15/04/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/
func maxDepth(_ s: String) -> Int {
    var maxDepth = 0, tmp = 0
    for char in s{
        if char == "("{
            maxDepth += 1
            tmp = (tmp < maxDepth) ? maxDepth : tmp
        }else if char == ")"{
            maxDepth = maxDepth - 1
        }
    }
    return tmp
}
