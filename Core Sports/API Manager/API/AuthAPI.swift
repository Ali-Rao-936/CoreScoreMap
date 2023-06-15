//
//  AuthAPI.swift
//  FunSports
//
//  Created by Remya on 4/25/23.
//

import Foundation
import SwiftyJSON

class AuthAPI:WebService{
    
    func registerUser(param:[String:Any],completion:@escaping (User?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.register.rawValue
        post(url: url, params: param, completion: { json in
            let response = User(json!)
            completion(response)
        }, failed: failed)
    }
    
    func loginAPI(param:[String:Any],completion:@escaping (User?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.login.rawValue
        post(url: url, params: param, completion: { json in
            let response = User(json!)
            completion(response)
        }, failed: failed)
    }
    
  
    func getPlayerPositions(completion:@escaping ([PlayerPositions]?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.playerPostions.rawValue
        get(url: url, params: [:], completion: { json in
            let response = json?.arrayValue.map{PlayerPositions($0)}
            completion(response)
        }, failed: failed)
    }
    
    func uploadImage(image:UIImage,completion:@escaping (UploadResponse?) -> Void, failed: @escaping (String) -> Void){
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.uploadImage.rawValue
        let file = UploadFile()
        file.fileName = "\(Utility.getCurrentTimeStamp()).jpeg"
        file.imageKey = "img"
        file.mimeType = "image/jpeg"
        file.data = image.jpegData(compressionQuality: 0.5)!
        uploadFilePost(url: url, params: [:], files: [file], completion: { json in
            let response = UploadResponse(json!)
            completion(response)
        }, failed: failed)
    }
    
    func updateProfile(param:[String:Any],completion:@escaping (User?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.updateProfile.rawValue
        put(url: url, params: param, completion: { json in
            let response = User(json!)
            completion(response)
        }, failed: failed)
    }
    
    func deleteAccount(completion:@escaping (GeneralResponse?) -> Void, failed: @escaping (String) -> Void){
        
        let url = BaseUrl.getBaseUrl(apiType: .OTHER) + EndPoints.account.rawValue
        delete(url: url, params: [:], completion: { json in
            let response = GeneralResponse(json!)
            completion(response)
        }, failed: failed)
    }
}
