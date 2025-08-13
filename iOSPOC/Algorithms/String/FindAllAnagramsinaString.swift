//
//  FindAllAnagramsinaString.swift
//  iOSPOC
//
//  Created by Rahul Goel on 28/05/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/find-all-anagrams-in-a-string/

func findAnagrams(_ s: String, _ p: String) -> [Int] {
    var result = [Int]()
    if p.count > s.count{
        return result
    }

    //calculate Hash of given String p
    var arrP = Array(repeating: 0, count: 26)
    var arrS = Array(repeating: 0, count: 26)
    for char in p {
        arrP[Int(char.asciiValue!) - 97] += 1
    }
        
    //Creating Freq Map for string Length equals p
    var i=0;
    for char in s{
        if i==p.count{
            break
        }
        arrS[Int(char.asciiValue!) - 97] += 1
        i+=1
    }
    if arrP == arrS{
        result.append(0)
    }
    
    i = 1
    while i <= s.count - p.count{
        let startindex = Int(s[i - 1].asciiValue!) - 97
        arrS[startindex] = arrS[startindex] - 1
        
        let endIndex = Int(s[i + p.count - 1].asciiValue!) - 97
        arrS[endIndex] = arrS[endIndex] + 1
        
        if arrS == arrP {
            result.append(i)
        }
        i += 1
    }

    return result
}

extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
