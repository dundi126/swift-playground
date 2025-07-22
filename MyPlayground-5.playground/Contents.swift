import UIKit

var greeting = "Hello, playground"


struct Album{
    let title: String
    let artist: String
    let year: Int
    
    func printSummary(){
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "1989", artist: "Taylor Swift", year: 2014)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

struct Employee{
    let name : String
    var vacationRemaining : Int
    
    
    mutating func takeVacation(days: Int){
        if vacationRemaining > days{
            vacationRemaining -= days
            print("I'm going on vacation!!!")
            print("Days remaining:\(vacationRemaining)")
        }else{
            print("Oops! There aren't enough days off.")
        }
    }
}

var archer = Employee(name: "Archer", vacationRemaining: 20)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)



struct emp{
    let name: String
    var vacationsAllocated: Int
    var vacationTaken: Int
    
    var vacationRemaining:Int{
        get {
            vacationsAllocated - vacationTaken
        }
        set{
            vacationsAllocated = vacationTaken + newValue
        }
        
    }
}

var arch = emp(name: "Arch", vacationsAllocated: 14, vacationTaken: 5)
print(arch.vacationRemaining)
arch.vacationTaken += 3
print(arch.vacationRemaining)



struct Games{
    var score = 0{
        didSet{
            print("Score \(score)")
        }
    }
}

var game = Games()
game.score = 10
game.score += 5
game.score -= 7

struct Apps {
    var contacts = [String]() {
        
        willSet{
            print("Current value : \(contacts)")
            print("New valur : \(newValue)")
        }
        didSet{
            print("There are now \(contacts.count) contacts")
            print("Old values are \(oldValue)")
        }
    }
}

var app = Apps()
app.contacts = ["Alice", "Bob"]
app.contacts.append("Charlie")
app.contacts.append("Dai")

struct player {
    let name: String
    var number : Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...100)
    }
}

var p1 = player(name: "Alice")
print("Player \(p1.name) has number \(p1.number)")

struct AppData{
    static let version = "1.3 Beta 2"
    static let saveFileName = "savedData.json"
    static let homeURL = "https://www.example.com"
}


struct carDetails{
    let model : String
    let seats : Int
    var currentgear : Int
    
    private let maxGears = 10
    
    init(model: String, seats: Int, gear: Int) {
        self.model = model
        self.seats = seats
        self.currentgear = gear
    }
    
    mutating func gearUp(){
        if currentgear < maxGears{
            currentgear += 1
        }
    }
    
    mutating func gearDown(){
        if currentgear > 1{
            currentgear -= 1
        }
    }
}

var corollo = carDetails(model: "Toyota Corolla", seats: 5, gear: 1)
corollo.gearUp()
print(corollo.currentgear)


class Employees{
    var hours : Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummery(){
        print("No of working hours\(hours)")
    }
    
}


class Deverlopers : Employees{
    func work(){
        print("I'm writing code for \(hours) hours")
    }
    
    override func printSummery() {
        print("This is overlide summary of the primary summary")
    }
}

let rob = Deverlopers(hours: 8)
rob.work()
rob.printSummery()






class vehical{
    let isElectric : Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class car : vehical{
    var speed : Int
    
    init(isElectric: Bool, speed: Int) {
        self.speed = speed
        super.init(isElectric: isElectric)
    }
}


let teslaX = car(isElectric: true, speed: 74)
teslaX.speed


class user{
    var name = "Anonynumys"
    
    func copy() -> user{
        let us = user()
        us.name = name
        return us
    }
}

var user1 = user()
var user2 = user1.copy()

user2.name = "Blake"
print(user1.name)
print(user2.name)

class newUser{
    var id : Int
    
    init(id:Int){
        self.id = id
        print("New user ID : \(id)")
    }
    
    deinit {
        print("User \(id) is loged out")
    }
}

var users = [newUser]()

for i in 1...3{
    let user = newUser(id: i)
    print("User \(i) in Contoll!!!")
    users.append(user)
}

print("Loop ended!!!")
users.removeAll()
print("All users removed!!!")

class Animal{
    var legs :Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog :Animal{
    func speak(){
        print("Dog Speak print woff woff")
    }
}

class Corgi: Dog{
    
    override init(legs: Int = 4) {
        super.init(legs: legs)
    }
    
    override func speak() {
        print("Corgi speeking wof wof")
    }
}

class Poodle: Dog{
    
    override init(legs: Int = 4) {
        super.init(legs: legs)
    }
    override func speak() {
        print("Poodle speeking wof wof")
    }
}

class Cat: Animal{
    var isTame :Bool
    
    init(isTame: Bool, legs:Int = 4) {
        self.isTame = isTame
        super.init(legs:legs)
    }
    
    func speak(){
        print("Cat Speak print meow meow")
    }
}

class Lion: Cat{
    override init(isTame: Bool,legs:Int = 4) {
        super.init(isTame: false, legs: legs)
    }
    
    override func speak() {
        print("Lion speeking roar roar")
    }
}


class Persian: Cat{
    override init(isTame:Bool,legs:Int = 4){
        super.init(isTame: isTame, legs: legs)
    }
    
    override func speak(){
        print("Persian speeking purr purr")
    }
}


let corgi = Corgi()
print("Corgi (\(corgi.legs) legs)")
corgi.speak()
let poodle = Poodle()
print("Poodle (\(poodle.legs) legs)")
poodle.speak()

var persian = Persian(isTame: true)
print("Persian (\(persian.legs) legs)")
persian.speak()
var lion = Lion(isTame: false)
print("Lion (\(lion.legs) legs)")
lion.speak()


