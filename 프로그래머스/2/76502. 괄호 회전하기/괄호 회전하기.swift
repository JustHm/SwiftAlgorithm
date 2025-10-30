import Foundation

func solution(_ s:String) -> Int {
    let s = Array(s)
    var answer = 0
    
    for i in 0..<s.count {
        var stack = [s[i]]
        var index = (i + 1) % s.count

        while index != i {
            switch s[index] {
            case "(", "{", "[":
                stack.append(s[index])
            case ")":
                if let last = stack.last, last == "(" {
                    stack.removeLast()
                }
            case "}":
                if let last = stack.last, last == "{" {
                    stack.removeLast()
                }
            case "]":
                if let last = stack.last, last == "[" {
                    stack.removeLast()
                } 
            default: break
            }
            index = (index + 1) % s.count
        }
        if stack.isEmpty { answer += 1}
    }
    
    return answer 
}