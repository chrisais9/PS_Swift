//
//  main.swift
//  2751 수 정렬하기 2
//
//  Created by 구형모 on 2020/08/17.
//  Copyright © 2020 KooHyongMo. All rights reserved.
//

import Foundation

if let n = Int(readLine()!) {
    var a = [Int]()
    for _ in 0..<n {
        a.append(Int(readLine()!)!)
    }
    for i in a.sorted() {
        print(i)
    }
}
