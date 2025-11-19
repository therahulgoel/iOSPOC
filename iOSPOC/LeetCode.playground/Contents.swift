import UIKit

var greeting = "Hello, Leetcode playground"

var arr = [1,2,3,4,5,6,7,8]
//Print all elements in given array
for ele in arr {
    print(ele)
}

//break string into words
let words = greeting.split(separator: " ")
print(words)
arr.max()
arr.min()


func isVowel(_ c:Character)-> Bool {
    return "aeiouAEIOU".contains(c)
}

isVowel(Character("a"))
isVowel(Character("Z"))

func isNumber(_ c:Character)-> Bool {
    return "0123456789".contains(c)
}
isNumber(Character("1"))
isNumber(Character("s"))

//Find max from given array
func findMax(_ arr:[Int])->Int{
    var max = 0
    for ele in arr {
        max = max > ele ? max : ele
    }
    return max
}
findMax([3,444,5,22])

//✅ Level 1 — Super Basic Recursion (build confidence)

//1. Print numbers from 1 to n
func printNumbers(upTo n:Int){
    if n < 1 {
        return
    }else {
        printNumbers(upTo: n - 1)
        print(n)
    }
}
printNumbers(upTo: 5)

//2. Factorial of n
func factorial(_ n:Int)->Int{
    if n <= 1 {
        return n
    }else{
        return n*factorial(n-1)
    }
}
factorial(5)

//3. Sum of digits of a number
func sumOfDigitsOfANumber(_ number:Int) ->Int{
    var sum = 0
    
    return sum
}

//4. Power (aⁿ)


//5. Fibonacci (naive)


//✅ Level 2 — Medium Basic Recursion (thinking in subproblems)

//6. Reverse a string using recursion

//7. Check if a string is palindrome

//8. Count occurrences of a character in a string

//9. Find min/max in an array

//10. Sum of array elements


//✅ Level 3 — Core Recursion Patterns (interview essential)

//11. Print all subsets (Power set)

//12. Print all permutations of a string / array

//13. Print all combinations (choose k out of n)

//14. Binary Search using recursion

/*
 15. Recursive pattern printing
 *
 **
 ***

 */

//📚 Level 4 — Slightly Harder but MUST DO

//16. Tower of Hanoi

//17. Generate balanced parentheses

//18. Letter combinations of a phone number

//19. Subset sum (check if subset with sum exists)

//20. Maze solver / count paths (grid recursion)
