//
//  main.swift
//  HarshadNumber
//
//  Created by 노민경 on 2022/05/19.
//

import Foundation

let x = Int(readLine()!)!

func solution(_ x:Int) -> Bool {
    var sum = 0
    
    for i in String(x) { // for문에 사용하기 위해 String으로 변경
        guard let number = Int(String(i)) else { break } // 한글자씩 Int로 변환
        sum += number
    }
    
    if x % sum == 0 {
        return true
    } else{
        return false
    }
}

print(solution(x))
