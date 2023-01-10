import Foundation

for _ in 0..<Int(readLine()!)! {
    let commands = readLine()!
    let _ = readLine()!
    var array = readLine()!.filter{
        if $0 == "[" {
            return false
        } else if $0 == "]" {
            return false
        }
        return true
    }.split(separator: ",").map {Int($0)!}

    var isReverse = false
    var leftIndex = 0
    var rightIndex = 0
    var answer = ""
    
    for command in commands {
        if command == "R" {
            isReverse = isReverse ? false : true
        }
        else {
            if isReverse {
                rightIndex += 1
            }
            else {
                leftIndex += 1
            }
            
            if leftIndex + rightIndex > array.count {
                answer = "error"
                break
            }
        }
    }
    if answer == "error" {
        print(answer)
    }
    else {
        if array.count == 0 || array.count == (leftIndex+rightIndex) {
            print("[]")
        }
        else if isReverse {
            array.reverse()
            print(String(describing: array[rightIndex...(array.count - leftIndex - 1)]).replacingOccurrences(of: " ", with: ""))
        }
        else {
            print(String(describing: array[leftIndex...(array.count - rightIndex - 1)]).replacingOccurrences(of: " ", with: ""))
        }
    }
}
