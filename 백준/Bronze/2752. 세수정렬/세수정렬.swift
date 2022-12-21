var input = readLine()!.split(separator: " ").map { Int($0)! }

for i in input.sorted(by: <) {
    print(i, separator: " ")
}
