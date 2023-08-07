import Cocoa

//Sin el uso de extensiones
var quote = "   The truth is rarely pure and never simple   "

let trimmedd =  quote.trimmingCharacters(in: .whitespacesAndNewlines)

print(trimmedd)

//Con el uso de extensiones
extension String { //Aqui se le aplicara una extension al tipo String con la siguiente funcion
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

//var quote2 = "   The truth is rarely pure and never simple   "

let trimmedd2 =  quote.trimmed() //Observamos que ya no es necesario escribir todo lo de la linea 6

print(trimmedd2)
