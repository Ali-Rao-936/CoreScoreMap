//
//  MyFeedsViewModel.swift
//  FunSports
//
//  Created by Remya on 5/19/23.
//

import Foundation

protocol MyFeedsViewModelDelegate{
    func didFinishFetch()
}

class MyFeedsViewModel{
    var delegate:MyFeedsViewModelDelegate?
    var events:[Events]?
    var originals:[Events]?
    
    func getEvents(){
        let param = ["onlyOwn":1]
        FeedsAPI().getEvents(param: param) { events in
            self.events = events
            self.originals = events
            self.delegate?.didFinishFetch()
            
        } failed: { _ in
            
        }

    }
}
