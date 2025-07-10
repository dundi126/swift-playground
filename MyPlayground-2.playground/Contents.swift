import UIKit

var greeting = "Hello, playground"

var name = ["A", "B", "C"]
print(name[2])

name.append("D")
print(name)


var score = Array<Int>()
score.append(74)
score.append(88)
score.append(92)

print(score)

var album = ["Flokers"]
album.append("Fearless")
album.append("Red")
print(album)
print(album.count)
print(album[1])
album.remove(at: 1)
print(album)


var games = ["Mario", "Sonic", "Call of Duty","FIFA","fifa","Filla","PUBG"]
print(games.contains("Sonic"))
print(games.sorted())
print(games)
var reverseGames = games.reversed()
print(reverseGames)


var employee = ["name":"Mike","job":"teacher","locaiton":"fort wort"]
print(employee["name"]!)

var height = [String : Int]()
height["Mike"] = 178
height["Tom"] = 185
print(height)


var actor = Set<String>()
actor.insert("Tom")
actor.insert("Denzel")
actor.insert("Samuel")
actor.insert("Kevin")
actor.insert("Tom")
print(actor)


enum Weekdays{
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

enum Month{
    case January,February,March,April,May,June,July,August,September,October,November,December
}


var surname :  String = "pit"
var count : Int = 10
var scores : Double = 88.5
var array : [Int] = [1,2,3,4]
var users : [String : String] = [
    "id" : "12s123s"
]
var books : Set<String> = ["Harry Potter","The Alchemist"]
var teams : [String] = [String]()
var cities : [String] = []
var clues = [String]()

var nums = [1,2,3,4,5,5]
print(nums.count)
print(Set(nums).count)

