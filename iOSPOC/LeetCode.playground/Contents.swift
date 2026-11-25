import UIKit

/*
 +-----------------------------------------------------------------------------------+
 |                      BIG TECH EM CODING CURRICULUM (30 PROBLEMS)                  |
 +-----------------------------------------------------------------------------------+
 
 PATTERN 1: Boundary Conditions & Math Fundamentals
 [x] 1. Swap two numbers safely (Pass by reference / inout)
 [x] 2. Maximum of three numbers (All equal / negative branch checks)
 [x] 3. Nth Factorial (Base cases 0! and 1!, negative rejection)
 [x] 4. Nth Fibonacci ($O(1)$ Space Iterative vs $O(2^N)$ Recursive)
 [ ] 5. Prime Number Check (Optimized $O(\sqrt{N})$ loop)
 [ ] 6. Reverse an Integer & Overflow Guard (Int32 max bounds)
 
 PATTERN 2: Two-Pointer Technique (Arrays & Strings)
 [ ] 7. Reverse an Array in-place (Two-pointer swap)
 [ ] 8. Move Zeroes to End maintaining relative order
 [ ] 9. Remove Duplicates from a Sorted Array (In-place index overwrite)
 [ ] 10. Valid Palindrome (Skipping non-alphanumeric characters)
 [ ] 11. Two Sum II - Sorted Array ($O(N)$ Two-pointer approach)
 [ ] 12. Container With Most Water (Two-pointer greedy shrink)
 
 PATTERN 3: Hash Map & Frequency Counting (Lookup in $O(1)$)
 [ ] 13. Two Sum Classic ($O(N)$ One-pass Hash Map)
 [ ] 14. First Non-Repeating Character in a String
 [ ] 15. Valid Anagram Check (26-element array vs Hash Map)
 [ ] 16. Group Anagrams (Sorted string as map key)
 [ ] 17. Intersection of Two Arrays (Unique elements)
 
 PATTERN 4: Fast & Slow Pointers / Array Manipulations
 [ ] 18. Find Missing Number in Array $[0 \dots N]$ (Sum formula vs XOR)
 [ ] 19. Rotate Array by $K$ positions ($O(1)$ Space triple reverse)
 [ ] 20. Merge Two Sorted Arrays in-place ($O(M+N)$)
 [ ] 21. Product of Array Except Self ($O(N)$ without division)
 
 PATTERN 5: Sliding Window & Subarrays
 [ ] 22. Maximum Subarray Sum (Kadane's Algorithm)
 [ ] 23. Maximum Sum Subarray of Size $K$ (Fixed Window)
 [ ] 24. Longest Substring Without Repeating Characters (Dynamic Window)
 
 PATTERN 6: Stacks, Binary Search & 2D Grids
 [ ] 25. Valid Parentheses Matching (Stack `[]`, `{}`, `()`)
 [ ] 26. Min Stack (Retrieve minimum element in $O(1)$)
 [ ] 27. Binary Search (Overflow-safe midpoint calculation)
 [ ] 28. Search in a Rotated Sorted Array
 [ ] 29. Transpose a 2D Matrix (In-place row $\leftrightarrow$ col)
 [ ] 30. Spiral Order Matrix Traversal
 +-----------------------------------------------------------------------------------+
 */


var greeting = "Hello, Leetcode playground"

//1. Swap two numbers safely (Pass by reference / inout)
func swapTwoNumbers(a:inout Int, b:inout Int){
    var tmp = a
    a = b
    b = tmp
}
var a = 7, b = 17
swapTwoNumbers(a: &a, b: &b)
print(a,b)


//2. Maximum of three numbers (All equal / negative branch checks)
func maxThreeNumbers(a:Int, b:Int, c:Int){
    if a >= b && a >= c {
        print(a)
    }else if (b >= a && b >= c) {
        print(b)
    }else {
        print(c)
    }
}
maxThreeNumbers(a: 8, b: 90, c: 1)

//3. Nth Factorial (Base cases 0! and 1!, negative rejection)
func Factorial(n:Int){
    if n < 0 {
        print(-1)
        return
    }
    if n <= 1 {
        print(1)
        return
    }
    var outcome = 1
    for index in 1 ... n {
        outcome = index * outcome
    }
    print(outcome)
}
Factorial(n: 5)


//4. Nth Fibonacci ($O(1)$ Space Iterative vs $O(2^N)$ Recursive)
func nthFibonacci(n:Int)->Int{
    if n < 0 {
        return -1
    }
    if n <= 1 {
        return n
    }
    var prev1 = 0
    var prev2 = 1
    var current = 0
    for index in 2 ... n {
        current = prev1 + prev2
        prev1 = prev2
        prev2 = current
    }
    
    return cur rent
}

//5. Prime Number Check (Optimized $O(\sqrt{N})$ loop)
func checkPrime(n:Int)->Bool{
    var isPrime = false
    
    return isPrime
}


//1. Linear Search
func linearSearch(number:Int, arr:[Int]){
    var i = 0
    for index in 0 ..< arr.count{
        if arr[index] == number {
            print("found at \(index)")
        }
    }
}
linearSearch(number: 3, arr: [2,3,44,55,77,88])




/*
NeetCode 150 on Leetcode: https://leetcode.com/problem-list/plakya4j/
*/








