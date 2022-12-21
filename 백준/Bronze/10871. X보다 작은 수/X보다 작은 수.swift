let info = Int(readLine()!.split(separator: " ")[1])!
let nums = readLine()!.split(separator: " ").map({Int($0)!})

for num in nums {
    if num < info {
        print(num,terminator: " ")
    }
}