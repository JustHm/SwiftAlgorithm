import Foundation

func solution(_ s:String) -> Bool {
    var stack: [Character] = []
    for char in s {
        if char == ")" {
            if !stack.isEmpty {
                stack.popLast()
            } else {
                return false
            }
        } else {
            stack.append(char)
        }
    }
    return stack.isEmpty ? true : false
}