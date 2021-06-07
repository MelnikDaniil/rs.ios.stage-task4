import Foundation

public extension Int {
    
    var roman: String? {
        
        if (self <= 0 || self > 3999){
            return nil
        }
        
        let comparisonArray: [(number: Int, string: String)] =
        [(1000, "M"),
        (900, "CM"),
        (500, "D"),
        (400, "CD"),
        (100, "C"),
        (90, "XC"),
        (50, "L"),
        (40, "XL"),
        (10, "X"),
        (9, "IX"),
        (5, "V"),
        (4, "IV"),
        (1, "I")]
        
        var returnableText = ""
        var remainder = 0
        
        for entry in comparisonArray {
            let quotient = (self - remainder) / entry.number
            remainder = remainder + (quotient * entry.number)
            returnableText += String(repeating: entry.string, count: quotient)
        }
        return returnableText
    }
}
