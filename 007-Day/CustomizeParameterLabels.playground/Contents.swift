import Cocoa

//En este caso no deseamos que el parametro string aparezca al momento de ser llamado la funcion
//En eso colocamos un _ es hace omitir el nombre del parametro para solo escribir el valor o la variable

func isUppercase(_ texto: String) -> Bool {
    texto == texto.uppercased()
}

// Al usar el _ omitimos poner isUppercase(texto: texto1)
let texto1 = "HELLO, WORLD"
let result = isUppercase(texto1)


//---Siguiente caso: personalizar por otro nombre

//En este caso el nombre del parametro es: number
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)//Como observamos number es coloca dentro de la funcion

//Para colocar otro nombre que ayude al usuario podemos realizar lo mismo que se hizo con  _ , pero esta vez colocando for(Español: Para)

//Nombre del argumento(for) Nombre del parametro(numbre) : Int(Tipo de dato)
func printTimesTables2(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables2(for: 5)

