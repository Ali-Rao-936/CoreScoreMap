//
//  FeedsResponse.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on April 27, 2023
//
import Foundation
import SwiftyJSON

struct FeedsResponse {

	let matches: [Matches]?
	let events: [Events]?

	init(_ json: JSON) {
		matches = json["matches"].arrayValue.map { Matches($0) }
		events = json["events"].arrayValue.map { Events($0) }
	}

}
