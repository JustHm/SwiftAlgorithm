let grade = readLine()!
var result = 0.0
switch grade.first! {
    case "A":
    result = 4.0
    case "B":
    result = 3.0
    case "C":
    result = 2.0
    case "D":
    result = 1.0
    default:
    result = 0.0
}
switch grade.last! {
    case "+":
    print(result+0.3)
    case "-":
    print(result-0.3)
    default:
    print(result)
}