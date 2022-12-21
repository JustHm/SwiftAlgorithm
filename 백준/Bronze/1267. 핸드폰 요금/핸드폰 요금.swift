func telPrice(arr: [Int]) {
    var yTotal = 0
    var mTotal = 0
    for time in arr {
        if time == 0 {
            continue
        } else {
            yTotal += (time / 30 + 1) * 10
            mTotal += (time / 60 + 1) * 15
        }
    }
    if mTotal == yTotal {
        print("Y M \(mTotal)")
    } else if mTotal < yTotal {
        print("M \(mTotal)")
    } else {
        print("Y \(yTotal)")
    }
}
var callCount = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map({Int($0)!})
telPrice(arr: arr)