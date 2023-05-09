import Cocoa

struct BankAccount {
    private var funds = 0 //Al ser private solo sera posible utilizar dentro del struct
  //private(set) var funds = 0 //Con private(set) nos permite leer la variable fuera del struct mas no poder cambiar el valor
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount{
            funds -= amount
            return true
        }else {
            return false
        }
    }
}


var account = BankAccount()
account.deposit(amount: 100)

let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

//print(account.funds) //Prueba con private(set)
//account.funds - 1000 //Observamos que aun se logra reducir el monto a pesar de estar en 0

//Entonces para solucionar esto utilizamos el private var funds el cual solo permitira ser usado dentro del Struct

// al pasar a private la variable ya no se puede ejecutar la linea 32

