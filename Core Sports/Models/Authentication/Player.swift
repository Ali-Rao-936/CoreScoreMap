//
//  Player.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on May 01, 2023
//
import Foundation
import SwiftyJSON

struct Player {

	let id: Int?
	let userId: Int?
	let createdAt: String?
	let updatedAt: String?
	let dominateFoot: String?
	let weight: String?
	let height: String?
	let position: String?
	let yearActive: Int?
	let firstName: String?
	let lastName: String?
	let birthdate: String?
	let locationLong: Double?
	let locationLat: Double?
	let creatorUserId: Int?
	let description: String?
    let description_cn:String?
	let address: String?
	let playerImgUrl: String?
    let position_name: String?
    let position_name_cn: String?

	init(_ json: JSON) {
		id = json["id"].intValue
		userId = json["user_id"].intValue
		createdAt = json["created_at"].stringValue
		updatedAt = json["updated_at"].stringValue
		dominateFoot = json["dominate_foot"].stringValue
		weight = json["weight"].stringValue
		height = json["height"].stringValue
		position = json["position"].stringValue
		yearActive = json["year_active"].intValue
		firstName = json["first_name"].stringValue
		lastName = json["last_name"].stringValue
		birthdate = json["birthdate"].stringValue
		locationLong = json["location_long"].doubleValue
		locationLat = json["location_lat"].doubleValue
		creatorUserId = json["creator_user_id"].intValue
		description = json["description"].stringValue
		address = json["address"].stringValue
        playerImgUrl = json["img_url"].stringValue
        position_name = json["position_name"].stringValue
        description_cn = json["description_cn"].stringValue
        position_name_cn = json["position_name_cn"].stringValue
	}
    
    func toDictionary()->[String:Any]{
        return ["id":id ?? 0,
                    "user_id":userId ?? 0,
                    "created_at":createdAt ?? "",
                    "updated_at":updatedAt ?? "",
                    "dominate_foot":dominateFoot ?? "",
                    "weight":weight ?? "",
                    "height":height ?? "",
                    "position":position ?? "",
                    "year_active":yearActive ?? "",
                    "first_name":firstName ?? "",
                    "last_name":lastName ?? "",
                    "birthdate":birthdate ?? "",
                    "location_long":locationLong ?? "",
                    "location_lat":locationLat ?? "",
                    "creator_user_id":creatorUserId ?? 0,
                    "description":description ?? "",
                "description_cn":description_cn ?? "",
                    "address":address ?? "",
                    "img_url":playerImgUrl ?? "",
                "position_name":position_name ?? "",
                "position_name_cn":position_name_cn ?? ""]
    }

}
