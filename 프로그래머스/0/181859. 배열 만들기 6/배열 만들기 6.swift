import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var answer = [Int]()
    for item in arr {
        if answer.isEmpty { answer.append(item) }
        else {
            if answer.last! == item { answer.popLast() }
            else { answer.append(item) }
        }
    }
    return answer.isEmpty ? [-1] : answer
}