import Foundation

final class FillWithColor {
    var intForComparison = 0
    var copiedArray = [[Int]]()
    
    func fillWithColor(_ image: [[Int]], _ row: Int, _ column: Int, _ newColor: Int) -> [[Int]] {
        if (image.first == nil) {
                    return image
        }
        
        let r = image.count
        let c = image[0].count
        if (image.first == nil || row < 0 || row >= r || column < 0 || column >= c) {
            return image
        }
        copiedArray = image
        intForComparison = image[row][column]
        
        leftRightUpDown(row, column, newColor)
        
        return copiedArray
    }
    
    private func leftRightUpDown(_ i: Int, _ j: Int, _ newColor: Int){
        if (i >= 0 && i < copiedArray.count && j >= 0 && j < copiedArray[i].count && copiedArray[i][j] == intForComparison && copiedArray[i][j] != newColor) {
        copiedArray[i][j] = newColor
            
        leftRightUpDown(i - 1, j, newColor)
        leftRightUpDown(i + 1, j, newColor)
        leftRightUpDown(i, j + 1, newColor)
        leftRightUpDown(i, j - 1, newColor)
        } else {
        return
        }
    }
}
