let reps = Int(readLine()!)!
var arr: [Int] = []
for _ in 0..<reps {
    arr.append(Int(readLine()!)!)
}
for element in arr.sorted(by: <) {
    print(element)
}