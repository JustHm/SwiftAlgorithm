//
//  main.swift
//  SwiftAlgorithm
//
//  Created by 안정흠 on 2021/12/01.
//

import Foundation


var input = Int(readLine()!)!
var answer = 0
var sum = 0

for item in (input-54)..<input {
    sum = item + (String(item).map{Int(String($0))!}.reduce(0,+))
    if sum == input {
        answer = item
        break
    }
}

print(answer)

