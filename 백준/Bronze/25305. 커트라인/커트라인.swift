let info = readLine()!.split(separator: " ").map({Int($0)!})
var scores = readLine()!.split(separator: " ").map({Int($0)!})

print(scores.sorted(by: >)[info[1]-1])