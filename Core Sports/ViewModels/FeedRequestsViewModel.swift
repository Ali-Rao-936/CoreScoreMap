//
//  FeedRequestsViewModel.swift
//  FunSports
//
//  Created by Remya on 5/20/23.
//

import Foundation

protocol FeedRequestsViewModelDelegate{
    func didFinishFetch()
    func didFinishAccept()
}

class FeedRequestsViewModel{
    var delegate:FeedRequestsViewModelDelegate?
    var requests:[FeedRequests]?
    
    func getFeedRequests(eventID:Int){
        Utility.showProgress()
        FeedsAPI().getEventRequests(eventID: eventID) { requests in
            self.requests = requests
            self.delegate?.didFinishFetch()
        } failed: { _ in
        }
    }
    
    func acceptEventRequest(eventRequestID:Int){
        Utility.showProgress()
        FeedsAPI().acceptEventRequests(eventRequestID: eventRequestID) { response in
            Utility.showSuccessSnackViewWithCompletion(message: response?.message ?? "", iconName: "") {
                self.delegate?.didFinishAccept()
            }
            
        } failed: { _ in
            
        }

        
    }
    
}
