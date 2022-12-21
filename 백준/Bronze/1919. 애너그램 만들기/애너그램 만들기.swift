var str1 = Array(readLine()!)
var str2 = Array(readLine()!)
var count = 0
for char in str2 {
    if let index = str1.firstIndex(of: char) {
        str1.remove(at: index)
    } else {
        count += 1
    }
}
print(count + str1.count)