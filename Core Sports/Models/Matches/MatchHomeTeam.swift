//
//  HomeTeam.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on April 28, 2023
//
import Foundation
import SwiftyJSON

struct MatchHomeTeam {

	let id: Int?
	let name: String?
	let logoImgId: Int?
	let locationLong: Double?
	let locationLat: Double?
	let creatorUserId: Int?
	let createdAt: String?
	let updatedAt: String?
	let address: String?
	let logoImgUrl: String?

	init(_ json: JSON) {
		id = json["id"].intValue
		name = json["name"].stringValue
		logoImgId = json["logo_img_id"].intValue
		locationLong = json["location_long"].doubleValue
		locationLat = json["location_lat"].doubleValue
		creatorUserId = json["creator_user_id"].intValue
		createdAt = json["created_at"].stringValue
		updatedAt = json["updated_at"].stringValue
		address = json["address"].stringValue
		logoImgUrl = json["logo_img_url"].stringValue
	}

}
