//
//  CreateFeedsViewModel.swift
//  FunSports
//
//  Created by Remya on 5/17/23.
//

import Foundation
import UIKit

protocol CreateFeedsViewModelDelegate{
    func didFinishFetchPositions()
    func didFinishSavePost()
    
}

class CreateFeedsViewModel{
    
    var delegate:CreateFeedsViewModelDelegate?
    var uploadResponse:UploadResponse?
    var playerPositions:[PlayerPositions]?

    func uploadImage(image:UIImage){
        Utility.showProgress()
        AuthAPI().uploadImage(image: image) { response in
            self.uploadResponse = response
        } failed: { _ in
            
        }
    }
    
    func getPlayerPositions(){
        Utility.showProgress()
        AuthAPI().getPlayerPositions { positions in
            self.playerPositions = positions
            self.delegate?.didFinishFetchPositions()
        } failed: { _ in
            
        }
    }
    
    func savePost(param:[String:Any]){
        Utility.showProgress()
        FeedsAPI().createFeeds(param: param) { response in
            Utility.showSuccessSnackViewWithCompletion(message: response?.message ?? "", iconName: "") {
                self.delegate?.didFinishSavePost()
            }
        } failed: { msg in
            Utility.showErrorSnackView(message: msg)
        }
    }

}
