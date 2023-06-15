//
//  ProfileViewModel.swift
//  FunSports
//
//  Created by Remya on 5/18/23.
//

import Foundation

protocol ProfileViewModelDelegate{
    func didFinishFetchProfile()
}

class ProfileViewModel{
    var delegate:ProfileViewModelDelegate?
    var player:User?
    
    func getPlayerProfile(id:Int){
        Utility.showProgress()
        FeedsAPI().getPlayerDetails(id: id) { response in
            self.player = response
            self.delegate?.didFinishFetchProfile()
            
        } failed: { _ in
            
        }

    }
    
}
