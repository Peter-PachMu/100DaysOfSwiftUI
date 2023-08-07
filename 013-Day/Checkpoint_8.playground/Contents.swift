import Cocoa

protocol Building {
    var rooms: Int { get }
    var cost: Int { get }
    var agent: String { get }
    
    func resumeBuilding()
    func datos()
}

extension Building {
    func datos(){
        print("""
        Cantidad de Habitaciones: \(rooms)
        Precio de la Casa: \(cost)
        Agente Inmobiliario: \(agent)
        """)
    }
}

struct House : Building {
    let rooms: Int
    let cost: Int
    let agent: String
    func resumeBuilding() {
        print("Datos de la Casa:")
        datos()
        
        /*
        print("""
        Datos de la Casa:
        Cantidad de Habitaciones: \(rooms)
        Precio de la Casa: \(cost)
        Agente Inmobiliario: \(agent)
        """)*/
    }
}

struct Hotel : Building {
    let rooms: Int
    let cost: Int
    let agent: String
    func resumeBuilding() {
        print("Datos del Hotel:")
        datos()
        
        /*print("""
        Datos del Hotel:
        Cantidad de Habitaciones: \(rooms)
        Precio de la Casa: \(cost)
        Agente Inmobiliario: \(agent)
        """)*/
    }
}

let HotelLima = Hotel(rooms: 20, cost: 700000, agent: "Peter")
HotelLima.resumeBuilding()

let CasaLima = House(rooms: 5, cost: 300000, agent: "Smith")
CasaLima.resumeBuilding()
