import UIKit

var greeting = "Hello, playground"


func showWelcome(){
    print("Welcome")
    print("to")
    print("My Playground")
}

showWelcome()


func table(number:Int, end:Int){
    print("\(number) Table ->")
    for i in 1...end{
        print("\(number) * \(i) = \(number*i)")
    }
}

table(number: 12,end: 12)
table(number:6, end:10)


func rollDice() -> Int{
    return Int.random(in: 1...6)
}

var roll = rollDice()
print(roll)


func stringComp(str1:String , str2:String)-> Bool{
    str1.sorted() == str2.sorted()
}

print(stringComp(str1: "qwertyu", str2: "uytrewq"))

func pythagoras(a:Double,b:Double)->Double{
    sqrt(a * a + b * b)
}

print(pythagoras(a: 3, b: 4))


func getUser() ->[String]{
    ["John","Smith"]
}

print(getUser())


func getUser1() -> [String:String]{
    ["FirstName":"John","LastName":"Smith"]
}

var user = getUser1()
print("users Name \(user["FirstName",default : "?"])")

func getUser2()->(firstName:String,lastName:String){
    (firstName:"john", lastName:"Smith")
}

var user2 = getUser2( )
print(user2.firstName,user2.lastName)

func getUser3()->(firstName:String,lastName:String){
    (firstName:"John",lastName:"Smith")
}

//var user3 = getUser3()
//print("User 3 \(user3?.0) \(user3?.1)")

let (firstName,lastName) = getUser3()
print(firstName,lastName)


func rollDice2(Sides:Int , Roll:Int)-> [Int]{
    var rol = [Int]()
    
    for _ in 1...Roll{
        let rand = Int.random(in: 1...Sides)
        rol.append(rand)
    }
    return rol
    
}

print(rollDice2(Sides: 6, Roll:6))
