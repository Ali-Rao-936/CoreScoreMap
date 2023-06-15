//
//  SignupViewController.swift
//  Core Sports
//
//  Created by Qoo on 15/06/2023.
//

import UIKit
import IQKeyboardManagerSwift
import FlagPhoneNumber

class SignupViewController: UIViewController {
    
    
    @IBOutlet var txtDescription: IQTextView!
    @IBOutlet var lblright: UILabel!
    @IBOutlet var lblLeft: UILabel!
    @IBOutlet var txtSeason: UITextField!
    @IBOutlet var txtHeight: UITextField!
    @IBOutlet var txtWeight: UITextField!
    @IBOutlet var txtDOB: UITextField!
    @IBOutlet var lblPosition: UITextField!
    @IBOutlet var lblLocation: UITextField!
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var txtEmail: UITextField!
    @IBOutlet var txtPhoneNumber: FPNTextField!
    @IBOutlet var txtLastName: UITextField!
    @IBOutlet var txtFirstName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblLocation.setOnClickListener {
            self.openVC(storyBoard: "LoginStoryboard", identifier: "MapViewController")
        }
    }
    

    @IBAction func btnSignUp(_ sender: Any) {
    }
    

}

