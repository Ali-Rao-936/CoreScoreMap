//
//  Events.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on April 27, 2023
//
import Foundation
import SwiftyJSON

struct Events {

	let id: Int?
	let type: String?
	let locationLong: Double?
	let locationLat: Int?
	let description: String?
    let description_cn: String?
	let creatorUserId: Int?
	let teamId: Int?
	let createdAt: String?
	let updatedAt: String?
	let imgId: Int?
	let address: String?
	let teamName: String?
    let team_name_cn: String?
	let eventImgUrl: String?
	let teamLogoUrl: String?
	let positions: [Positions]?
    let creator_name: String?
    let creator_img_url: String?
    let team_address:String?
    let schedule_time:String?
    let is_closed:Int?

	init(_ json: JSON) {
		id = json["id"].intValue
		type = json["type"].stringValue
		locationLong = json["location_long"].doubleValue
		locationLat = json["location_lat"].intValue
		description = json["description"].stringValue
		creatorUserId = json["creator_user_id"].intValue
		teamId = json["team_id"].intValue
		createdAt = json["created_at"].stringValue
		updatedAt = json["updated_at"].stringValue
		imgId = json["img_id"].intValue
		address = json["address"].stringValue
		teamName = json["team_name"].stringValue
		eventImgUrl = json["event_img_url"].stringValue
		teamLogoUrl = json["team_logo_url"].stringValue
        positions = json["positions"].arrayValue.map{Positions($0)}
        creator_name = json["creator_name"].stringValue
        creator_img_url = json["creator_img_url"].stringValue
        team_address = json["team_address"].stringValue
        schedule_time = json["schedule_time"].stringValue
        is_closed = json["is_closed"].intValue
        description_cn = json["description_cn"].stringValue
        team_name_cn = json["team_name_cn"].stringValue
        
	}

}
