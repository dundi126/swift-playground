import UIKit

var greeting = "Hello, playground"

let opposites = ["Mario":"Wario","Luigi":"Waluigi"]
if let peachOpposite = opposites["Peach"] {
    print(
        "Peach opposite \(peachOpposite)"
    )
}else{
    print("No opposite found")
}

func square(number:Int) -> Int{
    number * number
}

var number :Int? = 9

if let unwrapnumber = number{
    print(square(number: unwrapnumber))
}

func printSquare(number:Int?){
    guard let number = number else{
        print("Missing Input")
        return
    }
    
    print("\(number) * \(number) : \(number*number)")
}

 
printSquare(number: 9)


let captain = [
    "Enterprise" : "Picard",
    "Voyager" : "Data",
    "Discovery" : "Sarek"
]

let new = captain["serenity"] ?? "Not Found"

struct Book{
    let title : String
    let author : String?

}

let book = Book(title: "Amster", author: nil)
let author = book.author ?? "Unknown"
print(book,author)

let iinput = ""
let num = Int(iinput) ?? 0
print(num)



func rand(arr : [Int]?) -> Int{
    arr?.randomElement() ?? .random(in: 1...100)
}

