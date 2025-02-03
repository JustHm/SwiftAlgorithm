import Foundation

func solution(_ strArr:[String]) -> Int {
    var sizes = [Int: Int]()
    strArr.forEach {
        if sizes[$0.count] != nil { sizes[$0.count]! += 1 }
        else { sizes[$0.count] = 1 }
    }
    return sizes.max{$0.value < $1.value}?.value ?? 0
}