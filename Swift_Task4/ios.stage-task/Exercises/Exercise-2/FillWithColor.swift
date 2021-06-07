import Foundation

final class FillWithColor {
    
    func fill(_ image: inout [[Int]], _ row: Int, _ column: Int, _ color: Int, _ newColor: Int) {
            if row >= image.count ||  column >= image[0].count || row < 0 || column < 0 || image[row][column] != color || image[row][column] == newColor {
                return
            }
            
            image[row][column] = newColor
            
        fill(&image, row - 1, column, color, newColor)
        fill(&image, row + 1, column, color, newColor)
        fill(&image, row, column - 1, color, newColor)
        fill(&image, row, column + 1, color, newColor)
        }
        
        func fillWithColor(_ image: [[Int]], _ row: Int, _ column: Int, _ newColor: Int) -> [[Int]] {
            if image.count == 0 || row >= image.count || column >= image[0].count || row < 0 || column < 0 {
                return image
            }
            
            var image = image
            let color = image[row][column]
            
            fill(&image, row, column, color, newColor)
            return image
        }
}
