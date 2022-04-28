let number1: Int = Int(42)
let number2: Int = 42
let number3 = 42

//Forced unwrapping
let possibleNumber: Int? = 42
let number = possibleNumber!


//var possibleNumber: Int?
//let number = possibleNumber!


//Optional Binding

if let number = possibleNumber {
    print("We have a number \(number)!")
} else {
    print("Sorry. No soup for you.")
}

func printNumber(possibleNumber: Int?) {

    guard let number = possibleNumber else {
        print("No number here.")
        return
    }

    print("We have a number \(number)!")
}


let shortForm: Int? = Int("42")
let myOptional: Int? = 4

//Nil-Coalescing
let nickName: String? = nil
let defaultName: String = "John"
let informalGreeting = "Hi \(nickName ?? defaultName)"


// Optional Chaining
class Residence {
    var numberOfRooms = 1
}

class Person {
    var residence: Residence?
}

let john = Person()
let roomCount = john.residence?.numberOfRooms // it is nill

if let roomCount = john.residence?.numberOfRooms {
    print(roomCount)
} else {
    print("Unable to retrieve the number of rooms")
}

//enum Optional<T> {
//    case some<T>
//    case none
//}
