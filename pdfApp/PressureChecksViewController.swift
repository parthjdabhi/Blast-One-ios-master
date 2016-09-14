//
//  PressureChecksViewController.swift
//  Blast One
//
//  Created by Dustin Allen on 8/25/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class PressureChecksViewController: UIViewController {
    
    @IBOutlet var field1: UITextField!
    @IBOutlet var field2: UITextField!
    @IBOutlet var field3: UITextField!
    @IBOutlet var field4: UITextField!
    @IBOutlet var field5: UITextField!
    @IBOutlet var field6: UITextField!
    @IBOutlet var field7: UITextField!
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
        save.layer.borderWidth = 2
        save.layer.borderColor = UIColor.blackColor().CGColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveButton(sender: AnyObject) {
        
        if self.field1.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Pressure", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.field2.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Pressure", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.field3.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Pressure", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.field4.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Pressure", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.field5.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Pressure", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.field6.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Pressure", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        pressureCheck1 = self.field1.text!
        pressureCheck2 = self.field2.text!
        pressureCheck3 = self.field3.text!
        pressureCheck4 = self.field4.text!
        pressureCheck5 = self.field5.text!
        pressureCheck6 = self.field6.text!
        pressureCheck7 = self.field7.text!
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("MainScreenViewController") as! MainScreenViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
 
}
