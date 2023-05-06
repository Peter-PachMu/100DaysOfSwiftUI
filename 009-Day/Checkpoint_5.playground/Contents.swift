import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31,49]


func noEven(num: Int)->Bool{
    if num.isMultiple(of: 2){
       
        return false
    }else{
        return true
    }
}

var prueba = luckyNumbers.filter(noEven).sorted().map{"\($0) is a lucky number"}.forEach{print($0)}







