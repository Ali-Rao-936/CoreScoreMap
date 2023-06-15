//
//  Team.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on April 28, 2023
//
import Foundation
import SwiftyJSON

struct Team{

	let id: Int?
	let name: String?
    let address: String?
	let locationLong: Double?
	let locationLat: Double?
	let createdAt: String?
	let logoImgUrl: String?
    let description: String?
    let name_cn:String?
    let description_cn:String?

	init(_ json: JSON) {
		id = json["id"].intValue
		name = json["name"].stringValue
		locationLong = json["location_long"].doubleValue
		locationLat = json["location_lat"].doubleValue
		createdAt = json["created_at"].stringValue
		logoImgUrl = json["logo_img_url"].stringValue
        address = json["address"].stringValue
        description = json["description"].stringValue
        name_cn = json["name_cn"].stringValue
        description_cn = json["description_cn"].stringValue
        
	}
}
