//
//  main.swift
//  SumOfTheMatrices
//
//  Created by 노민경 on 2022/05/16.
//

import Foundation

let sampleArray = [[1,2],[2,3]]
let sampleArray2 = [[3,4],[5,6]]

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result = arr1
    
    for i in 0..<arr1.count { // 행만큼 반복
        for j in 0..<arr1[i].count { // 열만큼 반복
        result[i][j] += arr2[i][j] // arr1의 행과 열에 arr2의 행과 열을 더함
        }
    }
  return result
}

print(solution(sampleArray, sampleArray2))

