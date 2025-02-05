import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    var arr = arr
    let row = arr.count
    let col = arr[0].count
    if row < col {
        let temp = Array(repeating: 0, count: col)
        for _ in 0..<col-row {
            arr.append(temp)
        }
    }
    else if row > col {
        for i in 0..<arr.count {
            arr[i].append(contentsOf: Array(repeating: 0, count: row-col))
        }
        
    }
    return arr
}