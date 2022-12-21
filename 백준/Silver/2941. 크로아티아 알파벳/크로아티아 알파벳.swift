import Foundation
var str = readLine()!
let arr = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

for i in arr {
    str = str.replacingOccurrences(of: i, with: "0")
}
print(str.count)