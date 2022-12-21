let input = readLine()!.split(separator: " ")
let ascending = input.sorted(by: <)
let descending = input.sorted(by: >)

if input == ascending {
    print("ascending")
} else if input == descending {
    print("descending")
} else {
    print("mixed")
}