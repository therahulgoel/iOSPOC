//
//  DesignParkingSystem.swift
//  iOSPOC
//
//  Created by Rahul Goel on 16/05/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/design-parking-system/

class ParkingSystem {
    var carSpaces:[Int:Int] = [Int:Int]()
    init(_ big: Int, _ medium: Int, _ small: Int) {
        carSpaces[1] = big
        carSpaces[2] = medium
        carSpaces[3] = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        if let spaces = carSpaces[carType], spaces > 0 {
            carSpaces[carType] = spaces - 1
            return true
        }
        return false
    }
}


