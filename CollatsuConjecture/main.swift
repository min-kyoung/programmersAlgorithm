//
//  main.swift
//  CollatsuConjecture
//
//  Created by 노민경 on 2022/05/23.
//

import Foundation

let n = Int(readLine()!)!

func solution(_ num:Int) -> Int {
    var cnt = 0
    var n = num
    
    while n != 1 {
        if n % 2 == 0 { // 짝수일 경우
            n = n / 2
        }else{ // 홀수일 경우
            n = n * 3 + 1
 
        }
        cnt += 1
    }
    return cnt > 500 ? -1 : cnt // cnt가 500이 넘어가면 -1 반환, 그렇지 않으면 cnt 반환
}

print(solution(n))

