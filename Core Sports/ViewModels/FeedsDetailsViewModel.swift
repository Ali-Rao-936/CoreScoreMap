//
//  FeedsDetailsViewModel.swift
//  FunSports
//
//  Created by Remya on 5/19/23.
//

import Foundation

protocol FeedsDetailsViewModelDelegate{
    func didFinishSendRequest()
}

class FeedsDetailsViewModel{
    var delegate:FeedsDetailsViewModelDelegate?
    
    func sendRequest(param:[String:Any]){
        Utility.showProgress()
        FeedsAPI().sendEventRequest(param: param) { response in
            Utility.showSuccessSnackViewWithCompletion(message: response?.message ?? "", iconName: "") {
                self.delegate?.didFinishSendRequest()
            }
            
        } failed: { msg in
            Utility.showErrorSnackView(message: msg)
        }

    }
}
