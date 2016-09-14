//
//  BlastingAbrasiveViewController.swift
//  Blast One
//
//  Created by Dustin Allen on 8/25/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit
import Photos
import BSImagePicker

class BlastingAbrasiveViewController: UIViewController {
    
    @IBOutlet var commentsField: UITextField!
    @IBOutlet var requirementsField: UITextField!
    @IBOutlet var onSiteField: UITextField!
    @IBOutlet var storageField: UITextField!
    @IBOutlet var gradeField: UITextField!
    @IBOutlet var typeField: UITextField!
    @IBOutlet var type: UILabel!
    @IBOutlet var grade: UILabel!
    @IBOutlet var storage: UILabel!
    @IBOutlet var onSite: UILabel!
    @IBOutlet var requirements: UILabel!
    @IBOutlet var comments: UILabel!
    @IBOutlet var photo: UIButton!
    @IBOutlet var save: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        typeField.layer.borderWidth = 2
        typeField.layer.borderColor = UIColor.blackColor().CGColor
        gradeField.layer.borderWidth = 2
        gradeField.layer.borderColor = UIColor.blackColor().CGColor
        storageField.layer.borderWidth = 2
        storageField.layer.borderColor = UIColor.blackColor().CGColor
        onSiteField.layer.borderWidth = 2
        onSiteField.layer.borderColor = UIColor.blackColor().CGColor
        requirementsField.layer.borderWidth = 2
        requirementsField.layer.borderColor = UIColor.blackColor().CGColor
        commentsField.layer.borderWidth = 2
        commentsField.layer.borderColor = UIColor.blackColor().CGColor
        save.layer.borderWidth = 2
        save.layer.borderColor = UIColor.blackColor().CGColor
        photo.layer.borderWidth = 2
        photo.layer.borderColor = UIColor.blackColor().CGColor
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
        
        BAbr_Pictures = []
        
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
                        BAbr_Pictures?.append(thumbnail)
                    })
                }
            }, completion: nil)
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        
        if self.type.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Type", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.grade.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Grade", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if self.storage.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Storage", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.onSite.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter If It's Onsite", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if self.comments.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter Any Comments", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        abrasiveType = self.type.text!
        abrasiveGrade = self.grade.text!
        abrasiveStorage = self.storage.text!
        abrasiveOnsite = self.onSite.text!
        abrasiveRequirements = self.requirements.text!
        abrasiveComments = self.comments.text!
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("EquipmentObservationViewController") as! EquipmentObservationsViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }

}
