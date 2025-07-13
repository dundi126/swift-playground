import UIKit

var greeting = "Hello, playground"


//Closures

func greetuser(){
    print("Hello User")
}

let sayHello = {
    (name:String) -> String in
    "Hello \(name)"
}

sayHello("Shubham")

func getUserData (for id: Int) -> String{
    if id == 1{
        return "Approved"
    }
    else{
        return "Rejected"
    }
}

let data:(Int)->String = getUserData(for:)
let auth = data(1)


let students : Set = ["Kofi", "Abena", "Peter", "Kweku", "Akosua"]
let descorderedStudents =  students.sorted(by: >)
let descsorted1 = students.sorted{return $0 > $1}
let descsorted2 = students.sorted{$0 > $1}

let konly = students.filter{$0.hasPrefix("K")}
print(konly)

let upperStudents = students.map{$0.uppercased()}
print(upperStudents)

let PeterFirstSorted = students.sorted(by: {(student1: String,student2: String) -> Bool in
    if student1 == "Peter"{
        return true
    }else if student2 == "Peter"{
        return false
    }
    return student1 < student2
})

let sort = students.sorted(by: {
    a,b in
    if a == "Peter"{
        return true
    }
    if b == "Peter"{
        return false
    }
    return a < b
}
)

let sort2 = students.sorted { (a,b) -> Bool in
    if a == "Peter"{
        return true
    }
    if b == "Peter"{
        return false
    }
    return a < b
}

let sort3 = students.sorted{
    if $0 == "Peter"{
        return true
    }
    else if $1 == "Peter"{
        return false
    }
    return $0 < $1
}


func makeArray(_ size :Int, using genertor:()->Int) -> [Int]{
    var numbers = [Int]()
    
    for i in 1...size{
        let new = genertor()
        numbers.append(new)
    }
    return numbers
}

func generator() -> Int{
    Int.random(in: 1...100)
}

let newArray = makeArray(40, using: generator)


func job(arr:[Int],using filter:([Int]) -> [Int]){
    var sortArr = filter(arr)
    print(sortArr)
}

func filter(arr:[Int]) -> [Int]{
    var newArr = arr.filter{
        a in
        if a%2 != 0{
            return true
        }
        else{
            return false
        }
    }
    newArr.sort{a,b in
        if a == 7 {
            return true
        }else if b == 7{
            return false
        }
        return a < b
    }
    
    return newArr
}

let luckyNumbers = [7,4,38,21,16,15,12,33,31,49]
job(arr:luckyNumbers, using: filter)

