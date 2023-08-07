import Cocoa

//Desinicializador


class User {
    
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}


for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
}

print(" ")

var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}
//Hasta aqui los datos no han sido destruidos
//Entonces como lo hacemos, A continuacion resolvemos este problema

print("Loop is finished!")
users.removeAll() //Esto eliminara los datos , una vez que las variables ya no sean utilizadas, activando el deinit
print("Array is clear!")
