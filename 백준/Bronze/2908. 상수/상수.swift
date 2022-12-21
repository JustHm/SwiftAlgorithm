let str = readLine()!.split(separator: " ")
let a = Int(String(str[0].reversed()))!
let b = Int(String(str[1].reversed()))!

if a < b {
    print(b)
} else {
    print(a)
}