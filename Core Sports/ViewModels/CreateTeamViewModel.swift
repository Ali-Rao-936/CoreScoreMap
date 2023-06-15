//
//  CreateTeamViewModel.swift
//  FunSports
//
//  Created by Remya on 5/10/23.
//

import Foundation
import UIKit


protocol CreateTeamViewModelDelegate{
    func didFinishCreateTeam()
    
}

class CreateTeamViewModel{
    var delegate:CreateTeamViewModelDelegate?
    var uploadResponse:UploadResponse?
    
    func callCreateTeam(param:[String:Any]){
        Utility.showProgress()
        TeamsAPI().createTeam(param: param) { respopnse in
            Utility.showSuccessSnackViewWithCompletion(message: respopnse?.message ?? "", iconName: "") {
                self.delegate?.didFinishCreateTeam()
            }
            
        } failed: { msg in
            Utility.showErrorSnackView(message: msg)
        }
    }
    
    
    func uploadImage(image:UIImage){
        Utility.showProgress()
        AuthAPI().uploadImage(image: image) { response in
            self.uploadResponse = response
        } failed: { _ in
            
        }
    }
    
}
