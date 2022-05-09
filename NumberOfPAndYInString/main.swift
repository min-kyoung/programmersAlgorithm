//
//  main.swift
//  NumberOfPAndYInString
//
//  Created by 노민경 on 2022/05/09.
//

import Foundation

let string = readLine()

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var cntP = 0
    var cntY = 0
    
    for i in s.lowercased() { // 문자열을 모두 소문자로 바꿈
        if i == "p" {
            cntP += 1
        } else if i == "y" {
            cntY += 1
        }
    }
    
    return cntP == cntY ? true : false
}

print(solution(string ?? "error"))
