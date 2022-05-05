//
//  main.swift
//  SumOfDivisor
//
//  Created by 노민경 on 2022/05/05.
//

import Foundation

var number = Int(readLine()!)!

func solution(_ n:Int) -> Int {
    var sum = 0
    
    guard n > 0 else { return sum } // 0도 정수에 포함되나 약수는 될 수 없으므로 이를 대비
    
    for i in 1...n {
        if n % i == 0 {
            sum += i
        }
    }
    
    return sum
}

print(solution(number))

