//
//  main.swift
//  nNumbersSpacedBy x
//
//  Created by 노민경 on 2022/05/18.
//

import Foundation

let x = Int(readLine()!)!
let n = Int(readLine()!)!

func solution(_ x:Int, _ n:Int) -> [Int64] {
    var array = [Int64]()
    
    for i in 1...n{
        array.append(Int64(x*i))
    }
    
    return array
}

print(solution(x, n))

