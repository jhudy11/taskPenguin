//
//  SecondViewController.swift
//  taskPenguin
//
//  Created by Joshua Hudson on 11/8/16.
//  Copyright © 2016 ParaniodPenguinProductions. All rights reserved.
//

import UIKit



class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    let factModel = FactModel()
    let myDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        motivationLabel.text = factModel.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var motivationLabel: UILabel!
    
    //Events
    @IBAction func btnAddTask_Click(sender: UIButton) {
        taskMgr.addTask(name: txtTask.text!, desc: txtDesc.text!)
        
        //Store the Data
        storeTask.addTask(name: txtTask.text!, desc: txtDesc.text!)
        
        self.view.endEditing(true)
        txtDesc.text = ""
        txtTask.text = ""
        self.tabBarController?.selectedIndex = 0
        motivationLabel.text = factModel.getRandomFact()
        
        // Adding the list to NSUserData to be stored
        /*
        myDefaults.set(txtDesc.text, forKey: "firstTaskDescription")
        myDefaults.set(txtTask, forKey: "firstTaskTask")
         */
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }


}

