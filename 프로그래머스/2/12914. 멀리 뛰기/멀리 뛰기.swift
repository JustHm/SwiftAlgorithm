import Foundation
func solution(_ n:Int) -> Int {
    if n == 1 { return 1 } 
    else if n == 0 { return 0 }
    
    // 1step or 2step
    var step: [Int] = [1, 1]
    for num in 2...n {
        // overflow 생기니까 미리
        let newValue = (step[num-1] + step[num-2]) % 1234567
        step.append(newValue)
    }
    return step[n]
}