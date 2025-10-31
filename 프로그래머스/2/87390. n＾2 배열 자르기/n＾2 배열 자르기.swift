import Foundation
/*
Solution
- 2차원 배열을 1차원으로 돌렸을때 인덱스 번호를 크기로 나눈 값, 나머지값을 활용
- 그러면 두 값이 위치하는 행열을 역으로 찾을 수 있음
- 각 [0...N][0] 값은 1...n 까지 동일함. 그래서 나눈 값에 + 1
- 나머지값이 나눈값 보다 작으면, 나눈값 그대로 추가
- 크다면, (행-열) 을 한 값을 더하면 해당 위치의 값

- 몇 번 검증하다보면 큰 값에 +1만 하는것을 알 수 있음
- 나머지, 나눈 값 중 가장 큰 값에 +1만 하면 정답임
*/
func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var answer = [Int]()
    let n = Int64(n)
    for i in left...right { // ex) 11
        let mod = i == 0 ? 0 : i / n // ex) 2
        let remain = i == 0 ? 0 : i % n // ex) 3
        
        let temp = max(mod, remain) + 1
        answer.append(Int(temp))
        /*
        var temp = mod + 1 // ex) 3
        if remain > mod {
            temp += remain - mod // ex) 4
        }
        answer.append(Int(temp))
        */
    }
    return answer
}