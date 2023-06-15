//
//  PlayerPositions.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on April 26, 2023
//
import Foundation
import SwiftyJSON

struct PlayerPositions {

	let code: String?
	let name: String?
    let name_cn: String?
    var count = 0

	init(_ json: JSON) {
		code = json["code"].stringValue
		name = json["name"].stringValue
        name_cn = json["name_cn"].stringValue
	}

}
