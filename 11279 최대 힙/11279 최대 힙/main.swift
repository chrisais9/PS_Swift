//
//  main.swift
//  11279 최대 힙
//
//  Created by 구형모 on 2020/09/24.
//

import Foundation

public struct Heap {
    public var tb = [Int](repeating: 0, count: 100001)
    var size = 0
    
    public var isEmpty: Bool {
        return tb.isEmpty
    }
    
    public func top() -> Int? {
        return tb[0]
    }
    
    public mutating func insert(elem : Int) {
        
        size += 1
        tb[size] = elem
        
        var child = size
        var parent = child >> 1
        
        while child > 1 && tb[parent] < tb[child] {
            tb.swapAt(parent, child)
            child = parent
            parent = child >> 1
        }
    }
    
    public mutating func remove() -> Int {
    
        guard size != 0 else {
            return 0
        }
        
        let res = tb[1]
        
        tb.swapAt(1, size)
        size -= 1
        
        var parent = 1
        var child = parent << 1
        if child + 1 <= size {
            child = (tb[child] > tb[child + 1]) ? child : child + 1
        }
        
        while child <= size && tb[parent] < tb[child] {
            tb.swapAt(parent, child)
            
            parent = child
            child <<= 1
            if child + 1 <= size {
                child = (tb[child] > tb[child + 1]) ? child : child + 1
            }
        }
        return res
    }
}

var heap = Heap()
if let n = readLine().map({Int($0)!}) {
    for _ in 0..<n {
        if let x = readLine().map({Int($0)!}) {
            if x != 0 {
                heap.insert(elem: x)
            } else {
                print(heap.remove())
            }
        }
        
    }
}
