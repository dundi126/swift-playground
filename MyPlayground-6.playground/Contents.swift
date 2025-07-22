import UIKit

var greeting = "Hello, playground"


protocol Vehicle{
    var name:String {get}
    var currentPassengers :Int {get set}
    func estimateTime(for distance :Int)-> Int
    func travell(distance:Int)
}

struct Car : Vehicle{
    let name = "Car"
    var currentPassengers = 4
    func estimateTime(for distance: Int) -> Int {
        distance / 100
    }
    
    func travell(distance: Int) {
        print("Distance to travell \(distance)")
    }
}

func commute(distance:Int, using vehicle:Vehicle){
    if vehicle.estimateTime(for: distance) > 100{
        print("Thats a slow car")
    }else{
        vehicle.travell(distance: distance)
    }
}


struct Bike : Vehicle{
    let name = "Bike"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travell(distance: Int) {
        print("Distance to travell \(distance)")
    }
}

func getTravellEstimates(using vehicles:[Vehicle], distance:Int){
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name) : \(estimate)hours to travell for \(distance)")
    }
}

let car = Car()
commute(distance: 100, using: car)


let bike = Bike()
commute(distance: 150, using: bike)


getTravellEstimates(using: [car,bike], distance: 150)


extension String{
    func trimmed() -> String{
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines : [String]{
        self.components(separatedBy: .newlines)
    }
}

var str = "Hello, world!\nThis is a multiline string\n"
let trimmed = str.trimmingCharacters(in: .whitespacesAndNewlines)
str.trim()

let lyrics = """
Thi sis  the new
line trimming
where lines are counted 
with this method
"""

print(lyrics.lines.count)

struct Book{
    let title:String
    let pageCount: Int
    let readingHours :Int
    
}

extension Book{
    init (title:String, pageCount:Int){
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 20
    }
}

let lotr = Book(title: "lor Of The Rings", pageCount: 326)


protocol Person
{
    var name : String {get set}
    func sayHello() -> String
}

extension Person{
    func sayHello() -> String {
        "Hello, my name is \(name)"
    }
}

struct Emploee : Person{
    var name: String
}

let emp = Emploee(name: "John")
emp.sayHello()


protocol Building{
    var rooms : Int{get set}
    var cost : Double {get set}
    var agent : String {get set}
    func build()
}

struct House: Building{
    var rooms: Int
    var cost: Double
    var agent: String
    
    func build()  {
        print("\(agent) has build it and it got \(rooms) rooms and pricing at $\(cost) ")
    }
}

struct Office: Building {
    var rooms: Int
    var cost: Double
    var agent: String
    
    func build()  {
        print("\(agent) has build it and it got \(rooms) rooms and pricing at $\(cost) ")
    }
}

let office = Office(rooms: 26, cost: 845940.99, agent: "Astra")
office.build()

let house = House(rooms: 3, cost: 940940.99, agent: "Brinz")
house.build()
