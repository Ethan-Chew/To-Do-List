//
//  ViewController.swift
//  To Do List
//
//  Created by Ethan Chew on 13/10/20.
//

import UIKit

class ViewController: UIViewController {

    // Variables
    var userIsNew = false
    var username = ""
    
    let userDefaults = UserDefaults.standard
    
    // New User View
    @IBOutlet weak var newUserView: UIView!
    @IBOutlet weak var configField: UIView!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var beginBtn: UIButton!
    
    // Main View
    @IBOutlet weak var UIBGCurved: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var toDoLabel: UILabel!
    @IBOutlet weak var toDoDueDateLabel: UILabel!
    @IBOutlet weak var toDoView: UIView!
    @IBOutlet weak var toDoDescription: UITextView!
    @IBOutlet weak var toDoListBtn: UIButton!
    @IBOutlet weak var studyModeBtn: UIButton!
    @IBOutlet weak var settingsBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set Curved Corners
        newUserView.clipsToBounds = true
        newUserView.layer.cornerRadius = 15
        beginBtn.clipsToBounds = true
        beginBtn.layer.cornerRadius = 15
        UIBGCurved.clipsToBounds = true
        UIBGCurved.layer.cornerRadius = 15
        toDoView.clipsToBounds = true
        toDoView.layer.cornerRadius = 15
        toDoListBtn.clipsToBounds = true
        toDoListBtn.layer.cornerRadius = 15
        studyModeBtn.clipsToBounds = true
        studyModeBtn.layer.cornerRadius = 15
        settingsBtn.clipsToBounds = true
        settingsBtn.layer.cornerRadius = 15
    }

    @IBAction func beginBtn(_ sender: Any) {
        username = nameField.text ?? ""
        
        if (username == "") {
            userDefaults.set(username, forKey: "Username")
            newUserView.isHidden = true
        } else {
            newUserView.isHidden = true
        }
    }
    
}

