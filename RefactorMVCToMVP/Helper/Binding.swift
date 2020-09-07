//
//  Binding.swift
//  RefactorMVCToMVP
//
//  Created by Hasan Qasim on 7/9/20.
//  Copyright © 2020 Hasan Qasim. All rights reserved.
//

import Foundation

class Observable<T> {
    var bind: (T) -> () = {_ in}
    
    var value: T {
        // property observer to get notified whenever the value changes
        didSet {
            // call the bind closure whenever ddiSet gets invoked
            bind(value)
        }
    }
    // value argument is the observed object
    init(_ value: T) {
        self.value = value
    }
}
