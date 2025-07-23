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
