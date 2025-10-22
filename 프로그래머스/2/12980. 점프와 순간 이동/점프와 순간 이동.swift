import Foundation

func solution(_ n:Int) -> Int {
    var n = n
    var ans = 1
    while n > 1 {
        if n % 2 == 0 {
            n /= 2
        }
        else {
            n -= 1
            ans += 1
        }
    }
    return ans
}

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
