import UIKit

var greeting = "Hello, playground"


var speed = 88
var age = 21
var percentage = 89
var restriction = false

if speed >= 88{
    print("Greater than 88")
}

if age < 21{
    print("Under age")
}

if percentage <= 89{
    print("lower percentage")
}

var name1 = "Shahira"
var name2 = "Shahid"

if name1 > name2{
    print("\(name1) vs \(name2)")
}

if name1 < name2{
    print("\(name2) vs \(name1)")
}

var num = [1,2,3,4]

if num.count < 5{
    num.append(5)
}
print(num)

if num.count > 4{
    print(num.remove(at:0))
}


if age > 18 && age < 22{
    print("Not a teenager")
}


if age < 21 || restriction == false{
    print("Allowed")
}


enum transportOption {
    case car
    case bike
    case train
    case bus
    case flight
    case helicopter
}

var travell =  transportOption.bus

if travell == .flight || travell == .helicopter{
    print("Jet Speed")
}else if travell == .bus || travell == .train{
    print("Time consuming")
}else if travell == .car{
    print("Enjoy ur journy!!!")
}else{
    print("Ride Safe!!!")
}


switch travell {
case .car:
    print("Enjoy it!!!")
case .train:
    print("Plesent view")
case .bus:
    print("Best commute")
case .flight:
    print("Safe flying")
case .helicopter:
    print("Safe Landing")
case .bike:
    print("Ride it")
default:
    print("Travell Safe")
}

switch travell {
case .car:
    print("Enjoy it!!!")
    fallthrough
case .train:
    print("Plesent view")
    fallthrough
case .bus:
    print("Best commute")
    fallthrough
case .flight:
    print("Safe flying")
    fallthrough
case .helicopter:
    print("Safe Landing")
    fallthrough
case .bike:
    print("Ride it")
    fallthrough
default:
    print("Travell Safe")
}


print(age < 21 ? "Not Allowed" : "Allowed")

let hour = 14

print(hour < 12 ?  "Good Morning" : hour < 16 ? "Good AfterNoon" : "Good Evening")


let n = ["Kyle","John","Mary"]
let cnt = n.isEmpty ? "No employees" : "\(n.count) People"
print(cnt)


enum Themes{
    case Dark,Light
}

let theme = Themes.Dark

let background = (theme == .Dark) ? "Dark" : "Light"
print(background)


for i in n{
    print("Employee names : \(i)")
}


for i in 1...10{
    print("6 x \(i) : \(6 * i)")
}


for i in 1..<5{
    print(i)
}

for _ in 1...5{
    print("Hello!!!")
}

var count = 10

while count > 0 {
    print("CoolDown in \(count)...")
    count -= 1
}

var roll = 0

while roll != 20 {
    print("Current roll : \(roll)")
    roll = Int.random(in: 1...20)
}

print("Critical Hit!!!")

print(Double.random(in: 1...2))

let n1 = 5
let n2 = 13
var nums = [Int]()

for i in 1...100_000{
    if i.isMultiple(of: n1) && i.isMultiple(of: n2){
        nums.append(i)
    }
    
    if nums.count == 10 {
        break
    }
}


print("Multiples of \(n1) and \(n2) : \(nums)")


for i in 1...100{
    let numltipleOfThree = i.isMultiple(of: 3)
    let numltipleOfFive = i.isMultiple(of: 5)
    
    if numltipleOfThree == true && numltipleOfFive == true {
        print("FizzBuzz")
    }else if numltipleOfThree{
        print("Fizz")
    }else if numltipleOfFive{
        print("Buzz")
    }else{
        print(i)
    }
}
