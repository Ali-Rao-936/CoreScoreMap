//
//  FeedsViewModel.swift
//  FunSports
//
//  Created by Remya on 4/27/23.
//

import Foundation

protocol FeedsViewModelDelegate{
    func didFinishFetchFeeds()
    
}

class FeedsViewModel{
    var delegate:FeedsViewModelDelegate?
    var data:FeedsResponse?
    var events: [Events]?
    
    
    func getFeedsAPI(param:[String:Any]){
        Utility.showProgress()
        MainAPI().getHome(param: param) { response in
            self.data = response
            self.events = response?.events
            self.delegate?.didFinishFetchFeeds()
        } failed: { _ in
            
        }

    }
    
}
