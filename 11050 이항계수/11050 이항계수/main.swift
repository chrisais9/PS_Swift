//
//  main.swift
//  11050 이항계수
//
//  Created by 구형모 on 2020/07/26.
//  Copyright © 2020 KooHyongMo. All rights reserved.
//

import Foundation

func factorial(x: Int) -> Int {
    if x <= 1 {
        return 1
    }
    return factorial(x: x-1) * x
}
let arr :[Int]! = readLine()?.split(separator: " ").map{Int($0)!}
let n = arr[0]
let k = arr[1]

print(factorial(x: arr[0]) / (factorial(x: arr[1]) * factorial(x: arr[0] - arr[1])))
