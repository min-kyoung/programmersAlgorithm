//
//  main.swift
//  KthNumber
//
//  Created by 노민경 on 2022/05/11.
//

import Foundation

let sampleArray = [1, 5, 2, 6, 3, 7, 4]
let commands = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result:[Int] = []
    
    for command in commands { // 배열은 0부터 시작하므로 배열에 접근하기 위해서 -1을 해줌
        let i = command[0] - 1
        let j = command[1] - 1
        let k = command[2] - 1
        
        let subResult = array[i...j].sorted() // 부분 배열 정렬
        result.append(subResult[k]) // 정렬된 배열의 k번째 값을 result 배열에 추가
    }
    return result
}

print(solution(sampleArray, commands))

