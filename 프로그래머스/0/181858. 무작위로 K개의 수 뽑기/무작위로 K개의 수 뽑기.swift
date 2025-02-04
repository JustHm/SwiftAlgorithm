import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var answer = [Int]()
    var check = [Int: Bool]()
    
    for num in arr {
        if check[num] == nil {
            answer.append(num)
            check[num] = true
        }
    }
    
    if answer.count > k {
        return Array(answer[..<k])
    }
    else if answer.count < k {
        let count = k - answer.count
        answer.append(contentsOf: Array(repeating: -1, count: count))
    }
    return answer
}