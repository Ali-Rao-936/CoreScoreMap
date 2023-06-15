//
//  Matches.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on April 27, 2023
//
import Foundation
import SwiftyJSON

struct Matches {

	let id: Int?
	let homeTeamId: Int?
	let awayTeamId: Int?
	let locationLong: Double?
	let locationLat: Double?
	let address: String?
	let scheduleTime: String?
	let startTime: Any?
	let status: String?
	let creatorUserId: Int?
	let createdAt: String?
	let updatedAt: String?
	let homeTeam: Team?
	let awayTeam: Team?

	init(_ json: JSON) {
		id = json["id"].intValue
		homeTeamId = json["home_team_id"].intValue
		awayTeamId = json["away_team_id"].intValue
		locationLong = json["location_long"].doubleValue
		locationLat = json["location_lat"].doubleValue
		address = json["address"].stringValue
		scheduleTime = json["schedule_time"].stringValue
		startTime = json["start_time"]
		status = json["status"].stringValue
		creatorUserId = json["creator_user_id"].intValue
		createdAt = json["created_at"].stringValue
		updatedAt = json["updated_at"].stringValue
		homeTeam = Team(json["home_team"])
		awayTeam = Team(json["away_team"])
	}

}
