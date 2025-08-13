//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground for Subscripts"

//Subscripts are used to access information from a collection, sequence and a list in Classes, Structures and Enumerations without using a method.

// Subscripts enable you to access elements of a collection, list, or sequence using a shortcut syntax.

/*For array we use subscript to access and set elements, there could have been two methods to do the same,
using subscript gives syntatic sugar to add ease of usage.*/

struct MyIBagtems{
    var values:[String:Int] = [String:Int]()
    
    subscript(_ item:String) -> Int{
        get {
            return values[item] ?? 0
        }
        set{
            values[item] = newValue
        }
    }
}

//Usage:
var bag = MyIBagtems()
bag["pen"] = 2
bag["pencil"] = 5

print("\(bag["pen"])")
