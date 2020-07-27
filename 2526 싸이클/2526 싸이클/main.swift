//
//  main.swift
//  2526 싸이클
//
//  Created by 구형모 on 2020/07/27.
//  Copyright © 2020 KooHyongMo. All rights reserved.
//

import Foundation

if let np = readLine()?.split(separator: " ").map({UInt64($0)!}) {
    var cnt = 1
    var ans = 0
    var t = UInt64(np[0])
    var ck = Array(repeating: 0, count: 10001)
    cnt += 1
    ck[Int(np[0])] = cnt
    while true {
        t = (t*np[0])%np[1]
        if ck[Int(t)] != 0 {
            for i in 0..<10000 {
                if ck[i] >= ck[Int(t)] {
                    ans += 1
                }
            }
            print(ans)
            break
        }
        cnt += 1
        ck[Int(t)] = cnt
    }
}

