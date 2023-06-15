//
//  TeamsAPI.swift
//  FunSports
//
//  Created by Remya on 5/9/23.
//

import Foundation
import SwiftyJSON

class TeamsAPI:WebService{
    
    func createTeam(param:[String:Any],completion:@escaping (GeneralResponse?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.team.rawValue
        post(url: url, params: param, completion: { json in
            let response = GeneralResponse(json!)
            completion(response)
        }, failed: failed)
    }
    
    
    func getTeamDetails(id:Int,completion:@escaping (TeamDetailsResponse?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.team.rawValue + "/\(id)/details"
        get(url: url, params: [:], completion: { json in
            let response = TeamDetailsResponse(json!)
            completion(response)
        }, failed: failed)
    }
    
}
