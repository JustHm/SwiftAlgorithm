let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]
var maze: [[Int]] = [[Int]]()
for _ in 0..<input[0] {
    let road = readLine()!.map{(Int(String($0))! - 1)}
    maze.append(road)
}
var stack = [[0,0]]
maze[0][0] = 1
while !stack.isEmpty {
    let pos = stack.removeFirst()
    for direction in directions {
        let caculateX = pos[0] + direction[0]
        let caculateY = pos[1] + direction[1]
        if caculateX < input[0], caculateX >= 0,
           caculateY < input[1], caculateY >= 0,
           maze[caculateX][caculateY] == 0 {
            maze[caculateX][caculateY] = maze[pos[0]][pos[1]] + 1
            stack.append([caculateX, caculateY])
        }
    }
}
print(maze[input[0]-1][input[1]-1])