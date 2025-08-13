//: Playground - noun: a place where people can play
//Created On : XCode 15.0
// By : Rahul Goel CSE

import Cocoa
import Foundation

var str = "Hello, playground For Generics"

/*
 Generic code enables you to write flexible, reusable functions and types that can work with any type. You can write code that avoids duplication by using generics in most cases.

 Swift’s Array and Dictionary types are both generic collections. You can create an array that holds Int values, or an array that holds String values, or indeed an array for any other type that can be created in Swift.

 */

//1. Swapping two values : String or Int or Double
func swapTwoValues<T> (a:inout T,b: inout T){
    let tmp = a
    a = b
    b = tmp
}

    //Usage 1 : String
    var name1 = "iOS", name2 = "Android"
    name1
    name2
    swap(&name1, &name2)
    name1
    name2

    //Usage 2 : Int
    var val1 = 5, val2 = 6
    val1
    val2
    swap(&val1, &val2)
    val1
    val2

//2. Array Sorting
func my_sort<T: Comparable>(_ val:[T]) -> [T]{
    return val.sorted()
}

print(my_sort([1,44,2,3]))
print(my_sort(["a","c","b"]))
print(my_sort(["ab","ac","abd","abc"])) //Dictionary Sort


//3. Generic Stack
class GenericStack<T>{
    private var arr:[T] = []
    func push(_ val:T){
        arr.append(val)
    }
    func pop(){
        arr.removeLast()
    }
    
    func printElements(){
        print("\(arr.count)")
    }
}

let stack = GenericStack<Int>()
stack.push(4)
stack.push(100)
stack.printElements()
stack.pop()
stack.printElements()


//4. Optional Unwrapping with default value
func unwrap<T>(_ value:T?, _  defaultValue:T) -> T{
    return value ?? defaultValue
}

var optional:String?
unwrap(optional , "")

//5. Unwrap all optional types with default value
extension Optional where Wrapped: ExpressibleByIntegerLiteral {
    func customUnwrap() -> Wrapped {
        switch self {
        case .none:
            return 0
        case .some(let value):
            return value
        }
    }
}

extension Optional where Wrapped == String {
    func customUnwrap() -> String {
        switch self {
        case .none:
            return ""
        case .some(let value):
            return value
        }
    }
}
var optionalInt: Int?
let unwrappedInt = optionalInt.customUnwrap()
print("Unwrapped Int: \(unwrappedInt)")

let optionalString: String? = "Hello, World!"
let unwrappedString = optionalString.customUnwrap()
print("Unwrapped String: \(unwrappedString)")


//6. Check if two types are equal with Equatable protocol
func areEqual<T:Equatable >(_ a:T, _ b:T) -> Bool{
    return a == b
}
areEqual(8, 9)

/*
 In Swift, a where clause in generics is used to specify constraints on the generic types. 
 It allows you to define requirements or relationships between the types involved in a generic context.
 */

// 7. A generic function with a where clause
func isEqual<T: Equatable>(value1: T, value2: T) -> Bool where T: Numeric {
    return value1 == value2
}
let result = isEqual(value1: 42, value2: 42)
print(result)  // Output: true


//8. generic function with multiple where clauses
func processData<T>(_ data: T) where T: Equatable, T: ExpressibleByIntegerLiteral {
    print("Data: \(data)")
}
processData(42)  // Output: Data: 42

