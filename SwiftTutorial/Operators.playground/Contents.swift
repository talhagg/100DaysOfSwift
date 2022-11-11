import UIKit

let firsScore = 12
let secondScore = 4

let total = firsScore + secondScore
let difference = firsScore - secondScore

let product = firsScore * secondScore
let divided = firsScore / secondScore

let remainder = 13 % secondScore

let meainingOfLife = 42
let doubleMeaining = 42 + 42

let fakers = "Fakers gonna"
let action = fakers + "fake"

let firstHalf = ["John","Paul"]
let secondHalf = ["George","Ringo"]
let beatles = firstHalf + secondHalf

var score = 95
score  -= 5

var quate = "The rain in Spain"
quate += " Spanish"


firsScore == secondScore
firsScore != secondScore

firsScore < secondScore
firsScore >= secondScore

"Taylor" <= "Swift"

let firsCard = 11
let secondCard = 10

if firsCard + secondCard == 2 {
    print("Aces-lucy!")
} else if firsCard + secondCard == 21 {
    print("Blacjack!")
} else {
    print("Regular cards!")
}

let age1 = 21
let age2 = 12

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At leats one is over 18")
}

let oneCard = 11
let twoCard = 10

print(oneCard == twoCard ? "Cards are the same" : "Cards are the diffrent")

if oneCard == twoCard {
    print("Cars are the same")
} else {
    print("Cards aree the diffrent")
}

let weather = "sunny"

switch weather{
    
case "rain":
    print("Biring an umbrella")
case "snow":
    print("Wrap un warm")
case "sunny":
    print("Wean sunscreen")
    fallthrough
default:
    print("Enjoy your day")
}

let sScore = 85

switch sScore {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK!")
default:
    print("You did great!")
}
