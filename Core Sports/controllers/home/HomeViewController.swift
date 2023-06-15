//
//  HomeViewController.swift
//  Core Sports
//
//  Created by Qoo on 15/06/2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var ivSetting: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ivSetting.setOnClickListener {
            self.openVC(storyBoard: "LoginStoryboard", identifier: "LoginViewController")
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
