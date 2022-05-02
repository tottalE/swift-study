/*
 A closure can capture constants and variables from the surrounding context in which it is defined. The closure can then refer to and modify the values of those constants and variables from within its body, even if the original scope that defined the constants and variables no longer exists.
 */

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)

incrementByTen()
incrementByTen()
incrementByTen()

// Closures are reference types

/*
 Whenever you assign a function or a closure to a constant, you are actually setting that constant to be a reference to the function or closure. That means if you assign a closure to two different variables, both will refer to the same closure.
 */
let alsoIncrementByTen = incrementByTen
alsoIncrementByTen() // 40

incrementByTen() // 50
