//
//  CustomerInformationViewController.swift
//  Blast One
//
//  Created by Dustin Allen on 8/24/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class CustomerInformationViewController: UIViewController {

    @IBOutlet var consultantName: UITextField!
    @IBOutlet var salesRep: UITextField!
    @IBOutlet var customerName: UITextField!
    @IBOutlet var customerContacts: UITextField!
    @IBOutlet var date: UITextField!
    @IBOutlet var projectName: UITextField!
    @IBOutlet var address: UITextField!
    @IBOutlet var timeArrive: UITextField!
    @IBOutlet var timeDepart: UITextField!
    @IBOutlet var save: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let paddingView = UIView(frame:CGRectMake(0, 0, 30, 30))
        consultantName.leftView = paddingView;
        consultantName.leftViewMode = UITextFieldViewMode.Always
        consultantName.layer.borderWidth = 2
        consultantName.layer.borderColor = UIColor.blackColor().CGColor
        let paddingView1 = UIView(frame:CGRectMake(0, 0, 30, 30))
        salesRep.leftView = paddingView1;
        salesRep.leftViewMode = UITextFieldViewMode.Always
        salesRep.layer.borderWidth = 2
        salesRep.layer.borderColor = UIColor.blackColor().CGColor
        let paddingView2 = UIView(frame:CGRectMake(0, 0, 30, 30))
        customerName.leftView = paddingView2;
        customerName.leftViewMode = UITextFieldViewMode.Always
        customerName.layer.borderWidth = 2
        customerName.layer.borderColor = UIColor.blackColor().CGColor
        let paddingView3 = UIView(frame:CGRectMake(0, 0, 30, 30))
        customerContacts.leftView = paddingView3;
        customerContacts.leftViewMode = UITextFieldViewMode.Always
        customerContacts.layer.borderWidth = 2
        customerContacts.layer.borderColor = UIColor.blackColor().CGColor
        let paddingView4 = UIView(frame:CGRectMake(0, 0, 30, 30))
        date.leftView = paddingView4;
        date.leftViewMode = UITextFieldViewMode.Always
        date.layer.borderWidth = 2
        date.layer.borderColor = UIColor.blackColor().CGColor
        let paddingView5 = UIView(frame:CGRectMake(0, 0, 30, 30))
        projectName.leftView = paddingView5;
        projectName.leftViewMode = UITextFieldViewMode.Always
        projectName.layer.borderWidth = 2
        projectName.layer.borderColor = UIColor.blackColor().CGColor
        let paddingView6 = UIView(frame:CGRectMake(0, 0, 30, 30))
        address.leftView = paddingView6;
        address.leftViewMode = UITextFieldViewMode.Always
        address.layer.borderWidth = 2
        address.layer.borderColor = UIColor.blackColor().CGColor
        let paddingView7 = UIView(frame:CGRectMake(0, 0, 30, 30))
        timeArrive.leftView = paddingView7;
        timeArrive.leftViewMode = UITextFieldViewMode.Always
        timeArrive.layer.borderWidth = 2
        timeArrive.layer.borderColor = UIColor.blackColor().CGColor
        let paddingView8 = UIView(frame:CGRectMake(0, 0, 30, 30))
        timeDepart.leftView = paddingView8;
        timeDepart.leftViewMode = UITextFieldViewMode.Always
        timeDepart.layer.borderWidth = 2
        timeDepart.layer.borderColor = UIColor.blackColor().CGColor
        save.layer.borderWidth = 2
        save.layer.borderColor = UIColor.blackColor().CGColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        
        if self.consultantName.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Consultant", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.salesRep.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Representative", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.customerName.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Customer", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.customerContacts.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter A Contact", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.date.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Date", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.projectName.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Project", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.address.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Address", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.timeArrive.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Time Arrived", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.timeDepart.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Time Departed", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        nameOfConsultant = self.consultantName.text!
        nameOfSalesRep = self.salesRep.text!
        nameOfCustomer = self.customerName.text!
        theCustomerContact = self.customerContacts.text!
        theProjectName = self.projectName.text!
        theDate = self.date.text!
        theAddress = self.address.text!
        theTimeArrived = self.timeArrive.text!
        theTimeDeparted = self.timeDepart.text!
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("MainScreenViewController") as! MainScreenViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
}
