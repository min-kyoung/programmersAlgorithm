//
//  main.swift
//  SortStringsInDescendingOrder
//
//  Created by 노민경 on 2022/05/04.
//

import Foundation

let string = readLine()

func solution(_ s:String) -> String {
    var result = ""
    for i in 0..<s.count{
        result += String(s.sorted(by:>)[i])
    }
    return result
}

print(solution(string ?? "error"))

