//
//  programmers-print.swift
//  SwiftAlgorithm
//  https://programmers.co.kr/learn/courses/30/lessons/42587
//  Created by 안정흠 on 2021/12/01.
//

import Foundation

func Printer() {
    var pool = [1, 1, 9, 1, 1, 1]//[2, 1, 3, 2]
    var position = 0

    var max = pool.max()
    var count = 0
    
    while !pool.isEmpty && position >= 0 {
        if max != pool.first {
            pool.append(pool.first!)
            pool.removeFirst()
            if position == 0 {
                position = pool.count-1
            }
            else { position -= 1 }
        }
        else {
            pool.removeFirst()
            max = pool.max()
            count+=1;
            position -= 1
        }
    }

    print(position)
    print(count)

}
