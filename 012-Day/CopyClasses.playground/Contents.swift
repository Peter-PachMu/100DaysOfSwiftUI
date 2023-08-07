import Cocoa

//Clase
class User {
    var username = "Anonymous"

}

var user1 = User() //instanciamos la clase

var user2 = user1  //Creamos user2 para que sea una copia de user2

user2.username = "Peter" //Esto tambien modificar a user1

print(user1.username)
print(user2.username)

//en las clases si se modifica algun dato a partir de una copia este cambio tambien se realiza en el original
//A diferencia de un Struct que solo modifica la copia, mas no el original

//Struct

struct User2 {
    var username = "Anonymous"

}

var user10 = User2()

var user20 = user10

user20.username = "Smith"

print(user10.username)
print(user20.username)
//Aqui observamos que el cambio solo se realizo en la copia user20


//Ahora si deseamos tener ese mismo comportamiento en una Clase, debemos realizar lo siguiente
class User30 {
    var username = "Anonymous"

    func copy() -> User { //Esto nos permitira mantener el valor inicial de usarname y cambiar el dato en las copias
        let user = User()
        user.username = username
        return user
    }
}

var user100 = User30()

var user200 = user100.copy() //aplicamos la funcion copy
user200.username = "Pachmu"
print(user100.username)
print(user200.username)


class Magazine {
    var pageCount = 132
}
var example = Magazine()
var wired = example
wired.pageCount = 164
var vogue = example
vogue.pageCount = 128
print(wired.pageCount)
print(vogue.pageCount)
