import Cocoa


// ?? Utilizado para establer un dato como predeterminado

let captains = [
    "Enterprise" : "Picard",
    "Voyager" : "Janeway",
    "Defiant" : "Sisko"
]

let new = captains["Serenity"] //Al ejecutar nos dara un nil

// COmo utilizamos los ??, en caso anterior no se mostrara al obtener nil,
//pero si usamos los ?? nos permite colocar un valor en caso del que la valor se ha vacio


let new2 = captains["Serenity"] ?? "N/A"



//En el siguiente ejemplo

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil) //Tenemos un autor vacio
let author = book.author ?? "Anonymous" //Pero para mostrar un valor por defecto usamos los ??
print(author) //Al usar los ?? se imprimira Anonymous en vez de no obtener nada
