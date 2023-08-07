import Cocoa

func getRandomNumber() -> some Equatable{  //Equatable permite ocultar el tipo de dato
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber())
print(getRandomNumber())

print(getRandomNumber() == getRandomNumber())
