import UIKit

func travel (action: (String) -> Void) {
    print("I'm getting ready to go")
    action("London")
    print("I arrived")
}

travel {(place: String) in
    print("I'm driving \(place) in my car")
}

func history(action: (String) -> String) {
    print("History new line")
    let nameOfBook = action("1984")
    print(nameOfBook)
    print("I' reading")
}

history { book in
     "I'm reading \(book)"
}

func computer(action: (String,Int) -> String) {
    print("My computer is very long charged.")
    let charged = action("1 Hours",60)
    print(charged)
    print("End charge...")
}

computer {
     "My computer is \($0) charged %\($1)"
}

func movies() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter).My favorites movies \($0)")
        counter += 1
    }
}

let result = movies()
result("Interstellar")
result("Interstellar")
result("Interstellar")
result("Interstellar")

let result2 = movies()("Inception")
