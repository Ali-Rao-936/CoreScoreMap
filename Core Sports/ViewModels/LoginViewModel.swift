//
//  LoginViewModel.swift
//  FunSports
//
//  Created by Remya on 4/27/23.
//

import Foundation

protocol LoginViewModelDelegate{
    func didFinishLogin()
    
}

class LoginViewModel{
    var delegate:LoginViewModelDelegate?
    
    func callLoginAPI(param:[String:Any]){
        Utility.showProgress()
        AuthAPI().loginAPI(param: param) { user in
            if user != nil{
                AppPreferences.setUserData(obj: user!)
                AppPreferences.setUserToken(tokenString: user!.token ?? "")
            }
            self.delegate?.didFinishLogin()
            
        } failed: { msg in
            Utility.showErrorSnackView(message: msg)
        }

    }
    
}
