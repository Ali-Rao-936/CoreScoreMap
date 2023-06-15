//
//  TeamMatches.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on May 10, 2023
//
import Foundation
import SwiftyJSON

struct TeamMatches {

	let past: [MatchesResponse]?
	let today: [MatchesResponse]?
	let scheduled: [MatchesResponse]?

	init(_ json: JSON) {
		past = json["past"].arrayValue.map { MatchesResponse($0) }
        today = json["today"].arrayValue.map { MatchesResponse($0) }
        scheduled = json["scheduled"].arrayValue.map { MatchesResponse($0) }
	}

}
