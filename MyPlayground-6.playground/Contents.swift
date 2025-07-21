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
