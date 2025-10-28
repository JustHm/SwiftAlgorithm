import Foundation

func solution(_ elements:[Int]) -> Int {
    var elementCopy = elements
    var answer = Set<Int>(elements)
    
    for i in 1..<elements.count {
        for j in 0..<elements.count {
            let index = (i+j) % elements.count
            let temp = elementCopy[j] + elements[index]
            elementCopy[j] = temp
            answer.insert(temp)
        }
    }
    return answer.count
}