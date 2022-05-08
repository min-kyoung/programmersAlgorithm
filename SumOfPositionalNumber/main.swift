//
//  main.swift
//  SumOfPositionalNumber
//
//  Created by 노민경 on 2022/05/08.
//

import Foundation

var number = Int(readLine()!)!

func solution(_ n:Int) -> Int
{
    var answer:Int = 0
    
    let array = Array(String(n))
                      
    for i in 0..<array.count {
        answer += Int(String(array[i]))!
    }
    
    return answer
}

print(solution(number))
