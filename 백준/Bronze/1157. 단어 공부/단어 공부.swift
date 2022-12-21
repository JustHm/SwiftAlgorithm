let str = readLine()!.uppercased()
var arr: [(word: Character, count: Int)] = []

for char in Set(str) {
    arr.append((char, str.filter({$0==char}).count))
}
arr.sort(by: {$0.count > $1.count})
if arr.count == 1 {
    print(arr[0].word)
}
else if arr[0].count == arr[1].count {
    print("?")
} else {
    print(arr[0].word)
}