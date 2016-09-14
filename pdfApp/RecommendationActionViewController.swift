//
//  RecommendationActionViewController.swift
//  Blast One
//
//  Created by Dustin Allen on 8/25/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class RecommendationActionViewController: UIViewController {
    
    @IBOutlet var recommendations: UITextField!
    @IBOutlet var blasterSkills: UITextField!
    @IBOutlet var action: UIButton!
    @IBOutlet var save: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recommendations.layer.borderWidth = 2
        recommendations.layer.borderColor = UIColor.blackColor().CGColor
        blasterSkills.layer.borderWidth = 2
        blasterSkills.layer.borderColor = UIColor.blackColor().CGColor
        action.layer.borderWidth = 2
        action.layer.borderColor = UIColor.blackColor().CGColor
        save.layer.borderWidth = 2
        save.layer.borderColor = UIColor.blackColor().CGColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("ActionItemsViewController") as! ActionItemsViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        
        if self.recommendations.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Recommendations", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if self.blasterSkills.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Skills", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        actionRecommendations = self.recommendations.text!
        actionBlastSkills = self.blasterSkills.text!
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("MainScreenViewController") as! MainScreenViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
}
