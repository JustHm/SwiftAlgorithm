import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var k = k
    var answer = 0
    var dict = [Int:Int]()
    for item in tangerine {
        dict[item, default: 0] += 1 
    }

    for item in dict.sorted{$0.value > $1.value} {
        k -= item.value
        answer += 1       
        if k <= 0 { break }
    }
    
    return answer
}