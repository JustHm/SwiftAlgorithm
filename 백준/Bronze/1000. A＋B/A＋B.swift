import Foundation

let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}

print(arr[0]+arr[1])