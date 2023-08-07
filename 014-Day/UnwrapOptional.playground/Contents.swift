import Cocoa

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    print("\(number) x \(number) is \(number * number)")
}

printSquare(of: 3) //Colocar un dato nos da el resultado
                    //En caso de no colocar nada nos da el nil de optional

//Otro forma
//Primer caso usando if let

func getMeaningOfLife() -> Int? { //Creamos una funcion que nos devuelve un entero
    42
    //Cuando va hacer nil
    /*
    var num: Int?
    return num
    */
}

func printMeaningOfLife() {
    /*
    if let name = getMeaningOfLife() {  //Aqui if let dara un resultado si recibe un Int caso contrario seria un Optional nil y no mostrara nada
        print(name)
    }
     */
    
    //Usando guard lef
    guard let name = getMeaningOfLife() else{
        return
    }
    print(name)
}

printMeaningOfLife()

//Nota
/*
 Usa IF LET solo si se desea desenvolver algunas opciones
 Usa GUARD LET si esta comprobando especificamente que las condiciones son correctas antes de continuar
 */
