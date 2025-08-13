//
//  DesignBrowserHistory.swift
//  iOSPOC
//
//  Created by Rahul Goel on 28/05/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/submissions/detail/404047127/

/**
 * Your BrowserHistory object will be instantiated and called as such:
 * let obj = BrowserHistory(homepage)
 * obj.visit(url)
 * let ret_2: String = obj.back(steps)
 * let ret_3: String = obj.forward(steps)
 */
class BrowserHistory {

    var history:[String] = [String]()
    var current = 0
    init(_ homepage: String) {
        history = [homepage]
        current = 0
    }
    
    func visit(_ url: String) {
        if current == history.count - 1{
            history.append(url)
        }else{
            //Remove all forward history
            history.removeSubrange(current + 1...history.count - 1)
            history.append(url)
        }
        current += 1
    }
    
    func back(_ steps: Int) -> String {
        let diff = current - steps
        if diff >= 0{
            current = diff
            return history[diff]
        }else{
            current = 0
            return history[0]
        }
    }
    
    func forward(_ steps: Int) -> String {
        let sum = current + steps
        if sum >= history.count{
            current = history.count - 1
            return history.last ?? ""
        }else{
            current = sum
            return history[sum]
        }
    }
}


