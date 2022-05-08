//
//  main.swift
//  FindForKim
//
//  Created by 노민경 on 2022/05/08.
//

import Foundation

let sampleArr = ["Jane", "Kim"]

func solution(_ seoul:[String]) -> String {
    var index = 0
    
    for i in 0..<seoul.count {
        if seoul[i] == "Kim" {
            index = i
            break
        }
    }
    return "김서방은 \(index)에 있다."
}

print(solution(sampleArr))

