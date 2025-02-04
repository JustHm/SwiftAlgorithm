import Foundation

func solution(_ my_string:String) -> [Int] {
    var answer = Array(repeating: 0, count: 52)
    for char in my_string {
        if let ascii = char.asciiValue {
            if ascii < 97 { answer[Int(ascii - 65)] += 1 }
            else { answer[Int(ascii - 97) + 26] += 1 }
        }
    }
    return answer
}