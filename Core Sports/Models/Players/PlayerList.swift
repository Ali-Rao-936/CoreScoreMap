//
//  PlayerList.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on May 06, 2023
//
import Foundation
import SwiftyJSON

struct PlayerList {

	let id: Int?
	let userId: Int?
	let createdAt: String?
	let updatedAt: String?
	let dominateFoot: String?
	let weight: Int?
	let height: Int?
	let position: String?
	let yearActive: Int?
	let firstName: String?
	let lastName: String?
	let birthdate: String?
	let locationLong: Double?
	let locationLat: Double?
	let creatorUserId: Int?
	let description: String?
	let address: String?
	let positionName: String?
    let position_name_cn: String?
	let imgUrl: String?
    var selected = false

	init(_ json: JSON) {
		id = json["id"].intValue
		userId = json["user_id"].intValue
		createdAt = json["created_at"].stringValue
		updatedAt = json["updated_at"].stringValue
		dominateFoot = json["dominate_foot"].stringValue
		weight = json["weight"].intValue
		height = json["height"].intValue
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
		positionName = json["position_name"].stringValue
        position_name_cn = json["position_name_cn"].stringValue
		imgUrl = json["img_url"].stringValue
	}

}
