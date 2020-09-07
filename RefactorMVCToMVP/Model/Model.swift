//
//  Model.swift
//  RefactorMVCToMVP
//
//  Created by Hasan Qasim on 7/9/20.
//  Copyright © 2020 Hasan Qasim. All rights reserved.
//

import Foundation

struct Model<T> {
    private var objects = [T]()
    
    mutating func insert(_ element: T) {
        objects.insert(element, at: 0)
    }
    
    mutating func remove(at index: Int) {
        guard objects.indices.contains(index) else {
            return
        }
        objects.remove(at: index)
    }
    
    // use an explicit type with computed properties
    var count: Int {
        return objects.count
    }
    
    // implement a custom subscript to access models element by index
    subscript(index: Int) -> T? {
        return objects.indices.contains(index) ? objects[index] : nil
    }
}
