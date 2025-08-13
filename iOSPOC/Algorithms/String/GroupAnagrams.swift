//
//  GroupAnagrams.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 04/02/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/group-anagrams/

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var result:[[String]] = [[String]]()
    var hashes = [String]()
    var indexes = [Int]()
    
    //calculate Hash of every given String
    for (index,str) in strs.enumerated(){
        var arr = Array(repeating: 0, count: 26)
        for s in str{
            arr[Int(s.asciiValue ?? 0) - 97] += 1
        }
        var tmp = ""
        for (index,ele) in arr.enumerated(){
            if ele > 0{
                tmp += "\(getCharacter(index + 97)!)\(ele)"
            }
        }
        hashes.append(tmp)
        indexes.append(index)
    }

    var map = [String:[String]]()
    var i = 0
    for hash in hashes{
        if var value = map[hash]{
            value.append(strs[indexes[i]])
            map[hash] = value
        }else{
            map[hash] = [strs[indexes[i]]]
        }
        i += 1
    }
    result.append(contentsOf: map.values)
    return result
}

func getCharacter(_ v:Int)->Character?{
    if let unicodeScaler = UnicodeScalar(v){
            return Character(unicodeScaler)
    }
    return nil
}
