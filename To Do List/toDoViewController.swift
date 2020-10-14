//
//  toDoViewController.swift
//  To Do List
//
//  Created by Ethan Chew on 14/10/20.
//

import UIKit

class toDoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Variables
    var data:[String:[String]] = [:]
    
    
    let userDefaults = UserDefaults.standard
    
    var dateFormatter: DateFormatter {
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            return formatter
        }
    
    // UI Elements
    @IBOutlet weak var UIBGCurved: UILabel!
    @IBOutlet weak var addTaskBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addTaskSaveBtn: UIButton!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var taskDescriptionField: UITextField!
    @IBOutlet weak var taskNameField: UITextField!
    @IBOutlet weak var addTaskMainView: UIView!
    @IBOutlet weak var addTaskSubView: UIView!
    @IBOutlet weak var statusLabel: UILabel!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get User Defaults
        data = userDefaults.object(forKey: "To-Do Data") as! [String:[String]]
        
        // Config Corner Radius
        addTaskBtn.clipsToBounds = true
        addTaskBtn.layer.cornerRadius = 15
        UIBGCurved.clipsToBounds = true
        UIBGCurved.layer.cornerRadius = 15
        
        // Config Table View
        tableView.dataSource = self
        tableView.delegate = self
        
        // Config Date Picker
        datePicker.datePickerMode = .dateAndTime
        datePicker.preferredDatePickerStyle = .inline
        datePicker = UIDatePicker()
        datePicker?.date = Date()
        datePicker?.locale = .current
    }
    
    @IBAction func saveBtn(_ sender: Any) {
        
        var taskName = ""
        var taskDescription = ""
        
        if (taskNameField.text != "") {
            taskName = taskNameField.text!
        }
        
        if (taskDescriptionField.text != "") {
            taskDescription = taskDescriptionField.text!
        }
        
        guard let picker = datePicker else { return }

        if (taskNameField.text == "" || taskDescriptionField.text == "") {
            statusLabel.text = "Task did not save as one or more fields are empty."
        } else {
            let index = data.count + 1
            
            data["Data \(index)"] = [taskName, taskDescription]
        }
        
    }
    @IBAction func addTaskBtn(_ sender: Any) {
        
    }
}
