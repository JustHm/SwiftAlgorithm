import Foundation

func solution(_ order:[String]) -> Int {
    var answer = 0
    for coffee in order {
        if (["iceamericano", "americanoice", "hotamericano", "americanohot", "americano", "anything"].filter{$0 == coffee}.isEmpty == false) {
            answer += 4500
        }
        else {
            answer += 5000
        }
    }
    return answer
}