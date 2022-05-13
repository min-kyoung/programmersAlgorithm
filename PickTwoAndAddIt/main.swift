//
//  main.swift
//  PickTwoAndAddIt
//
//  Created by 노민경 on 2022/05/13.
//

import Foundation

let sampleArray = [2,1,3,4,1]

func solution(_ numbers:[Int]) -> [Int] {
    var sum = 0
    var result: [Int] = []
    
    for i in 0..<numbers.count - 1 { // 배열의 처음부터 마지막 인덱스 전까지
        for j in i + 1..<numbers.count { // i 다음부터 마지막 인덱스까지
            sum = numbers[i] + numbers[j]
            
            if !result.contains(sum) {
                result.append(sum)
            }
        }
    }
    return result.sorted()
}

print(solution(sampleArray))
