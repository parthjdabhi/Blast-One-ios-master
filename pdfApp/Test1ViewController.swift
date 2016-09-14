//
//  Test1ViewController.swift
//  Blast One
//
//  Created by Dustin Allen on 8/25/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit
import BSImagePicker
import Photos

class Test1ViewController: UIViewController {
    
    @IBOutlet var areaBlasted: UITextField!
    @IBOutlet var abrasiveUsed: UITextField!
    @IBOutlet var timeBlasted: UITextField!
    @IBOutlet var blastProduction: UITextField!
    @IBOutlet var abrasiveConsumption: UITextField!
    @IBOutlet var profileAchieved: UITextField!
    @IBOutlet var comments: UITextField!
    @IBOutlet var photo: UIButton!
    @IBOutlet var save: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        areaBlasted.layer.borderWidth = 2
        areaBlasted.layer.borderColor = UIColor.blackColor().CGColor
        abrasiveUsed.layer.borderWidth = 2
        abrasiveUsed.layer.borderColor = UIColor.blackColor().CGColor
        timeBlasted.layer.borderWidth = 2
        timeBlasted.layer.borderColor = UIColor.blackColor().CGColor
        blastProduction.layer.borderWidth = 2
        blastProduction.layer.borderColor = UIColor.blackColor().CGColor
        abrasiveConsumption.layer.borderWidth = 2
        abrasiveConsumption.layer.borderColor = UIColor.blackColor().CGColor
        profileAchieved.layer.borderWidth = 2
        profileAchieved.layer.borderColor = UIColor.blackColor().CGColor
        comments.layer.borderWidth = 2
        comments.layer.borderColor = UIColor.blackColor().CGColor
        photo.layer.borderWidth = 2
        photo.layer.borderColor = UIColor.blackColor().CGColor
        save.layer.borderWidth = 2
        save.layer.borderColor = UIColor.blackColor().CGColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func photoButton(sender: AnyObject) {
        
        let vc = BSImagePickerViewController()
        vc.maxNumberOfSelections = 1
        
        vc.takePhotoIcon = UIImage(named: "ic_camera")
        vc.takePhotos = true;
        
        BT1_Pictures = []
        
        bs_presentImagePickerController(vc, animated: true,
                                        select: { (asset: PHAsset) -> Void in
                                            print("Selected: \(asset)")
            }, deselect: { (asset: PHAsset) -> Void in
                print("Deselected: \(asset)")
            }, cancel: { (assets: [PHAsset]) -> Void in
                print("Cancel: \(assets)")
            }, finish: { (assets: [PHAsset]) -> Void in
                print("Finish: \(assets)")
                for asset in assets {
                    getAssetThumbnail(asset, completionHandler: { (thumbnail) in
                        BT1_Pictures?.append(thumbnail)
                    })
                }
            }, completion: nil)
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        
        if self.areaBlasted.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Area Blasted", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.abrasiveUsed.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Abrasive Used", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.timeBlasted.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Time Blasted", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if self.blastProduction.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Blast Production", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.profileAchieved.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Profile Achieved", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        theAreaBlasted1 = self.areaBlasted.text!
        theAbrasiveUsed1 = self.abrasiveUsed.text!
        theTimeBlast1 = self.timeBlasted.text!
        theBlastProduction1 = self.blastProduction.text!
        theAbrasiveConsumption1 = self.abrasiveConsumption.text!
        theProfileAchieved1 = self.profileAchieved.text!
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("BlastingTestResultsViewController") as! BlastingTestResultsViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }

}
