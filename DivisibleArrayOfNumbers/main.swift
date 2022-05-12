//
//  main.swift
//  DivisibleArrayOfNumbers
//
//  Created by 노민경 on 2022/05/12.
//

import Foundation

let sampleArray = [5, 9, 7, 10]
let divisor = 5

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result:[Int] = []
    
    for i in 0..<arr.count {
        if arr[i] % divisor == 0 {
            result.append(arr[i])
        }
    }
    
    if result.count > 0 {
        result.sort()
        return result
    } else {
        return [-1]
    }
}

print(solution(sampleArray, divisor))
