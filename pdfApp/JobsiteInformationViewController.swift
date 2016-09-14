//
//  JobsiteInformationViewController.swift
//  Blast One
//
//  Created by Dustin Allen on 8/25/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit
import BSImagePicker
import Photos

class JobsiteInformationViewController: UIViewController {
    
    @IBOutlet var viewBox: UIView!
    @IBOutlet var weather: UITextField!
    @IBOutlet var access: UITextField!
    @IBOutlet var hazards: UITextField!
    @IBOutlet var photo: UIButton!
    @IBOutlet var save: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewBox.layer.borderWidth = 2
        viewBox.layer.borderColor = UIColor.blackColor().CGColor
        weather.layer.borderWidth = 2
        weather.layer.borderColor = UIColor.blackColor().CGColor
        access.layer.borderWidth = 2
        access.layer.borderColor = UIColor.blackColor().CGColor
        hazards.layer.borderWidth = 2
        hazards.layer.borderColor = UIColor.blackColor().CGColor
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
        vc.maxNumberOfSelections = 3
        
        vc.takePhotoIcon = UIImage(named: "ic_camera")
        vc.takePhotos = true;
        
        jobSitePicturesURL = []
        jobSitePictures = []
        
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
                    getAssetUrl(asset, completionHandler: { (responseURL) in
                        print(responseURL)
                        if let url = responseURL {
                                jobSitePicturesURL?.append(url)
                        }
                    })
                    getAssetThumbnail(asset, completionHandler: { (thumbnail) in
                        jobSitePictures?.append(thumbnail)
                    })
                    
                }
            }, completion: nil)
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        
        if self.weather.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Weather", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.access.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Access Info", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.hazards.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter Any Hazards", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        weatherInfo = self.weather.text!
        hazardsInfo = self.hazards.text!
        accessInfo = self.access.text!
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("MainScreenViewController") as! MainScreenViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
}