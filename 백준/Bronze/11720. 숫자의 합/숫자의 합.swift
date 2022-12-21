readLine()!
let str = readLine()!
var result = 0
for char in str {
    result += char.wholeNumberValue!
}
print(result)