import Foundation
 
func solution(_ priorities:[Int], _ location:Int) -> Int {
    var position = location
    var pool = priorities
    var max = pool.max()
    var count = 0
    while !pool.isEmpty && position >= 0 {
        if max != pool.first {
            pool.append(pool.first!)
            pool.removeFirst()
            if position == 0 {
                position = pool.count-1
            }
            else { position -= 1 }
        }
        else {
            pool.removeFirst()
            max = pool.max()
            count+=1;
            position -= 1
        }
    }
    return count
}