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


struct Album2{
    let title: String
    let artist: String
    let year: Int
    
    func printSummary(){
        print("\(title) (\(year)) by \(artist)")
    }
}

let red2 = Album2(title: "Red", artist: "Taylor Swift", year: 2012)
let wings2 = Album2(title: "1989", artist: "Taylor Swift", year: 2014)

print(red2.title)
print(wings2.artist)

red2.printSummary()
wings2.printSummary()

struct Employee2{
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

var archer2 = Employee2(name: "Archer", vacationRemaining: 20)
archer2.takeVacation(days: 5)
print(archer2.vacationRemaining)


