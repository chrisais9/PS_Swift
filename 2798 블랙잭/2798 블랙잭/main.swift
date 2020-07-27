//
//  main.swift
//  2798 블랙잭
//
//  Created by 구형모 on 2020/07/27.
//  Copyright © 2020 KooHyongMo. All rights reserved.
//

import Foundation

if let nk = readLine()?.split(separator: " ").map({ Int($0)! }) {
    if let d = readLine()?.split(separator: " ").map({Int($0)! }) {
        var mx = 0
        for i in 0..<d.count {
            for j in i+1..<d.count {
                for k in j+1..<d.count {
                    let sm = d[i] + d[j] + d[k]
                    if sm <= nk[1] && mx < sm {
                        mx = sm
                    }
                }
            }
        }
        print(mx)
    }
}
