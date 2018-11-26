//
//  RegisterViewController.swift
//  GrpApp
//
//  Created by Asli Dogrusoz on 11/20/18.
//  Copyright © 2018 Asli Dogrusoz. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD
import ChameleonFramework

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
    }
    
    //MARK: - Add New User
    
    
    
    @IBAction func registerPressed(_ sender: Any) {
        
                var msg: String = ""
        
        SVProgressHUD.show()
        
        
        //TODO: Set up a new user in Firebase database
        
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            
            if error != nil {
                print("User registration error detected: \(error!)")
                
                switch error {
                case .some(let error as NSError) where error.code == AuthErrorCode.weakPassword.rawValue:
                    msg = "weak password"
                case .some(let error as NSError) where error.code == AuthErrorCode.emailAlreadyInUse.rawValue:
                    msg = "username already in use, please login or try a different username"
                case .some(let error as NSError) where error.code == AuthErrorCode.invalidEmail.rawValue:
                    msg = "invalid email, please retry"
                case .some(let error):
                    print("Registration error: \(error.localizedDescription)")
                    msg = "registration error"
                case .none:
                    print("\(user)")
                }
                
                let alert = UIAlertController(title: "Registration error", message: msg, preferredStyle: .alert)
                
                let restartAction = UIAlertAction(title: "OK", style: .default, handler: { UIAlertAction in
                    
                    //                    show welcome view controller here
                    
                    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                    let newViewController = storyBoard.instantiateViewController(withIdentifier: "WelcomeViewController")
                    self.present(newViewController, animated: true, completion: nil)
                    
                    
                })
                
                alert.addAction(restartAction)
                
                self.present(alert, animated: true, completion: nil)
            }
            else {
                print("Registration successful!")
                
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "goToGroup", sender: self)
            }
        }
    }

}


