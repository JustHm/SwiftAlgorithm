var students = Array(repeating: 0, count: 31)
for _ in 1...28 {
    let num = Int(readLine()!)!
    students[num] = 1
}

for i in 1...30 {
    if students[i] == 0 {
        print(i)
    }
}