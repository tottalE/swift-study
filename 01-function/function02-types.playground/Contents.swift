import UIKit

//function이 타입을 가진다.

//모든 함수는 특정한 타입을 가지고, 파라미터 타입과 리턴타입으로 구성되어 있다.
//Every function has a specific type made up of the parameter types and the return type of the function

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multipyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

// both type is (Int, Int) -> Int


//fuction을 pass in 할 수 있다.
var mathFunction: (Int, Int) -> Int = addTwoInts

//function을 parameter로 사용가능하다.
//파라미터로 넣은 후에 함수 안에서 사용이 가능하다.
func hasAnyMatches(list:[Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

// 이 함수의 타입은? ((Int) -> Bool)
func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

//숫자가 1보다 크고 10보다 작으면 참인 함수 만들어보기.
func betweenOneandTen(number: Int) -> Bool {
    return 1 <= number && number <= 10
}

hasAnyMatches(list: numbers, condition: betweenOneandTen)
