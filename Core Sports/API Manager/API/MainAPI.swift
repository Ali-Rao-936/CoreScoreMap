//
//  MainAPI.swift
//  FunSports
//
//  Created by Remya on 4/27/23.
//

import Foundation
import SwiftyJSON

class MainAPI:WebService{
    
    func getHome(param:[String:Any],completion:@escaping (FeedsResponse?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.home.rawValue
        get(url: url, params: param, completion: { json in
            let response = FeedsResponse(json!)
            completion(response)
        }, failed: failed)
    }
    
    func getTeams(param:[String:Any],completion:@escaping ([Team]?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.teamsList.rawValue
        get(url: url, params: param, completion: { json in
            let response = json!.arrayValue.map{Team($0)}
            completion(response)
        }, failed: failed)
    }
    
    func getMatches(param:[String:Any],completion:@escaping ([Matches]?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.matchesList.rawValue
        get(url: url, params: param, completion: { json in
            let response = json!.arrayValue.map{Matches($0)}
            completion(response)
        }, failed: failed)
    }
    
    func getPlayers(completion:@escaping ([PlayerList]?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.playersList.rawValue
        get(url: url, params: [:], completion: { json in
            let response = json!.arrayValue.map{PlayerList($0)}
            completion(response)
        }, failed: failed)
    }
   
}
