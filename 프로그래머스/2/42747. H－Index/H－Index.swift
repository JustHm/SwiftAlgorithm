import Foundation

func solution(_ citations:[Int]) -> Int {
    for (index, cit) in citations.sorted(by: >).enumerated() {
        if index >= cit {
            return index
        }
    }
    return citations.count
}