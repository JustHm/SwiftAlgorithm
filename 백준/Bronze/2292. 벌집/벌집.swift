import Foundation
let N = Int(readLine()!)!
var gap = 12
var temp = 7
var loop = 2
if N == 1 { print("1") }
else {
    while temp < N {
        temp += gap
        gap += 6
        loop += 1
    }
    print(loop)
}