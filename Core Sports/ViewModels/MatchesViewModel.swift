//
//  MatchesViewModel.swift
//  FunSports
//
//  Created by Remya on 4/28/23.
//

import Foundation

protocol MatchesViewModelDelegate{
    func didFinishFetch()
}
class MatchesViewModel{
    var delegate:MatchesViewModelDelegate?
    var matches:[Matches]?
    var matchesOriginal:[Matches]?
    
    func getMatches(param:[String:Any]){
        self.matchesOriginal?.removeAll()
        self.matches?.removeAll()
        MainAPI().getMatches(param: param) { data in
            self.matchesOriginal = data
            self.matches = data
            self.delegate?.didFinishFetch()
        } failed: { _ in
            
        }
    }
    
    
    
}
