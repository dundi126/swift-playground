import UIKit

var greeting = "Hello, playground"
greeting = "New Playground"

var new = "this"
print(new)

 new = "is"
print(new)

 new = "new"
print(new )


var day = """
A day 
in life of
Developer
"""

print(day)

print(day.count)

print(day.uppercased())

print(day.lowercased())


let filename="example.txt"

print(filename.hasPrefix("example"))

print(filename.hasSuffix(".txt"))



let score = 10
let lowerScore = score - 2
let hightScore = score + 2
let doublescore = score * 2


var cost = 20
cost += 2
cost -= 2
cost *= 2
cost /= 2

print(cost.isMultiple(of: 3))
print(cost.isMultiple(of: 4))


let num = 0.1 + 0.2
print(num)

let a = 1
let b = 2.0
let c = Double(a) + b
let d = a + Int(b)

let isMultiple = 120.isMultiple(of: 12)

var auth = true
auth = !auth
print(auth)
print(!auth)
auth.toggle()
print(auth)


let e = "Hello"
var f = "World!!!"
var g = e + ", New " + f
print(g)


let quote = "This a a \"quote\" for testing"
print(quote)


let name = "Blake"
let age = 26

let message = "Hello this is \(name), and I'm \(age)yrs old"
print(message)



