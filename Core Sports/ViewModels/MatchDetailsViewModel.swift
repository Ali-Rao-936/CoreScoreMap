//
//  MatchDetailsViewModel.swift
//  FunSports
//
//  Created by Remya on 5/12/23.
//

import Foundation

protocol MatchDetailsViewModelDelegate{
    func didFinishFetch()
    
}

class MatchDetailsViewModel{
    var delegate:MatchDetailsViewModelDelegate?
    var matchDetails:MatchDetailsResponse?
    
    func getMatchDetails(id:Int){
        Utility.showProgress()
        MatchesAPI().getMatchDetails(id: id) { response in
            self.matchDetails = response
            self.delegate?.didFinishFetch()
            
        } failed: { _ in
            
        }
   
    }
    
}
