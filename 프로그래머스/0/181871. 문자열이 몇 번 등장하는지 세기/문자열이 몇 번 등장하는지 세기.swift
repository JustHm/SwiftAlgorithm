import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var answer = 0
    for index in 0...(myString.count - pat.count) {
        let strIndex = myString.index(myString.startIndex, offsetBy: index)
        let endIndex = myString.index(strIndex, offsetBy: pat.count)
        if pat == myString[strIndex..<endIndex] { answer += 1 }
    }
    return answer
}