//
//  BlastingEquipmentViewController.swift
//  Blast One
//
//  Created by Dustin Allen on 8/25/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit
import Photos
import BSImagePicker

class BlastingEquipmentViewController: UIViewController {
    
    @IBOutlet var commentsField: UITextField!
    @IBOutlet var airField: UITextField!
    @IBOutlet var deadmanField: UITextField!
    @IBOutlet var restrictingField: UITextField!
    @IBOutlet var moistureField: UITextField!
    @IBOutlet var chokeField: UITextField!
    @IBOutlet var pusherlineField: UITextField!
    @IBOutlet var inletField: UITextField!
    @IBOutlet var meteringField: UITextField!
    @IBOutlet var brandField: UITextField!
    @IBOutlet var blastPotSize: UITextField!
    @IBOutlet var blast: UILabel!
    @IBOutlet var brand: UILabel!
    @IBOutlet var metering: UILabel!
    @IBOutlet var inlet: UILabel!
    @IBOutlet var pusherline: UILabel!
    @IBOutlet var choke: UILabel!
    @IBOutlet var moisture: UILabel!
    @IBOutlet var restricting: UILabel!
    @IBOutlet var deadman: UILabel!
    @IBOutlet var air: UILabel!
    @IBOutlet var comments: UILabel!
    @IBOutlet var photo: UIButton!
    @IBOutlet var save: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blastPotSize.layer.borderWidth = 2
        blastPotSize.layer.borderColor = UIColor.blackColor().CGColor
        brandField.layer.borderWidth = 2
        brandField.layer.borderColor = UIColor.blackColor().CGColor
        meteringField.layer.borderWidth = 2
        meteringField.layer.borderColor = UIColor.blackColor().CGColor
        inletField.layer.borderWidth = 2
        inletField.layer.borderColor = UIColor.blackColor().CGColor
        pusherlineField.layer.borderWidth = 2
        pusherlineField.layer.borderColor = UIColor.blackColor().CGColor
        chokeField.layer.borderWidth = 2
        chokeField.layer.borderColor = UIColor.blackColor().CGColor
        moistureField.layer.borderWidth = 2
        moistureField.layer.borderColor = UIColor.blackColor().CGColor
        restrictingField.layer.borderWidth = 2
        restrictingField.layer.borderColor = UIColor.blackColor().CGColor
        deadmanField.layer.borderWidth = 2
        deadmanField.layer.borderColor = UIColor.blackColor().CGColor
        airField.layer.borderWidth = 2
        airField.layer.borderColor = UIColor.blackColor().CGColor
        commentsField.layer.borderWidth = 2
        commentsField.layer.borderColor = UIColor.blackColor().CGColor
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
        
        BEqu_Pictures = []
        
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
                        BEqu_Pictures?.append(thumbnail)
                    })
                }
            }, completion: nil)
    }

    @IBAction func saveButton(sender: AnyObject) {
        
        if self.brand.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Brand", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.blast.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Blast", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if self.choke.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Choke", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.air.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Air", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if self.metering.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Metering", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.deadman.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter Any Deadman", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if self.restricting.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Restricting", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if self.moisture.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Moisture", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.pusherline.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Pusherline", preferredStyle: .Alert)
            
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
        
        blastingBlast = self.blast.text!
        blastingBrand = self.brand.text!
        blastingChoke = self.choke.text!
        blastingAir = self.air.text!
        blastingInlet = self.inlet.text!
        blastingMetering = self.metering.text!
        blastingDeadman = self.deadman.text!
        blastingRestricting = self.restricting.text!
        blastingMoisture = self.moisture.text!
        blastingPusherline = self.pusherline.text!
        blastingComments = self.comments.text!
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("EquipmentObservationViewController") as! EquipmentObservationsViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
}
