//
//  EditProfileViewModel.swift
//  FunSports
//
//  Created by Remya on 5/2/23.
//

import Foundation
import UIKit

protocol EditProfileViewModelDelegate{
    func didFinishUpload()
    func didFinishFetchPositions()
    func didFinishUpdateProfile()
}
class EditProfileViewModel{
    var delegate:EditProfileViewModelDelegate?
    var uploadResponse:UploadResponse?
    var playerPositions:[PlayerPositions]?
    
    func uploadImage(image:UIImage){
        Utility.showProgress()
        AuthAPI().uploadImage(image: image) { response in
            self.uploadResponse = response
            print("uploaded to path:\(response?.path)")
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
    
    func updateProfile(param:[String:Any]){
        
        Utility.showProgress()
        AuthAPI().updateProfile(param: param) { user in
            if user?.firstName?.count ?? 0 > 0{
                AppPreferences.setUserData(obj: user!)
                self.delegate?.didFinishUpdateProfile()
            }
        } failed: { msg in
            Utility.showErrorSnackView(message: msg)
        }

    }
    
}
