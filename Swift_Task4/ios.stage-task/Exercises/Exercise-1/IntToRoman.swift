import Foundation

public extension Int {
    
    var roman: String? {
        
        if self <= 0 || self > 3999 {
            return nil
        }
        var number = self
        var result = ""
        let array = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
                let romanSymbolsArray = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
        
        while(number > 0) {
            for (index, value) in array.enumerated() {
                if number - value >= 0 {
                    number -= value
                    result += romanSymbolsArray[index]
                    break
                }
            }
        }
        return result
    }
}
