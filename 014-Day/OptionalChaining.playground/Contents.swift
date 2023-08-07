import Cocoa

//Si el optional tiene un valor, desevuelvalo y continua

let names = ["Peter", "Smith", "PachMu"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
//Se declara la constante chosen el cual su valor va hacer un names.radom, ahora si obtiene un valor(?) continuara con uppercased caso contrario(??) el valor sera "No one"

print("Next in line:  \(chosen)")

//Ejemplo

struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A" //Significado- Si tenemos un libro y el libro tiene autor y el autor tiene una primera letra, entonces pongala en mayuscula y enviela de vuelta de lo contrario envie de vuelta una A
//en este caso al tener vacio la variable book pasara a ?? como resultado
print(author)
