//
//  main.swift
//  IntegerDescendingSort
//
//  Created by 노민경 on 2022/05/08.
//

import Foundation

var number = Int64(readLine()!)!

func solution(_ n:Int64) -> Int64 {
    var result = ""
    let array = String(n).map{String($0)}.sorted(by:>)
    for i in 0..<array.count {
        result += array[i]
    }
    return Int64(result)!
}

print(solution(number))

