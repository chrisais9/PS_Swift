//
//  main.swift
//  10816 숫자 카드 2
//
//  Created by 구형모 on 2020/08/31.
//  Copyright © 2020 KooHyongMo. All rights reserved.
//

import Foundation

if Int(readLine()!) != nil {
    var hash = [Int: Int]()
    for i in readLine()!.split(separator: " ").map({(Int($0)!)}) {
        if hash.keys.contains(i) {
            hash[i]! += 1
        } else {
            hash[i] = 1
        }
    }
    if Int(readLine()!) != nil {
        for i in readLine()!.split(separator: " ").map({(Int($0)!)}) {
            if hash.keys.contains(i) {
                print(hash[i]!, separator: "...", terminator: " ")
            } else {
                print(0, separator: "...", terminator: " ")
            }
        }
    }
}
