//
//  main.swift
//  FindTheNumberRemaining 1
//
//  Created by 노민경 on 2022/05/02.
//

import Foundation

let number = Int(readLine()!)!

func solution(_ n:Int) -> Int {
    for i in 2 ..< n
    {
        if(n%i == 1)
        {
            return i
        }
    }
    return 0
}

print(solution(number))
