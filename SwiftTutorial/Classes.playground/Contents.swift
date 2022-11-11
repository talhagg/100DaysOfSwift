import UIKit

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let popy = Dog(name: "Poppy", breed: "Poodle")

// Class inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

// Overriding Methods

class Car {
    func model() {
        print("Roma")
    }
}

class Garage: Car {
    override func model() {
        print("Coloumbia")
    }
}

let ferrari = Garage()
ferrari.model()

// Copying Objects

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Rihanna";

print(singer.name)

// Deinitializers

class Person {
    var name = "Talha gg"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I' m \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

// Mutability

class Pen {
    let name = "Rotring"
}

let rotring = Pen()
//rotring.name = "Faber castell" -> Error! name is let
