//
//  Creator.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on May 11, 2023
//
import Foundation
import SwiftyJSON

struct Creator {

	let id: Int?
	let firstName: String?
	let lastName: String?
	let email: String?
	let phoneNumber: String?
	let birthdate: String?
	let type: String?
	let locationLong: Double?
	let locationLat: Double?
	let address: String?
	let createdAt: String?
	let updatedAt: String?
	let imgUrl: String?
    let player: Player?

	init(_ json: JSON) {
		id = json["id"].intValue
		firstName = json["first_name"].stringValue
		lastName = json["last_name"].stringValue
		email = json["email"].stringValue
		phoneNumber = json["phone_number"].stringValue
		birthdate = json["birthdate"].stringValue
		type = json["type"].stringValue
		locationLong = json["location_long"].doubleValue
		locationLat = json["location_lat"].doubleValue
		address = json["address"].stringValue
		createdAt = json["created_at"].stringValue
		updatedAt = json["updated_at"].stringValue
		imgUrl = json["img_url"].stringValue
        player = Player(json["player"])
	}

}
