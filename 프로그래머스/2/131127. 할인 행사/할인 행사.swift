import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var want = Dictionary(uniqueKeysWithValues: zip(want, number))
    var answer = 0
    var left = 0
    var right = 9
    
    // 첫 날 부터 10일 후 까지 미리 작업
    for i in left...right {
        if let value = want[discount[i]] {
            want[discount[i]] = value - 1
        }
    }
    
    while true {
        if want.values.allSatisfy({ $0 <= 0 }) { answer += 1 }
        
        right += 1  
        
        if right >= discount.count { break }
        
        if let value = want[discount[right]] 
        {
            want[discount[right]] = value - 1
        }
        
        if let value = want[discount[left]] 
        {
            want[discount[left]] = value + 1
        }
        
        left += 1
    }
    return answer
}


