//
//  LoginViewController.swift
//  Core Sports
//
//  Created by Qoo on 15/06/2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var etEmail: UITextField!
    @IBOutlet var etPassword: UITextField!
    @IBOutlet var registerLable: UILabel!
    @IBOutlet var imgEye: UIImageView!
    
    //MARK: - Variables
    var viewModel = LoginViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        viewModel.delegate = self
        
        registerLable.setOnClickListener {
            self.openVC(storyBoard: "LoginStoryboard", identifier: "SignupViewController")
        }
        
        imgEye.setOnClickListener {
            if self.etPassword.isSecureTextEntry{
                self.imgEye.image = UIImage(systemName: "eye.slash.fill")
                self.etPassword.isSecureTextEntry = false
            }else{
                self.imgEye.image = UIImage(systemName: "eye.fill")
                self.etPassword.isSecureTextEntry = true
            }
        }
    }
    

    @IBAction func btnLogin(_ sender: Any) {
        
        if etEmail.text == ""{
            Utility.showErrorSnackView(message: "Please enter email".localized)
            return
        }
        
        if etPassword.text == ""{
            Utility.showErrorSnackView(message: "Please enter password".localized)
            return
            
        }
        
        let param = ["email":etEmail.text ?? "",
                     "password":etPassword.text ?? ""]
        
        viewModel.callLoginAPI(param: param)
    }
    

}

extension LoginViewController:LoginViewModelDelegate{
    func didFinishLogin() {
        Utility.gotoHome()
    }
    
    
}
