import Cocoa

enum LimitsError: Error {
    case under,above
}


func raizEntera(_ number: Int) throws {
    if number < 1 {
        throw LimitsError.under
    }
    if number > 10_000 {
        throw LimitsError.above
    }

    for i in 1...100{
        if i * i == number {
            return print("La raiz entera es : \(i)")
        }
    }
    return print("No root")
    
}

let number = 25

do {
    try raizEntera(number)
} catch {
    print("Out of bounds")
}
