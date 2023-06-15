//
//  User.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on April 25, 2023
//
import Foundation
import SwiftyJSON

struct User {

	let id: Int?
	let firstName: String?
	let lastName: String?
	let email: String?
	let phoneNumber: String?
	let birthdate: String?
	let imgId: String?
	let type: String?
	let locationLong: Double?
	let locationLat: Double?
	let emailVerifiedAt: String?
	let createdAt: String?
	let updatedAt: String?
	let token: String?
    let address:String?
    let player: Player?

	init(_ json: JSON) {
		id = json["id"].intValue
		firstName = json["first_name"].stringValue
		lastName = json["last_name"].stringValue
		email = json["email"].stringValue
		phoneNumber = json["phone_number"].stringValue
		birthdate = json["birthdate"].stringValue
        imgId = json["img_id"].stringValue
		type = json["type"].stringValue
		locationLong = json["location_long"].doubleValue
		locationLat = json["location_lat"].doubleValue
        emailVerifiedAt = json["email_verified_at"].stringValue
		createdAt = json["created_at"].stringValue
		updatedAt = json["updated_at"].stringValue
		token = json["token"].stringValue
        address = json["address"].stringValue
        player = Player(json["player"])
	}
    
    func toDictionary() -> [String:Any]{
        return  ["id":id ?? 0,
                                 "first_name":firstName ?? "",
                                 "last_name":lastName ?? "",
                                 "email":email ?? "",
                                 "phone_number":phoneNumber ?? "",
                                 "birthdate":birthdate ?? "",
                                 "img_id":imgId ?? "",
                                 "type":type ?? "",
                                 "location_long":locationLong ?? "",
                                 "location_lat":locationLat ?? "",
                                 "address":address ?? "",
                                 "email_verified_at":emailVerifiedAt ?? "",
                                 "created_at":createdAt ?? "",
                                 "updated_at":updatedAt ?? "",
                                 "token":token ?? "",
                 "player":player?.toDictionary() ?? [:]]
    }

}
