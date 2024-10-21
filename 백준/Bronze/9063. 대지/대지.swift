var arrX = [Int]()
var arrY = [Int]()
for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arrX.append(input[1])
    arrY.append(input[0])
}

let distanceX = abs(arrX.max()! - arrX.min()!)
let distanceY = abs(arrY.max()! - arrY.min()!)

print(distanceX * distanceY)