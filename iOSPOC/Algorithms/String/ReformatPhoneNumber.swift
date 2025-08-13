//
//  ReformatPhoneNumber.swift
//  iOSPOC
//
//  Created by Rahul Goel on 17/04/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/reformat-phone-number/

func reformatNumber(_ number: String) -> String {
    var formattedNumber = "", tmp = ""
    for ch in number{
        if ch.isNumber {
            tmp += "\(ch)"
        }
    }
    let length = tmp.count
    if length > 4{
        var i = 0
        while i < length{
            if true{ //Take multiple of 3
                
            }
            i += 3
        }
    }else{
        formattedNumber = reformatNumberHelper(tmp)
    }
    
    return formattedNumber
  }

func reformatNumberHelper(_ num: String)->String{
    switch num.count {
    case 4:
         var str = Array(num)
         str.insert("-", at: 2)
        return String(str)
    default: //2 or 3
        return num
    }
}
