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

var travell =  transportOption.train

if travell == .flight || travell == .helicopter{
    print("Jet Speed")
}else if travell == .bus || travell == .train{
    print("Time consuming")
}else if travell == .car{
    print("Enjoy ur journy!!!")
}else{
    print("Ride Safe!!!")
}



