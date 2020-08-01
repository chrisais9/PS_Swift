//
//  main.swift
//  1929 소수 구하기
//
//  Created by 구형모 on 2020/08/01.
//  Copyright © 2020 KooHyongMo. All rights reserved.
//

import Foundation

if let nm = readLine()?.split(separator: " ").map({Int($0)!}) {
    var d = [Int](repeating: 0, count: nm[1]+1)
    d[1] = 1
    
    for i in 2...nm[1] {
        var j = 2
        while(i * j <= nm[1]) {
            d[i * j] = 1
            j += 1
        }
    }
    for i in stride(from: nm[0], to: nm[1]+1, by: 1) {
        if(d[i] != 1) {
            print(i)
        }
    }
}

