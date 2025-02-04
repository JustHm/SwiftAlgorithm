import Foundation

func solution(_ arr:[Int]) -> [Int] {
    let answer = arr.enumerated().filter{$0.element == 2}
    if answer.isEmpty { return [-1] }
    if answer.count == 1 { return [2]}
    return Array(arr[answer.first!.offset...answer.last!.offset])
}