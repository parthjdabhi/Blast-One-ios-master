//
//  EquipmentObservationsViewController.swift
//  Blast One
//
//  Created by Dustin Allen on 8/25/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class EquipmentObservationsViewController: UIViewController {
    
    @IBOutlet var air: UIButton!
    @IBOutlet var bull: UIButton!
    @IBOutlet var dryer: UIButton!
    @IBOutlet var blastingEquipment: UIButton!
    @IBOutlet var blastingAccessories: UIButton!
    @IBOutlet var blastingAbrasive: UIButton!
    @IBOutlet var save: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        air.layer.borderWidth = 2
        air.layer.borderColor = UIColor.blackColor().CGColor
        bull.layer.borderWidth = 2
        bull.layer.borderColor = UIColor.blackColor().CGColor
        dryer.layer.borderWidth = 2
        dryer.layer.borderColor = UIColor.blackColor().CGColor
        blastingEquipment.layer.borderWidth = 2
        blastingEquipment.layer.borderColor = UIColor.blackColor().CGColor
        blastingAccessories.layer.borderWidth = 2
        blastingAccessories.layer.borderColor = UIColor.blackColor().CGColor
        blastingAbrasive.layer.borderWidth = 2
        blastingAbrasive.layer.borderColor = UIColor.blackColor().CGColor
        save.layer.borderWidth = 2
        save.layer.borderColor = UIColor.blackColor().CGColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func airButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("AirCompressorViewController") as! AirCompressorViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func bullButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("BullHoseViewController") as! BullHoseViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func dryerButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("AirDryerViewController") as! AirDryerViewController!
        self.navigationController?.pushViewController(next, animated: true)
    
    }

    @IBAction func blastingAbrasiveButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("BlastingAbrasiveViewController") as! BlastingAbrasiveViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func blastingAccessoriesButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("BlastAccessoriesViewController") as! BlastAccessoriesViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func blastingEquipmentButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("BlastingEquipmentViewController") as! BlastingEquipmentViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("MainScreenViewController") as! MainScreenViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
}
