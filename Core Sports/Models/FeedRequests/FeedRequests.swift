//
//  FeedRequests.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on May 22, 2023
//
import Foundation
import SwiftyJSON

struct FeedRequests {

	let id: Int?
	let creatorUserId: Int?
	let eventId: Int?
	let createdAt: String?
	let updatedAt: String?
	let teamId: Int?
	let isAccepted: Bool?
	let creator: Creator?
	let team: Team?

	init(_ json: JSON) {
		id = json["id"].intValue
		creatorUserId = json["creator_user_id"].intValue
		eventId = json["event_id"].intValue
		createdAt = json["created_at"].stringValue
		updatedAt = json["updated_at"].stringValue
        teamId = json["team_id"].intValue
        isAccepted = json["is_accepted"].boolValue
		creator = Creator(json["creator"])
		team = Team(json["team"])
	}

}
