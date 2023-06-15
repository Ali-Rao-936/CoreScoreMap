//
//  Positions.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on April 27, 2023
//
import Foundation
import SwiftyJSON

struct Positions {

	let position: String?
	let count: String?
    let position_name: String?
    let position_name_cn: String?

	init(_ json: JSON) {
		position = json["position"].stringValue
		count = json["count"].stringValue
        position_name = json["position_name"].stringValue
        position_name_cn = json["position_name_cn"].stringValue
	}

}
