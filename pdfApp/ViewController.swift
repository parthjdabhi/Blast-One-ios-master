//
//  ViewController.swift
//  pdfApp
//
//  Created by Dustin Allen on 8/24/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func createReportButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("Screen2ViewController") as! Screen2ViewController!
        self.navigationController?.pushViewController(next, animated: true)
        
//        let next = self.storyboard?.instantiateViewControllerWithIdentifier("PreviewViewController") as! PreviewViewController!
//        self.navigationController?.pushViewController(next, animated: true)
        
    }
}

