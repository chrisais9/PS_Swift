//
//  main.swift
//  1259 팰린드롬 수
//
//  Created by 구형모 on 2020/07/26.
//  Copyright © 2020 KooHyongMo. All rights reserved.
//

import Foundation
var ans = [String]()
while let n = readLine() {
    guard n != "0" else {
        break
    }
    var flag = true
    if(n.count > 1) {
        for i in 0..<n.count/2 {
            if(n[i] != n[n.count-i-1]) {
                ans.append("no")
                flag = false
                break
            }
        }
    }
    if(flag) {
        ans.append("yes")
    }
}
for i in ans {
    print(i)
}
extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
