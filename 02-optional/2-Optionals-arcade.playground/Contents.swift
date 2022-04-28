
/*
🕹 Unwrap with if-let

Unwrap the following Optional using the if let statement
*/

let firstname: String? = "Sam"

if let name = firstname {
    print(firstname)
} else {
    print("This is nil")
}

/*
🕹 Unwrap with guard

Unwrap the following Optional using the guard statement
*/

enum MyError: Error {
    case invalidUsername
}

let lastname: String? = "Flynn"

func someFunction(possibleName: String?) {
    
    guard let name = possibleName else {
        return
    }

    print(name)
}
