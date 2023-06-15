//
//  UploadResponse.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on May 02, 2023
//
import Foundation
import SwiftyJSON

struct UploadResponse {

	let path: String?

	init(_ json: JSON) {
		path = json["path"].stringValue
	}

}