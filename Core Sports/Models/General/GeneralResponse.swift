//
//  GeneralResponse.swift
//  FunSports
//
//  Created by Remya on 5/10/23.
//

import Foundation
import SwiftyJSON

struct GeneralResponse{
    let message:String?
    init(_ json: JSON) {
        message = json["message"].stringValue
    }
}
