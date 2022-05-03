//
//  main.swift
//  HidePhoneNumber
//
//  Created by 노민경 on 2022/05/03.
//

import Foundation

let phoneNumber = readLine()

func solution(_ phone_number:String) -> String {
    var result = ""
    
    for _ in 0..<phone_number.count - 4 {
        result += "*"
    }
    
    result += phone_number.suffix(4)
    
    return result
}

print(solution(phoneNumber ?? "error"))

