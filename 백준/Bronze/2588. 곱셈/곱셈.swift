var A: Int = Int(readLine()!)!
var B = readLine()!

for char in B.reversed() {
    print(Int(String(char))! * A)
}
print(Int(B)! * A)