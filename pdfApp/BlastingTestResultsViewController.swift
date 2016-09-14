//
//  BlastingTestResultsViewController.swift
//  Blast One
//
//  Created by Dustin Allen on 8/25/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class BlastingTestResultsViewController: UIViewController {
    
    @IBOutlet var test1: UIButton!
    @IBOutlet var test2: UIButton!
    @IBOutlet var test3: UIButton!
    @IBOutlet var test4: UIButton!
    @IBOutlet var test5: UIButton!
    @IBOutlet var test6: UIButton!
    @IBOutlet var save: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        test1.layer.borderWidth = 2
        test1.layer.borderColor = UIColor.blackColor().CGColor
        test2.layer.borderWidth = 2
        test2.layer.borderColor = UIColor.blackColor().CGColor
        test3.layer.borderWidth = 2
        test3.layer.borderColor = UIColor.blackColor().CGColor
        test4.layer.borderWidth = 2
        test4.layer.borderColor = UIColor.blackColor().CGColor
        test5.layer.borderWidth = 2
        test5.layer.borderColor = UIColor.blackColor().CGColor
        test6.layer.borderWidth = 2
        test6.layer.borderColor = UIColor.blackColor().CGColor
        save.layer.borderWidth = 2
        save.layer.borderColor = UIColor.blackColor().CGColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func test1Button(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("Test1ViewController") as! Test1ViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func test2Button(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("Test2ViewController") as! Test2ViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func test3Button(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("Test3ViewController") as! Test3ViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func test4Button(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("Test4ViewController") as! Test4ViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func test5Button(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("Test5ViewController") as! Test5ViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func test6Button(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("Test6ViewController") as! Test6ViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("MainScreenViewController") as! MainScreenViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
}
