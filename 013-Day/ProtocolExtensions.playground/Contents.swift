import Cocoa

let guests = ["Mario", "Luigi", "Peach"]

if guests.isEmpty == false {
    print("Guest count: \(guests.count)")
}


extension Collection {
    var isNotEmpy: Bool {
        isEmpty == false
    }
}

if guests.isNotEmpy {
    print("-Guest count:\(guests.count)")
}


protocol Person {
    var name: String {get}
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()


