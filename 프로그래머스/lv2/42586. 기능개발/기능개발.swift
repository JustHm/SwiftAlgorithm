import Foundation
 
func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var pro = progresses
    var spd = speeds
    var count = 0
    var answer: [Int] = []
    while (!pro.isEmpty) {
        if (pro.first! < 100) {
            for index in 0..<pro.count { //하루 지날 때 마다 진행
                pro[index] += spd[index]
            }
            if count > 0 {
                answer.append(count)
                count = 0
            }
        }
        else {
            pro.removeFirst()
            spd.removeFirst()
            count+=1
        }
    }
    if count > 0 {
        answer.append(count)
    }
    return answer
}