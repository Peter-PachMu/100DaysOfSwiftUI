import Cocoa

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

/*REducir el codigo
Dado el codigo anterior

 --- let captainFirstTeam = team.sorted(by: { name1, name2 in
 
 + no es necesario color el by:
 + los parameteros name1, name2 pueden ser remplazados por $0,$1,...
 + si no tenemos parametros por ser remplazados por $0,... se omite el in
 + si solo el cuerpo del codigo tiene una linea se omite el return
 
 
*/


let tOnly = team.filter { $0.hasPrefix("T") } // el  $0 es un valor especial que significa que es la primera paramentro de la funcion omitiendo el colocar un nombre al parametro
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)


