//
//  ShuffleString.swift
//  iOSPOC
//
//  Created by Rahul  Goel on 30/10/22.
//  Copyright © 2022 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/shuffle-string/

func restoreString(_ s: String, _ indices: [Int]) -> String {
    var resultArr = Array(repeating: "", count: s.count)
    let arrS = Array(s)
    for (i, indice) in indices.enumerated() {
        resultArr[indice] = "\(arrS[i])"
    }
    return resultArr.joined(separator: "")
}
