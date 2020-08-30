//
//  main.swift
//  2108 통계학
//
//  Created by 구형모 on 2020/08/31.
//  Copyright © 2020 KooHyongMo. All rights reserved.
//

import Foundation

if let n = Int(readLine()!) {
    var a = [Int]()
    for _ in 0..<n {
        a.append(Int(readLine()!)!)
    }
    a.sort()
    let freq = Dictionary(a.map{($0, 1)}, uniquingKeysWith: +)
        .sorted(by: {
            if($0.1 == $1.1) {
                return $0.0 < $1.0
            }
            return $0.1 > $1.1
        })
    let maxFreqValue = freq.filter( {$0.1 == freq[0].value})
    print(String(format: "%.0f", Double(a.reduce(0,+)) / Double(a.count)))
    print(a[a.count / 2])
    print(maxFreqValue.count > 1 ? maxFreqValue[1].key : maxFreqValue[0].key)
    print(a[a.count - 1] - a[0])
}
