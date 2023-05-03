import Cocoa

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short //Aqui es donde aplicamos en Error
    }

    if password == "12345" {
        throw PasswordError.obvious //Aqui es donde aplicamos en Error
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}


// Probamos la funcion

let string = "12345"

do {
    let result = try checkPassword(string) //Esto dara como return un error (obvious)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}
