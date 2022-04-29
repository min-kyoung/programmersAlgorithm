//
//  main.swift
//  FromStringToInt
//
//  Created by 노민경 on 2022/04/29.
//

import Foundation

let str = readLine()

func solution(_ s:String) -> Int {
    var result: Int = 0
    
    if s.count > 1 && s.count <= 5 {
        if let r = Int(s) {
            result = r
        } else {
            print("nil")
        }
    } else {
        print("문자열의 길이는 1이상 5이하입니다.")
    }
    return result
}

print(solution(str ?? "error"))
