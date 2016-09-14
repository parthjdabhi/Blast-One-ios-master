//
//  ActionItemsViewController.swift
//  Blast One
//
//  Created by Dustin Allen on 8/25/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class ActionItemsViewController: UIViewController {
    
    @IBOutlet var field1: UITextField!
    @IBOutlet var field2: UITextField!
    @IBOutlet var field3: UITextField!
    @IBOutlet var field4: UITextField!
    @IBOutlet var field5: UITextField!
    @IBOutlet var field6: UITextField!
    @IBOutlet var field7: UITextField!
    @IBOutlet var field8: UITextField!
    @IBOutlet var field9: UITextField!
    @IBOutlet var field10: UITextField!
    @IBOutlet var save: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        field1.layer.borderWidth = 2
        field1.layer.borderColor = UIColor.blackColor().CGColor
        field2.layer.borderWidth = 2
        field2.layer.borderColor = UIColor.blackColor().CGColor
        field3.layer.borderWidth = 2
        field3.layer.borderColor = UIColor.blackColor().CGColor
        field4.layer.borderWidth = 2
        field4.layer.borderColor = UIColor.blackColor().CGColor
        field5.layer.borderWidth = 2
        field5.layer.borderColor = UIColor.blackColor().CGColor
        field6.layer.borderWidth = 2
        field6.layer.borderColor = UIColor.blackColor().CGColor
        field7.layer.borderWidth = 2
        field7.layer.borderColor = UIColor.blackColor().CGColor
        field8.layer.borderWidth = 2
        field8.layer.borderColor = UIColor.blackColor().CGColor
        field9.layer.borderWidth = 2
        field9.layer.borderColor = UIColor.blackColor().CGColor
        field10.layer.borderWidth = 2
        field10.layer.borderColor = UIColor.blackColor().CGColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        
        actionList1 = self.field1.text!
        actionList2 = self.field2.text!
        actionList3 = self.field3.text!
        actionList4 = self.field4.text!
        actionList5 = self.field5.text!
        actionList6 = self.field6.text!
        actionList7 = self.field7.text!
        actionList8 = self.field8.text!
        actionList9 = self.field9.text!
        actionList10 = self.field10.text!
        
        self.navigationController?.popViewControllerAnimated(true)
    }

}
