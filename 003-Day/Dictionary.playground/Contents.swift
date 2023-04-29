import Cocoa

var employee = ["name": "Rihanna", "job": "Singer", "location": "Miami"]
print(employee["name", default: "Unknown"]) //El default se coloca para que el resultado no salga como optional
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])

//Diccionarios con valores String y booleans

let hasGraduated = [
    "Eric" : nil,
    "Maeve": true,
    "Otis" : false
]

let olympics = [
    2012 : "London",
    2016 : "Rio de Janeiro",
    2021 : "Tokyo",
    2024 : nil      //no tener un valor, aplicaria lo de Optional 
]

print(olympics[2012, default: "Unknown"])

var heights = [String:Int]() // Otra manera de inicializar un diccionario
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206
heights["Yao Ming"] = 220
print(heights["Yao Ming", default: 0]) //Observamos como el valor fue actualizado
