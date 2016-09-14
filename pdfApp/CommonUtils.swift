//
//  CommonUtils.swift
//  Blast One
//
//  Created by iParth on 8/27/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit
import AVFoundation
import Foundation
import Photos
import UIImageViewModeScaleAspect
import UIKit

class CommonUtils: NSObject {

}


func getAssetUrl(mPhasset : PHAsset, completionHandler : ((responseURL : NSURL?) -> Void)){
    
    if mPhasset.mediaType == .Image {
        let options: PHContentEditingInputRequestOptions = PHContentEditingInputRequestOptions()
        options.canHandleAdjustmentData = {(adjustmeta: PHAdjustmentData) -> Bool in
            return true
        }
        mPhasset.requestContentEditingInputWithOptions(options, completionHandler: {(contentEditingInput: PHContentEditingInput?, info: [NSObject : AnyObject]) -> Void in
            completionHandler(responseURL : contentEditingInput!.fullSizeImageURL)
        })
    } else if mPhasset.mediaType == .Video {
        let options: PHVideoRequestOptions = PHVideoRequestOptions()
        options.version = .Original
        PHImageManager.defaultManager().requestAVAssetForVideo(mPhasset, options: options, resultHandler: {(asset: AVAsset?, audioMix: AVAudioMix?, info: [NSObject : AnyObject]?) -> Void in
            
            if let urlAsset = asset as? AVURLAsset {
                let localVideoUrl : NSURL = urlAsset.URL
                completionHandler(responseURL : localVideoUrl)
            } else {
                completionHandler(responseURL : nil)
            }
        })
    }
    
}

func getAssetThumbnail(asset: PHAsset, completionHandler : ((thumbnail : UIImage) -> Void))  {
    let manager = PHImageManager.defaultManager()
    let option = PHImageRequestOptions()
    //var thumbnail = UIImage()
    option.synchronous = true
    manager.requestImageForAsset(asset, targetSize: CGSize(width: 100.0, height: 100.0), contentMode: .AspectFit, options: option, resultHandler: {(result, info)->Void in
        if result != nil {
            completionHandler(thumbnail: result!)
        }
        
    })
}