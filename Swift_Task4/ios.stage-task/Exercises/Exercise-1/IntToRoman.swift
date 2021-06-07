import Foundation

public extension Int {
    
    var roman: String? {
        var number = self
        var result = ""
        let romanaStorage: [Int:String] = [1000:"M", 900:"CM", 500:"D", 400:"CD", 100:"C", 90:"XC", 50:"L", 40:"XL", 10:"X", 9:"IX", 5:"V", 4:"IV", 1:"I"]
        
        while(number > 0) {
            for (index, value) in romanaStorage.enumerated() {
                if number - index > 0 {
                    result += romanaStorage[index]!
                    number -= index
                }
            }
        }
        return result
    }
}
