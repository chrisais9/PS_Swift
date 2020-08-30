//
//  main.swift
//  2775 부녀회장이 될테야
//
//  Created by 구형모 on 2020/08/31.
//  Copyright © 2020 KooHyongMo. All rights reserved.
//

import Foundation
func f(a: Int, b:Int) -> Int {
    if b == 1 {
        return b
    }
    if a == 0 {
        return b
    }
    return f(a: a - 1, b: b) + f(a: a, b: b - 1)
}

if let t = Int(readLine()!) {
    for _ in 0..<t {
        print(f(a: Int(readLine()!)!, b: Int(readLine()!)!))
    }
}
