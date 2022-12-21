func result(_ A: Int,_ B: Int) {
    print((A+B)*(A-B))
}
let temp = readLine()!.split(separator: " ").map{Int($0)!}
result(temp[0], temp[1])