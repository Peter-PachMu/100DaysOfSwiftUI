import Cocoa

for valor in 1...100{
    if valor.isMultiple(of:15){ //multiplos de 3 y 5
        print("FizzBuzz")
    }else if valor.isMultiple(of: 3){
        print("Fizz")
    }else if valor.isMultiple(of: 5){
        print("Buzz")
    }else{
        print(valor)
    }
}
