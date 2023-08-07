import Cocoa

//Coportamiento de las variables dentro de las clases

class User {
    var name = "Peter" // al cambiarlo por let, producira un error al intentar realizar cambios
}

let user = User()
user.name = "Smith"  // Si name es declarado como let, se produce un error aqui al intentar cambiar el dato de un let
print(user.name)

//Como observamos el dato de user a sido cambio de Peter a Smith siendo esto una constante let
//Esto da entender que el "Objeto" , user no cambiado en si al ser un let sino que el cambio esta en la declaracion de name en la class User
//Que esta definida por un var, dando la posibilidad de ser cambiada a pesar de ser inicializado el objeto user como un let "constante"
