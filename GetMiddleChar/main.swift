//
//  main.swift
//  GetMiddleChar
//
//  Created by 노민경 on 2022/05/17.
//

import Foundation

let string = readLine()

func solution(_ s:String) -> String {
    var result = ""
    var array = Array(s)
    
    if array.count % 2 == 0 { // 단어의 글자수가 짝수 = > 가운데 두 글자
        result = String(array[array.count/2 - 1...array.count/2])
    } else { // 단어의 글자수가 홀수 = > 가운데 한 글자
        result = String(array[array.count/2])
    }

    return result
}

print(solution(string ?? "error"))

