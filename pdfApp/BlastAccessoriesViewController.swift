//
//  BlastAccessoriesViewController.swift
//  Blast One
//
//  Created by Dustin Allen on 8/25/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit
import Photos
import BSImagePicker

class BlastAccessoriesViewController: UIViewController {
    

    @IBOutlet var commentsField: UITextField!
    @IBOutlet var deadmanField: UITextField!
    @IBOutlet var blastField: UITextField!
    @IBOutlet var whiphoseField: UITextField!
    @IBOutlet var extensionField: UITextField!
    @IBOutlet var extensionHose: UILabel!
    @IBOutlet var whiphose: UILabel!
    @IBOutlet var blast: UILabel!
    @IBOutlet var deadman: UILabel!
    @IBOutlet var comments: UILabel!
    @IBOutlet var photo: UIButton!
    @IBOutlet var save: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        extensionField.layer.borderWidth = 2
        extensionField.layer.borderColor = UIColor.blackColor().CGColor
        whiphoseField.layer.borderWidth = 2
        whiphoseField.layer.borderColor = UIColor.blackColor().CGColor
        blastField.layer.borderWidth = 2
        blastField.layer.borderColor = UIColor.blackColor().CGColor
        deadmanField.layer.borderWidth = 2
        deadmanField.layer.borderColor = UIColor.blackColor().CGColor
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
        vc.takePhotos = true
        
        BAce_Pictures = []
        
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
                        BAce_Pictures?.append(thumbnail)
                    })
                }
            }, completion: nil)
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        
        if self.extensionHose.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Extension Hose", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.whiphose.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Whiphose", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if self.blast.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Blast", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.deadman.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Deadman", preferredStyle: .Alert)
            
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
        
        accessoriesExtension = self.extensionHose.text!
        accessoriesWhipHose = self.whiphose.text!
        accessoriesBlast = self.blast.text!
        accessoriesDeadman = self.deadman.text!
        accessoriesComments = self.comments.text!
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("EquipmentObservationViewController") as! EquipmentObservationsViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }

}
