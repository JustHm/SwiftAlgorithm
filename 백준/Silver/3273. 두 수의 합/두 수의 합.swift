func betweenSum(arr: [Int], standard: Int) {
    var temp = 0
    var start = 0
    var end = arr.count - 1
    while (start < end) {
        let result = arr[start] + arr[end]
        
        if standard == result {
            temp += 1
            start += 1
            end -= 1
        } else if standard > result {
            start += 1
        } else if standard < result {
            end -= 1
        }
    }
    print(temp)
}
let count: Int = Int(readLine()!)!
let seq = readLine()!.split(separator: " ").map {Int($0)!}
let standard = Int(readLine()!)!
betweenSum(arr: seq.sorted(by: <), standard: standard)