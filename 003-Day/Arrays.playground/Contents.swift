import Cocoa

var coldplay = ["Chris","Will","Guy","Jonny"]

coldplay.append("Peter")

let  numbers = [4, 8, 15, 16, 23, 45]

var temperatures = [25.3, 28.2, 26.4]

print(coldplay[0])

print(numbers[3])

print(temperatures[1])

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(90)
print(scores[1])

var albums = [String]()
albums.append("Music of the spheres")
albums.append("Viva la vida")
albums.append("X&Y")
print(albums.count)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)


characters.removeAll()
print(characters.count)


let bondMovies = ["Casino Royale", "Spectre", "No time to die"]
print(bondMovies.contains("Frozen")) //Contara los datos que son similares
print(bondMovies.contains("Spectre"))

let cities = ["London", "Tokyo", "Barcelona"]
print(cities.sorted()) //Ordenara de forma alfabetica

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)










