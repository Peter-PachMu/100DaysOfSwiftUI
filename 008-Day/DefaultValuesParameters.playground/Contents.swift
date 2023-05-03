import Cocoa

//Al tener valores predeterminados en los paramentros, estos nos permite a no ser colocados a la hora de llamar a la funcion

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)//Al tener end con un valor de 12 como predeterminado no es necesario ser colocado, a menos que se necesite otro valor en end


