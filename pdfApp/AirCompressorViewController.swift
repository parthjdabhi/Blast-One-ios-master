//
//  AirCompressorViewController.swift
//  
//
//  Created by Dustin Allen on 8/25/16.
//
//

import UIKit
import Photos
import BSImagePicker

class AirCompressorViewController: UIViewController {
    
    @IBOutlet var brandField: UITextField!
    @IBOutlet var sizeField: UITextField!
    @IBOutlet var pressurePSI: UITextField!
    @IBOutlet var yes: UIButton!
    @IBOutlet var no: UIButton!
    @IBOutlet var commentsField: UITextField!
    @IBOutlet var photo: UIButton!
    @IBOutlet var save: UIButton!
    
    var hasCoolerOptions = ["yes", "no"]
    var optionsAnswer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        brandField.layer.borderWidth = 2
        brandField.layer.borderColor = UIColor.blackColor().CGColor
        sizeField.layer.borderWidth = 2
        sizeField.layer.borderColor = UIColor.blackColor().CGColor
        pressurePSI.layer.borderWidth = 2
        pressurePSI.layer.borderColor = UIColor.blackColor().CGColor
        yes.layer.borderWidth = 2
        yes.layer.borderColor = UIColor.blackColor().CGColor
        no.layer.borderWidth = 2
        no.layer.borderColor = UIColor.blackColor().CGColor
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
    
    @IBAction func yesButton(sender: AnyObject) {
        
        let answer = hasCoolerOptions[0]
        optionsAnswer = answer
        print(answer)
    }
    
    @IBAction func noButton(sender: AnyObject) {
        
        let answer = hasCoolerOptions[1]
        optionsAnswer = answer
        print(answer)
    }
    
    @IBAction func photoButton(sender: AnyObject) {
        
        let vc = BSImagePickerViewController()
        vc.maxNumberOfSelections = 1
        
        vc.takePhotoIcon = UIImage(named: "ic_camera")
        vc.takePhotos = true;
        
        Airc_Pictures = []
        
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
                        Airc_Pictures?.append(thumbnail)
                    })
                }
            }, completion: nil)
    }

    @IBAction func saveButton(sender: AnyObject) {
        
        if self.brandField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Brand", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.sizeField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Size", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if self.pressurePSI.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Pressure", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.optionsAnswer == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Choose Yes or No", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.commentsField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter Any Comments", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        airCompressorBrand = self.brandField.text!
        airCompressorSize = self.sizeField.text!
        airCompressorPressure = self.pressurePSI.text!
        airCompressorOptions = self.optionsAnswer
        airDryerComments = self.commentsField.text!
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("EquipmentObservationViewController") as! EquipmentObservationsViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
}
