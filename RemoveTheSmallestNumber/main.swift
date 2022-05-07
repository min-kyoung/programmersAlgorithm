//
//  main.swift
//  RemoveTheSmallestNumber
//
//  Created by 노민경 on 2022/05/07.
//

import Foundation

let sampleArr = [ 4, 3, 2, 1 ]
let sampleArr2 = [ 10 ]

func solution(_ arr:[Int]) -> [Int] {
    let sort = arr.sorted(by:>) // 배열 역순 배치
    var newArr = arr
    
    for i in 0..<arr.count {
        if arr[i] == sort[arr.count - 1] {
            newArr.remove(at: i) // 가장 마지막 값 제거
        }
    }
    return arr.count > 1 ? newArr : [-1]
}

print(solution(sampleArr))
print(solution(sampleArr2))
