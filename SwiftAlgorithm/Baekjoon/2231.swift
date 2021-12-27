//
//  DivideSum.swift
//  SwiftAlgorithm
//  https://www.acmicpc.net/problem/2231
//  Created by 안정흠 on 2021/12/28.
//

import Foundation

func divideSum() {
    var input = Int(readLine()!)!
    var answer = 0
    var sum = 0

    for item in (input/2..<input) {
        sum = item
        sum += (String(item).map{Int(String($0))!}.reduce(0,+))
        
        if sum == input {
            answer = item
            break
        }
    }

    print(answer)
}
