import Foundation
//스택에서 하나씩 빼서 인접한 위치의 이미지가 존재하는지 확인하며 크기 산출
func checkImageSize(x: Int, y: Int) -> Int{
    var checkStack: [(Int, Int)] = [(x, y)]
    var size = 1
    while !checkStack.isEmpty {
        let current = checkStack.first!
        for dir in checkAroundPosition(x: current.0, y: current.1) {
            if image[dir.0][dir.1] == 1 {
                image[dir.0][dir.1] = -1 //이미 체크했다 표시
                size += 1 //이미지 크기 증가
                checkStack.append((dir.0, dir.1))
            }
        }
        checkStack.removeFirst()
    }
    return size
}
//4방향을 접근 가능한지 체크하고 가능한 방향 반환
func checkAroundPosition(x: Int, y: Int) -> [(Int, Int)] {
    var ableDir: [(Int, Int)] = []
    let directions = [(1, 0), (-1, 0), (0, 1), (0, -1)]
    for dir in directions {
        let caculateX = (x + dir.0)
        let caculateY = (y + dir.1)
        if caculateX < input[0] && caculateX >= 0 {
            if caculateY < input[1] && caculateY >= 0 {
                ableDir.append((caculateX, caculateY))
            }
        }
    }
    return ableDir
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var image: [[Int]] = [[Int]]()
for _ in 0..<input[0] {
    let numbers = readLine()!.split(separator: " ").map{Int(String($0))!}
    image.append(numbers)
}
var imageCount = 0
var maxSize = 0
for i in 0..<input[0] {
    for j in 0..<input[1] {
        if image[i][j] == 1 {//이미지가 존재한다면.
            image[i][j] = -1 //이미지 이미 체크함 표시
            let imageSize = checkImageSize(x: i, y: j)
            if maxSize < imageSize { maxSize = imageSize }
            imageCount += 1
        }
        else { // 이미지가 없다면.
            continue
        }
    }
}
print(imageCount)
print(maxSize)