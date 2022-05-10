//
//  main.swift
//  CaesarCode
//
//  Created by 노민경 on 2022/05/10.
//

import Foundation

let string = readLine()
let num = Int(readLine()!)!

func solution(_ s:String, _ n:Int) -> String {
    let upperString = Array("abcdefghijklmnopqrstuvwxyz".uppercased())
    let lowerString = Array("abcdefghijklmnopqrstuvwxyz")
    let array = Array(s)
    var result = ""
    
    for i in array {
        if upperString.contains(i) { // i번째 문자가 대문자일 경우
            var index = upperString.firstIndex(of: i)! + n // 대문자 배열에서 문자 위치를 찾고 그 위치에 n을 더한 값을 index에 저장
            if index > 25 {
                index = index - 26 // index가 25보다 클 경우 26을 빼주어 다시 처음부터 위치를 찾음
            }
            result.append(upperString[index]) // 대문자 배열에서 찾은 위치의 문자를 result에 추가
        } else if lowerString.contains(i) { // i번째 문자가 소문자일 경우
           var index = lowerString.firstIndex(of: i)! + n
            if index > 25 {
                index = index - 26
            }
            result.append(lowerString[index])
        } else { // i번째 문자가 공백일 경우
            result.append(i)
        }
    }
    return result
}

print(solution(string ?? "error", num))

