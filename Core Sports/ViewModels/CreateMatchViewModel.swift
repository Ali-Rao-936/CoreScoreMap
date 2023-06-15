//
//  CreateMatchViewModel.swift
//  FunSports
//
//  Created by Remya on 5/12/23.
//

import Foundation

protocol CreateMatchViewModelDelegate{
    func didFinishCreateMatch()
}

class CreateMatchViewModel{
    var delegate:CreateMatchViewModelDelegate?
    
    func createMatch(param:[String:Any]){
        Utility.showProgress()
        MatchesAPI().createMatch(param: param) { response in
            Utility.showSuccessSnackViewWithCompletion(message: response?.message ?? "", iconName: "") {
                self.delegate?.didFinishCreateMatch()
            }
            
        } failed: { msg in
            Utility.showErrorSnackView(message: msg)
        }

        
    }
    
}
