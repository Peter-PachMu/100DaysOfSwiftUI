import Cocoa

enum Weekday{
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
//Otra manera de realizar un enum
enum Month{
    case January, February, March, April, May
}

var day = Weekday.wednesday
day = .monday
print(day)

