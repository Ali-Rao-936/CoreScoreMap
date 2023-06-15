//
//  MatchesAPI.swift
//  FunSports
//
//  Created by Remya on 5/12/23.
//

import Foundation
import SwiftyJSON

class MatchesAPI:WebService{
    func createMatch(param:[String:Any],completion:@escaping (GeneralResponse?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.match.rawValue
        post(url: url, params: param, completion: { json in
            let response = GeneralResponse(json!)
            completion(response)
        }, failed: failed)
    }
    
    func getMatchDetails(id:Int,completion:@escaping (MatchDetailsResponse?) -> Void, failed: @escaping (String) -> Void){
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.match.rawValue + "/\(id)/details"
        get(url: url, params: [:], completion: { json in
            let response = MatchDetailsResponse(json!)
            completion(response)
        }, failed: failed)
    }
    
}
