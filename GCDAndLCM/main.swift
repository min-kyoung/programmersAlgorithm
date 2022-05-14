//
//  main.swift
//  GCDAndLCM
//
//  Created by 노민경 on 2022/05/14.
//

import Foundation

var n = Int(readLine()!)!
var m = Int(readLine()!)!

func solution(_ n:Int, _ m:Int) -> [Int] {
    var GCD = 0 // 최대공약수
    var LCM = 0 // 최소공배수
    var result: [Int] = []
    
    // 입력받은 두 숫자 중 더 큰 수를 max, 작은 수를 min
    var min = n < m ? n : m
    var max = n > m ? n : m

    for num in 1...min {
        if n % num == 0 && m % num == 0 {
            GCD = num
        }
    }

    for num in max...(n * m) {
        if num % n == 0 && num % m == 0 {
            LCM = num
            break
        }
    }
    
    result.append(GCD)
    result.append(LCM)
    
    return result
}

print(solution(n, m))

