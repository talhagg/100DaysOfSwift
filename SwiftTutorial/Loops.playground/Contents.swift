import UIKit

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red","1989","Reputation"]

for album in albums {
    print("\(album) is on Apple music")
}

print("player gonna")

for _ in 1...5 {
    print("play")
}

var number = 1

while(number <= 20) {
    print(number)
    number += 1
}

print("Ready or not, here ı come")

var number1 = 1

repeat {
    print(number1)
    number1 += 1
} while number1 <= 20

var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I m bored. Let's go now!")
        break
    }
    
    countDown -= 1
}

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}
