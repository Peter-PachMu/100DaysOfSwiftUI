import Cocoa

class Animal {
    var legs: Int = 4//legs = piernas
    
    init(legs: Int){
        self.legs = legs
    }
    
    func speak(){
        print("Onomatopeya del animal")
    }
}



class Dog: Animal {
    override func speak(){
        print("Dog: Wow")
    }
}

class Corgi: Dog {
    override func speak(){
        print("Corgi: Guaaaauu")
    }
}

class Poodle: Dog {
    override func speak(){
        print("Poodle: Wowwww")
    }
}



class Cat: Animal {
    
    var isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    override func speak(){
        print("Cat: Miau")
    }
}

class Persian: Cat {
    
    override func speak(){
        print("Persian: Miaaaaau")
    }
}

class Lion: Cat {
    
    
    override func speak(){
        print("Lion: Grrrrrrrrr")
    }
}



let newAnimal = Animal(legs: 4)
newAnimal.speak()


let newCorgi = Corgi(legs: 4)
newCorgi.speak()

let newPoodle = Poodle(legs: 4)
newPoodle.speak()


let newPersian = Persian(legs: 4, isTame: true)
newPersian.speak()

let newLion = Lion(legs: 4, isTame: false)
newLion.speak()

