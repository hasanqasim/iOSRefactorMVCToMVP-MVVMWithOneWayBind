//
//  Presenter.swift
//  RefactorMVCToMVP
//
//  Created by Hasan Qasim on 7/9/20.
//  Copyright © 2020 Hasan Qasim. All rights reserved.
//

import Foundation

class Presenter {
    private var myModel = Model<Date>()
    
    func insert() {
        myModel.insert(Date())
    }
    
    func remove(at index: Int) {
        myModel.remove(at: index)
    }
    
    var count: Int {
        return myModel.count
    }
    
    subscript(index: Int) -> String? {
        guard let date = myModel[index] else {
            return nil
        }
        return date.description
    }
}
