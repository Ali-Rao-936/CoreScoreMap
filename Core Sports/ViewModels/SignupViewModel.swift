//
//  SignupViewModel.swift
//  FunSports
//
//  Created by Remya on 4/25/23.
//

import Foundation

protocol SignupViewModelDlegate{
    func didFinishSignup()
    func didFinishFetchPositions()
}

class SignupViewModel{
    var delegate:SignupViewModelDlegate?
    var playerPositions:[PlayerPositions]?
    
    func callSignup(param:[String:Any]){
        Utility.showProgress()
        AuthAPI().registerUser(param: param) { user in
            if user != nil{
                AppPreferences.setUserData(obj: user!)
                AppPreferences.setUserToken(tokenString: user!.token ?? "")
            }
            self.delegate?.didFinishSignup()
        } failed: { msg in
            Utility.showErrorSnackView(message: msg)
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
    
}
