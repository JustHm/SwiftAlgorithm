import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var count = 0
var loop = 0
while count != input[0] {
    loop += 1
    if !String(loop).contains(String(input[1])) {
        count += 1
    }
    
}
print(loop)