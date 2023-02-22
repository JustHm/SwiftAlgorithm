let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var box: [[Int]] = [[Int]]()
for _ in 0..<input[1] {
    let road = readLine()!.split(separator: " ").map{Int(String($0))!}
    box.append(road)
}
var stack = [[Int]]()
var total = 0
for (row, arr) in box.enumerated() {
    for (col, value) in arr.enumerated() {
        if value == 1 { stack.append([row, col]) }
        else if value == -1 { total += 1 }
    }
}
var index = 0
while stack.count != index {
    let pos = stack[index]
    for direction in [[1, 0], [-1, 0], [0, 1], [0, -1]] {
        let caculateX = pos[0] + direction[0]
        let caculateY = pos[1] + direction[1]
        if caculateX < input[1], caculateX >= 0,
           caculateY < input[0], caculateY >= 0,
           box[caculateX][caculateY] == 0 {
            box[caculateX][caculateY] = box[pos[0]][pos[1]] + 1
            stack.append([caculateX, caculateY])
        }
    }
    index += 1
}
if (stack.count + total) == (input[0]*input[1]) {
    print(box[stack.last![0]][stack.last![1]] - 1)
}
else {
    print("-1")
}