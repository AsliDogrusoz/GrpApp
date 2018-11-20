//
//  ViewController.swift
//  GrpApp
//
//  Created by Asli Dogrusoz on 11/19/18.
//  Copyright © 2018 Asli Dogrusoz. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD
import ChameleonFramework

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func newUserButtonPressed(_ sender: UIButton) {
        
     performSegue(withIdentifier: "goToRegister", sender: self)
    }
    
    
    @IBAction func existingUserButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToLogin", sender: self)
    }
    
}

