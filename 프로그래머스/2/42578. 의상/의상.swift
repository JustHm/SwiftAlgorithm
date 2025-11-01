import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dict = Dictionary<String, Int>()
    var answer = 0
    
    for item in clothes {// 갯수만 세어서 넣음
        dict[item[1], default: 0] += 1
        answer += 1
    }
    guard dict.count != 1 else { return answer } // 키가 하나밖에 없다면 배로 갯수 반환
    answer = 1 // 곱연산을 위해 갱신
    
    for item in dict { 
        // 키의 값을 곱해줌 여기서 +1 하는 이유는 안입었을때도 고려함
        answer *= item.value + 1
    }
    
    return answer - 1 // 아예 안입는 경우의 수는 빼줌
}