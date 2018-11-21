//
//  GroupViewController.swift
//  GrpApp
//
//  Created by Asli Dogrusoz on 11/20/18.
//  Copyright © 2018 Asli Dogrusoz. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD
import ChameleonFramework

class GroupViewController: UIViewController {

    var group = Group()
    var expense = Expense()
    
    let db = Firestore.firestore()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Add a new document with a generated ID
        
        print("I AM AT GVC")
        
//        let settings = db.settings
//        settings.areTimestampsInSnapshotsEnabled = true
//        db.settings = settings
//
//        let timestamp: Timestamp = documentSnapshot.get("created_at") as! Timestamp
//        let date: Date = timestamp.dateValue()
//
//
//        var ref: DocumentReference? = nil
//
//
//        ref = db.collection("group").addDocument(data: [
//            "groupID": "Mary",
//            "owner": "Lace",
//            "categories": ["food","supplies"],
//            "currencies": ["TL","EUR"]
//        ]) { err in
//            if let err = err {
//                print("Error adding document: \(err)")
//            } else {
//                print("Document added with ID: \(ref!.documentID)")
//            }
//        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
