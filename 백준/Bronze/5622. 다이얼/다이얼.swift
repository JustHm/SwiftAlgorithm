let str = readLine()!
let arr = ["", "", "", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz", ""]
var result = 0

for char in str.lowercased() {
    for index in 0..<arr.count {
        if arr[index].contains(char) {
            result += index
        }
    }
}
print(result)