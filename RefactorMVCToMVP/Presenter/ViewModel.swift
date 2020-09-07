//
//  Presenter.swift
//  RefactorMVCToMVP
//
//  Created by Hasan Qasim on 7/9/20.
//  Copyright © 2020 Hasan Qasim. All rights reserved.
//

import Foundation

class ViewModel {
    private var myModel = Model<Observable<Date>>()
    
    func insert() {
        let dateObservable = Observable(Date())
        myModel.insert(dateObservable)
        
        dateObservable.bind = { _ in
            NotificationCenter.default.post(Notification(name: Notification.Name(rawValue: "updateUI")))
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(5)) {
            dateObservable.value = Date()
        }
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
        return date.value.description
    }
}
