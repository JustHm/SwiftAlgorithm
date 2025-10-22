import Foundation

// 새로운 방식
// N을 이진수로 변경하고 1을 세면 결과값과 동일함
func solution(_ n:Int) -> Int {
    return n.nonzeroBitCount
}

// Greedy 방식 통과
// func solution(_ n:Int) -> Int {
//     var n = n
//     var ans = 1
//     while n > 1 {
//         if n % 2 == 0 {
//             n /= 2
//         }
//         else {
//             n -= 1
//             ans += 1
//         }
//     }
//     return ans
// }

// DP 방식 효율성 0점
// func solution(_ n:Int) -> Int {
//     var arr = [0, 1, 1]
//     guard n > 2 else { return arr[n] }

//     for i in 3...n {
//         if i % 2 == 0 {
//             arr.append(arr[i / 2])
//         }
//         else {
//             arr.append(arr[i-1] + 1)
//         }
//     }
    
//     return arr[n]
// }
// // 2로 나눠지면 나눈값에 해당하는 인덱스의 값 가져옴
// // 나머지가 있으면 바로 이전 인덱스의 값에 +1
