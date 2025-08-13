//
//  GenerateParentheses.swift
//  iOSPOC
//
//  Created by Rahul Goel on 27/05/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/generate-parentheses/

func generateParenthesis(_ n: Int) -> [String] {
    var result = [String]()
    generateParenthesisHelper(n, value: "", &result, 0 , 0)
    return result
 }

func generateParenthesisHelper(_ n:Int, value: String, _ result: inout [String], _ countOpen:Int, _ countClose:Int){
    if value.count == 2*n{
        result.append(value)
        return
    }
    if countClose < n && countOpen > countClose{
        generateParenthesisHelper(n, value: "\(value))", &result, countOpen, countClose + 1)
    }
    if countOpen < n{
        generateParenthesisHelper(n, value: "\(value)(", &result, countOpen + 1,  countClose)
    }
}
