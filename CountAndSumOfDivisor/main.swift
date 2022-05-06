//
//  main.swift
//  CountAndSumOfDivisor
//
//  Created by 노민경 on 2022/05/06.
//

import Foundation

var left = Int(readLine()!)!
var right = Int(readLine()!)!

func solution(_ left:Int, _ right:Int) -> Int {
    var result = 0 // 결과값
    
    for i in left...right {
        var cnt = 0 // 소수 갯수 홀짝 판별
        
        for j in 1...i {
            if i % j == 0 {
                cnt += 1
            }
        }
        
        if cnt % 2 == 0 {
            result += i
        }else {
            result -= i
        }
    }
    return result
}

print(solution(left, right))

