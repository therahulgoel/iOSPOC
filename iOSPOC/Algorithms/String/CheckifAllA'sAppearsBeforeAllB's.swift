//
//  CheckifAllA'sAppearsBeforeAllB's.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 30/10/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

// https://leetcode.com/problems/check-if-all-as-appears-before-all-bs/

func checkString(_ s: String) -> Bool {
    var bHasCome = false

    let ArrS = Array(s)
    for ele in ArrS{
        if ele == "a" && bHasCome == true{
            return false
        }else if ele == "b"{
            bHasCome = true
        }
    }
    return true
}

