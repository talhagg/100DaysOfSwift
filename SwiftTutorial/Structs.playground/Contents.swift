import UIKit

struct Sport {
    var name : String
}

var tennis = Sport(name:"Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"


struct OlimpicSport {
    var name : String
    var olimpicSportCheck : Bool
    
    var olimpicStatus: String {
        if olimpicSportCheck {
            return "\(name) is an olimpic sport"
        } else {
            return "\(name) is not olimpic sport"
        }
    }
}

let chessBoxing = OlimpicSport(name: "ChessBoxing", olimpicSportCheck: false)
print(chessBoxing.olimpicSportCheck)

struct Progress {
    var task: String
    var amount: Int{
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loadind Data", amount: 0)
progress.amount = 30
progress.amount = 80

//Methods
struct City {
    var population: Int
    
    func collectTexas() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTexas()

//Mutating Methods

struct Person {
    var name: String
    
    mutating func makeAnonymous(){
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()

//Properties and methods String

let string = "Do or do not, there is no try"
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

// Properties and methods Arrays

var toys = ["Woody"]

print(toys.count)

toys.append("Buzz")

toys.firstIndex(of: "Buzz")

print(toys.sorted())

toys.remove(at: 0)
