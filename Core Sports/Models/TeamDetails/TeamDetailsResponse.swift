//
//  TeamDetailsResponse.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on May 10, 2023
//
import Foundation
import SwiftyJSON

struct TeamDetailsResponse {

	let id: Int?
	let name: String?
    let name_cn: String?
	let logoImgId: Int?
	let locationLong: Double?
	let locationLat: Double?
	let address: String?
	let creatorUserId: Int?
	let createdAt: String?
	let updatedAt: String?
	let matches: TeamMatches?
	let logoImgUrl: String?
    let description: String?
    let description_cn: String?
    let creator:Creator?
    let players:[Player]?

	init(_ json: JSON) {
		id = json["id"].intValue
		name = json["name"].stringValue
        name_cn = json["name_cn"].stringValue
		logoImgId = json["logo_img_id"].intValue
		locationLong = json["location_long"].doubleValue
		locationLat = json["location_lat"].doubleValue
		address = json["address"].stringValue
		creatorUserId = json["creator_user_id"].intValue
		createdAt = json["created_at"].stringValue
		updatedAt = json["updated_at"].stringValue
		matches = TeamMatches(json["matches"])
		logoImgUrl = json["logo_img_url"].stringValue
        description = json["description"].stringValue
        description_cn = json["description_cn"].stringValue
        creator = Creator(json["creator"])
        players = json["players"].arrayValue.map{Player($0)}
	}

}
