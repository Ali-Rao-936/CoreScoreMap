//
//  PlayersViewModel.swift
//  FunSports
//
//  Created by Remya on 5/6/23.
//

import Foundation

protocol PlayersViewModelDelegate{
    func didFinishFetchPlayers()
}

class PlayersViewModel{
    var players:[PlayerList]?
    var delegate:PlayersViewModelDelegate?
    
    func getPlayersList(){
        Utility.showProgress()
        MainAPI().getPlayers { response in
            self.players = response
            self.delegate?.didFinishFetchPlayers()
            
        } failed: { _ in
            
        }

        
    }
    
    
}
