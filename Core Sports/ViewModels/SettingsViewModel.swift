//
//  SettingsViewModel.swift
//  FunSports
//
//  Created by Remya on 5/19/23.
//

import Foundation
import UIKit

public enum MenuItem: String {
    
    case privacyPolicy = "Privacy Policy"
    case shareApp = "Share App"
    case feedback = "Feedback"
    case rateUS = "Rate us"
    case none = ""
    case deleteAccount = "Delete Account"
    case signOut = "Sign out"
    
    var image: UIImage {
        switch self {
        case .privacyPolicy:
            return UIImage(named: "privacy")!
        case .shareApp:
            return UIImage(named: "share")!
        case .feedback:
            return UIImage(named: "feedback")!
        case .rateUS:
            return UIImage(named: "rate")!
        case .none:
            return UIImage()
        case .deleteAccount:
            return UIImage(named: "trash2")!
        case .signOut:
            return UIImage(named: "logout")!
        }
    }
}



class SettingsViewModel{
    var menus:[MenuItem] = [.privacyPolicy,.shareApp,.feedback,.rateUS,.none,.deleteAccount,.signOut]
    var languages = ["English","中国人"]
    var headers = ["Languages".localized,"Others".localized]
    
    func deleteAccountAPI(){
        Utility.showProgress()
        AuthAPI().deleteAccount { response in
            Utility.showSuccessSnackViewWithCompletion(message: response?.message ?? "", iconName: "") {
                AppPreferences.clearUserData()
                Utility.gotoHome()
                
            }
        } failed: { msg in
            Utility.showErrorSnackView(message: msg)
        }

        
    }
    
}
