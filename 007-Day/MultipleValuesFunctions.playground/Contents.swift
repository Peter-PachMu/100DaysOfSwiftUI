import Cocoa

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Peter", lastName: "PachMu")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

//Otra forma
func getUser1() -> (firstName: String, lastName: String) {
    ("Peter", "PachMu") //Ya no coloca los parametros de retorno
}

//Ahora sin colocar nombre de parametros

func getUser2() -> (String, String) {
    ("Peter", "PachMu")
}

let user2 = getUser2()
print("Name: \(user2.0) \(user2.1)")// Los retornos tomar el valor de indice 0,1,2,3 ... dependiendo la cantidad de retorno


//Otra forma de utilizar la funcion

let (firstName3, lastName3) = getUser() //Aqui son asignados a las costantes de acuerdo al orden de retorno de valores de la funcion
print("Name: \(firstName3) \(lastName3)")


//Por ultimo si no se desea utilizar un valor de retorno se puede colocar el signo de  _

let (firstName, _) = getUser()
print("Name: \(firstName)")
