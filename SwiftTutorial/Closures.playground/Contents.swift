import UIKit

let driving = {
    print("I'm driving in my car!")
}

driving()

let myDriving = { (place: String) in
    print("I'm going to \(place) in my car")
}

myDriving("London")

let drivingWithReturn = { (place: String) -> String in
    return "I'm going tı \(place) in my car"
}

let message = drivingWithReturn("Amsterdam")

print(message)

func travel (action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel() {
    print("I'm driving in my car")
}

travel {
    print("I'm driving in my car")
}
