//
//  TeamViewModel.swift
//  FunSports
//
//  Created by Remya on 4/28/23.
//

import Foundation

protocol TeamViewModelDelegate{
    func didFinishTeamFetch()
}

class TeamViewModel{
    var delegate:TeamViewModelDelegate?
    var teams:[Team]?
    var teams_Original:[Team]?
    func getTeams(isMyteams:Int){
        let param = ["onlyOwn":isMyteams]
        
        MainAPI().getTeams(param:param) { data in
            self.teams_Original = data
            self.teams = data
            self.delegate?.didFinishTeamFetch()
        } failed: { _ in
            
        }

    }
    
}
