let N = Int(readLine()!)!
var line = 1 // line의 누적합
var loop = 1 // line의 갯수
while (N > line) {
    loop += 1
    line += loop
}

let a = (loop + N) - line
let b = loop - (a - 1)
if loop % 2 == 0 { //isEven
    print("\(a)/\(b)")
}
else {
    print("\(b)/\(a)")
}