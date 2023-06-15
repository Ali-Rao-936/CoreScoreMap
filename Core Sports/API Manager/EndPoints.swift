

import UIKit

enum EndPoints: String ,CaseIterable {
    case register = "auth/signup"
    case login = "auth/login"
    case forgotPassword = "auth/forget-password"
    case playerPostions = "player/positions"
    case home = "home/data"
    case teamsList = "team/list"
    case matchesList = "match/list"
    case match = "match"
    case uploadImage = "resource/img/upload"
    case updateProfile = "user/info"
    case playersList = "player/list"
    case team = "team"
    case feeds = "event"
    case players = "player"
    case eventRequest = "event/request"
    case feedsList = "event/list"
    case account = "user/account"
    
}
