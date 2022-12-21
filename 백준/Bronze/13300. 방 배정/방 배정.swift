let arr = readLine()!.split(separator: " ").map {Int($0)!}
var student = Array(repeating: Array(repeating: 0, count: 6), count: 2)
var answer = 0
for _ in 0..<arr[0] {
    let info = readLine()!.split(separator: " ").map {Int($0)!}
    student[info[0]][info[1]-1] += 1
}

for girl in student[0] {
    answer += (girl / arr[1]) + (girl % arr[1] != 0 ? 1 : 0)
}
for boy in student[1] {
    answer += (boy / arr[1]) + (boy % arr[1] != 0 ? 1 : 0)
}
print(answer)