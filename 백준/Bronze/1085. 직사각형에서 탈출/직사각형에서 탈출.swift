typealias Point = (x: Int, y: Int)
var input = readLine()!.split(separator: " ").map({Int($0)!})
var currentPos = Point(x: input[0], y: input[1])
var maxPos = Point(x: input[2], y: input[3])
var result = Point(x: 0, y: 0)
if (maxPos.x - currentPos.x) <= (maxPos.x / 2) {
    result.x = maxPos.x - currentPos.x
}
else {
    result.x = currentPos.x
}
if (maxPos.y - currentPos.y) <= (maxPos.y / 2) {
    result.y = maxPos.y - currentPos.y
}
else {
    result.y = currentPos.y
}
print(result.x <= result.y ? result.x : result.y)