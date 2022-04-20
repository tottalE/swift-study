import UIKit
/*
🕹 Min

Write a function named min2 that takes two Int values, a and b, and returns the smallest one. Use _ to ignore the external parameter names for both a and b.
 
 > min(1,2)
 > 1
*/

func min2 (_ a: Int, _ b: Int) -> Int {
    if(a > b){
        return a
    } else {
        return b
    }
}

min2(4,5)

/*
🕹 Last Digit

Write a function that takes an Int and returns it’s last digit. Name the function lastDigit. Use _ to ignore the external parameter name.

 > lastDigit(12345)                     Hint: % modulus operator
 > 5
 */

func lastDigit(_ num: Int) -> Int{
    return num % 10
}

/*
🕹 First Numbers

Write a function named first that takes an Int named N and returns an array with the first N numbers starting from 1. Use _ to ignore the external parameter name.

 > first(3)
 > [1, 2, 3]
*/

func first(_ N: Int) -> [Int] {
    var someInts = [Int]()
    
    for i in 1 ... N {
        someInts.append(i)
    }
    
    return someInts
}

first(3)

/*
🕹 Reverse

Write a function named reverse that takes an array of integers named numbers as a parameter. The function should return an array with the numbers from numbers in reverse order.

 > reverse([1, 2, 3])
 > [3, 2, 1]
 */

func reverse(_ arr: [Int]) -> [Int] {
    return arr.reversed()
}

reverse([1, 2, 3])

/*
🕹 Sum

Write a function named sum that takes an array of integers and returns their sum. Use a label variable of the word 'of' and a parameter label named numbers.

 > sum(of: [1, 2, 3])
 > 6
 */
func sum(of arr: [Int]) -> Int {
    var sum = 0
    for i in arr {
        sum += i
    }
    return sum
}

sum(of: [1, 2, 3])
