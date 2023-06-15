//
//  FeedsAPI.swift
//  FunSports
//
//  Created by Remya on 5/17/23.
//

import Foundation
import SwiftyJSON

class FeedsAPI:WebService{
    func createFeeds(param:[String:Any],completion:@escaping (GeneralResponse?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.feeds.rawValue
        post(url: url, params: param, completion: { json in
            let response = GeneralResponse(json!)
            completion(response)
        }, failed: failed)
    }
    
    func getPlayerDetails(id:Int,completion:@escaping (User?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.players.rawValue + "/\(id)" + "/details"
        get(url: url, params: [:], completion: { json in
            let response = User(json!)
            completion(response)
        }, failed: failed)
    }
    
    func sendEventRequest(param:[String:Any],completion:@escaping (GeneralResponse?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.eventRequest.rawValue
        post(url: url, params: param, completion: { json in
            let response = GeneralResponse(json!)
            completion(response)
        }, failed: failed)
    }
    
    func getEvents(param:[String:Any],completion:@escaping ([Events]?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.feedsList.rawValue
        get(url: url, params: param, completion: { json in
            let response = json?.arrayValue.map{Events($0)}
            completion(response)
        }, failed: failed)
    }
    
    func getEventRequests(eventID:Int,completion:@escaping ([FeedRequests]?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.feeds.rawValue + "/\(eventID)" +  "/request/list"
        get(url: url, params: [:], completion: { json in
            let response = json?.arrayValue.map{FeedRequests($0)}
            completion(response)
        }, failed: failed)
    }
    
    func acceptEventRequests(eventRequestID:Int,completion:@escaping (GeneralResponse?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.eventRequest.rawValue + "/\(eventRequestID)" +  "/accept"
        post(url: url, params: [:], completion: { json in
            let response = GeneralResponse(json!)
            completion(response)
        }, failed: failed)
    }
   
}
