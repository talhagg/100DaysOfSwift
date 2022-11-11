import UIKit

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Create a new user!")
    }
}

var user = User()
user.username = "twostraws"

//Self

struct Computer {
    var computerName: String
    
    init(computerName: String) {
        print("\(computerName) was 2022")
        self.computerName = computerName
    }
}

//Lazy properties

struct Familyree {
    init() {
        print("Creating family tree!")
    }
}

struct Employess {
    var name: String
    lazy var familyTree = Familyree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Employess(name: "Ed")
ed.familyTree

// Statick properties and methods

struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let micheal = Student(name: "Micheal")
let taylor = Student(name: "Taylor")
print(Student.classSize)


// Access Control

struct Company {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security is \(id)"
    }
}

let adam = Company(id: "12345")
