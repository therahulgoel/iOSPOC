//: Playground - noun: a place where people can play
//Created On : XCode 11.0
// By : Rahul Goel CSE

import Cocoa

var str = "Hello, playground For Protocols"

/*A protocol defines a blueprint of
 methods,
 properties,and
 other requirements that suit a particular task or piece of functionality.
*/

/*
 Protocol can be adopted by:
    Class
    Structure
    Enumeration
 to provide actual implementation of those requirements.
 */

//Protocol Syntax
protocol SomeProtocol{
    func someMethod(val:String)
}

//Protocol extension allow you to provide default implementations for methods or properties in a protocol.
protocol Humans{
    func basePlanet()
}

extension Humans {
    func hasOrganicLife()-> Bool {
        return true
    }
}


//Delegate Example
public protocol EarthDelegate{
    func alieansSpottedMsg()
}

class Mars{
    var delegate:EarthDelegate?
    func informPlanetEarth(){
        if let _ = self.delegate {
            self.delegate?.alieansSpottedMsg()
        }
    }
}

class Earth:EarthDelegate{
     func checkForNewLifeInMars(){
        let obj:Mars = Mars()
        obj.delegate = self
        obj.informPlanetEarth()
    }
    func alieansSpottedMsg(){
        print("Hurray we finally found them")
    }
}
Earth().checkForNewLifeInMars()

//Hashable Protocol
struct iPad:Hashable{
    var serialNumber:String
    var capacity:Int
    
    func hash(into hasher: inout Hasher){
        hasher.combine(serialNumber)
    }
}

let ipad1 = iPad(serialNumber: "123", capacity: 10)
ipad1.hashValue
let ipad2 = iPad(serialNumber: "1234", capacity: 20)
ipad2.hashValue

//Optional Methods in Protocols
@objc protocol exampleProtocol{
    func method1()
    @objc optional func method2()
}

protocol someProto{
    func cool()

}

//Protocols can have associated types.
protocol SomeProtocolAssociaton {
    associatedtype T:BinaryInteger
}

extension SomeProtocolAssociaton {
    func sumUpTo(n:T) -> T {
        return n * (n + 1) / 2
    }
}
//Usage:
struct NumericType: SomeProtocolAssociaton {
    typealias T = Int
}

let result = NumericType().sumUpTo(n: 5)
print(result)  // Output: 15



//RawRepresentable Protocol


//Comparable Protocol


//Sequence Protocol


//Collection Protocol


//Iteratable Protocol



