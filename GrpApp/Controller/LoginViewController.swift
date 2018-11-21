//
//  LoginViewController.swift
//  GrpApp
//
//  Created by Asli Dogrusoz on 11/20/18.
//  Copyright © 2018 Asli Dogrusoz. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD
import ChameleonFramework

class LoginViewController: UIViewController {

    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    //MARK: - Login user
    
    @IBAction func loginPressed(_ sender: Any) {
        
        SVProgressHUD.show()
        
        //TODO: Log in the user
        
        
        Auth.auth().signIn(withEmail: username.text!, password: password.text!) {(user, error) in
            if error != nil {
                print("Login error detected: \(error!)")
            }
            else {
                print("Login successful!")
                
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "goToGroup", sender: self)
            }
        }
    }
    
    
    
        
        
    }
    
        

    

