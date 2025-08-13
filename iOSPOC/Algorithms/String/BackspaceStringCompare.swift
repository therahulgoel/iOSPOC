//
//  BackspaceStringCompare.swift
//  iOSPOC
//
//  Created by Rahul Goel on 16/05/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/backspace-string-compare/

func backspaceCompare(_ s: String, _ t: String) -> Bool {
    var result1 = "", result2  = ""
    
    for chr in s {
        if chr == "#"{
            if !result1.isEmpty{
                result1.removeLast()
            }
        }else{
            result1.append(chr)
        }
    }
    
    for chr in t {
        if chr == "#"{
            if !result2.isEmpty{
                result2.removeLast()
            }
        }else{
            result2.append(chr)
        }
    }
    return result1 == result2
}
