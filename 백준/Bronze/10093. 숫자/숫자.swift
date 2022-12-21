func number(arr: [Int]) {
    let high = arr.max()!
    let low = arr.min()!
    if (high - low) < 2 {
        print("0")
        return
    }
    print(high - low - 1)
    
    for i in ((low+1)..<high) {
        print(i, terminator: " ")
    }
}
var arr = readLine()!.split(separator: " ").map({Int($0)!})
number(arr: arr)
