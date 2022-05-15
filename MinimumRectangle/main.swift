//
//  main.swift
//  MinimumRectangle
//
//  Created by 노민경 on 2022/05/15.
//

import Foundation

let sampleArray = [[60, 50], [30, 70], [60, 30], [80, 40]]
let sampleArray2 = [[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]
let sampleArray3 = [[14, 4], [19, 6], [6, 16], [18, 7], [7, 11]]

func solution(_ sizes:[[Int]]) -> Int {
    var size = sizes
    var result = 0
    var w: [Int] = [] // 가로길이
    var h: [Int] = [] // 세로길이

    for i in 0..<sizes.count {
        size[i].sort() // 오름차순 정렬
        w.append(size[i][0])
        h.append(size[i][1])
    }
    
    result = w.max()! * h.max()! // 최댓값끼리 곱하여 면적을 구함
    
    return result
}

print(solution(sampleArray))
print(solution(sampleArray2))
print(solution(sampleArray3))

