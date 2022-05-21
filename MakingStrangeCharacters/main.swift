//
//  main.swift
//  MakingStrangeCharacters
//
//  Created by 노민경 on 2022/05/21.
//

import Foundation

let string = readLine()

func solution(_ s:String) -> String {
    var result: [String] = []
    var x = 0
    
    for i in s {
        if x % 2 == 0 {
            result.append(String(i.uppercased())) // 대문자로 변환
        }else {
            result.append(String(i.lowercased())) // 소문자로 변환
        }
        x += 1
        if i == " " {
            x = 0
        }
    }
    
    return result.joined() // 배열 합치기
}

print(solution(string ?? "error"))

