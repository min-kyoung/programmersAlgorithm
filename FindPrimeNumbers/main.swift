//
//  main.swift
//  FindPrimeNumbers
//
//  Created by 노민경 on 2022/04/29.
//

import Foundation

let number = Int(readLine()!)

// 소수 체크
func isPrime(_ number: Int) -> Bool {
    var i = 3
    if number == 2 {
        return true
    }
    if number % 2 == 0 {
        return false
    }
    while (i * i <= number) {
        if (number % i == 0) {
            return false
        }
        i += 2
    }
    return true
}

func solution(_ n:Int) -> Int {
    var count: Int = 1 // 2는 기본적으로 들어가므로 기본값을 1로 설정
    
    for i in 2...n where i % 2 != 0 {
        if isPrime(i) == true {
            count += 1
        }
    }
    return count
}

print("소수는 \(solution(number!))개입니다.")

