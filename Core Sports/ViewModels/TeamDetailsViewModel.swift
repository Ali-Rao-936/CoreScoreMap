//
//  TeamDetailsViewModel.swift
//  FunSports
//
//  Created by Remya on 5/10/23.
//

import Foundation

protocol TeamDetailsViewModelDelegate{
    func didFinishFetchTeamDetails()
}

class TeamDetailsViewModel{
    var delegate:TeamDetailsViewModelDelegate?
    var teamDetails:TeamDetailsResponse?
    
    func getTeamDetails(id:Int){
        TeamsAPI().getTeamDetails(id: id) { response in
            self.teamDetails = response
            self.delegate?.didFinishFetchTeamDetails()
            
        } failed: { _ in
            
        }

        
    }
    
}
