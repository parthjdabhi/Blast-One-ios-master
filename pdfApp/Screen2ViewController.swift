//
//  Screen2ViewController.swift
//  Blast One
//
//  Created by Dustin Allen on 8/24/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class Screen2ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate {
    
    @IBOutlet var picker: UITextField!
    @IBOutlet var descriptionField: UITextField!
    
    var pickerContent = ["Productivity Healthcheck", "Site Check", "Training"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pickerView = UIPickerView()
        pickerView.delegate = self
        picker.inputView = pickerView
        
        picker.layer.borderWidth = 2
        picker.layer.borderColor = UIColor.blackColor().CGColor
        descriptionField.layer.borderWidth = 2
        descriptionField.layer.borderColor = UIColor.blackColor().CGColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        picker.text = "\(pickerContent[row])"
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
            return pickerContent.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
            return String(pickerContent[row])
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {   //delegate method
        picker.resignFirstResponder()
        return true
    }

    @IBAction func pickerAction(sender: AnyObject) {
        
    }
    
    @IBAction func continueButton(sender: AnyObject) {
        
        if self.picker.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Select A Category", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.descriptionField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter A Description", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        introAnswer1 = self.picker.text!
        introAnswer2 = self.descriptionField.text!
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("MainScreenViewController") as! MainScreenViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
}
