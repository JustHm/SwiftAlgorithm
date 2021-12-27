//
//  blackJack.swift
//  SwiftAlgorithm
//  https://www.acmicpc.net/problem/2798
//  Created by 안정흠 on 2021/12/27.
//

import Foundation

func blackJack() {
    //5 21 (카드개수, 합)
    //5 6 7 8 9
    //[10, 500]
    //[93, 181, 245, 214, 315, 36, 185, 138, 216, 295]
    var info: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
    var card: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: <)
    var answer: Int = 0

    for first in 0..<info[0] {
        for second in first+1..<info[0] {
            for third in second+1..<info[0] {
                let result = card[first] + card[second] + card[third]
                if result <= info[1] {
                    answer = result > answer ? result : answer
                }
            }
        }
    }
    print(answer)
}
