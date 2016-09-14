//
//  MainScreenViewController.swift
//  Blast One
//
//  Created by Dustin Allen on 8/24/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

// Newly added variables For saving input values
var jobSitePicturesURL:Array<NSURL>?
var jobSitePictures:Array<UIImage>?

var Airc_Pictures:Array<UIImage>?
var BHose_Pictures:Array<UIImage>?
var AirD_Pictures:Array<UIImage>?
var BEqu_Pictures:Array<UIImage>?
var BAce_Pictures:Array<UIImage>?

var BAbr_Pictures:Array<UIImage>?
var Pcheck_Pictures:Array<UIImage>?

var BT1_Pictures:Array<UIImage>?
var BT2_Pictures:Array<UIImage>?
var BT3_Pictures:Array<UIImage>?
var BT4_Pictures:Array<UIImage>?
var BT5_Pictures:Array<UIImage>?
var BT6_Pictures:Array<UIImage>?

// Old Variables
var introAnswer1:String?
var introAnswer2:String?
var pressureCheck1:String?
var pressureCheck2:String?
var pressureCheck3:String?
var pressureCheck4:String?
var pressureCheck5:String?
var pressureCheck6:String?
var pressureCheck7:String?

var nameOfConsultant:String?
var nameOfSalesRep:String?
var nameOfCustomer:String?
var theCustomerContact:String?
var theDate:String?
var theProjectName:String?
var theAddress:String?
var theTimeArrived:String?
var theTimeDeparted:String?

var actionRecommendations:String?
var actionBlastSkills:String?

var actionList1:String?
var actionList2:String?
var actionList3:String?
var actionList4:String?
var actionList5:String?
var actionList6:String?
var actionList7:String?
var actionList8:String?
var actionList9:String?
var actionList10:String?

var weatherInfo:String?
var hazardsInfo:String?
var accessInfo:String?

var theAreaBlasted1:String?
var theAbrasiveUsed1:String?
var theTimeBlast1:String?
var theBlastProduction1:String?
var theAbrasiveConsumption1:String?
var theProfileAchieved1:String?
var theComments1:String?

var theAreaBlasted2:String?
var theAbrasiveUsed2:String?
var theTimeBlast2:String?
var theBlastProduction2:String?
var theAbrasiveConsumption2:String?
var theProfileAchieved2:String?
var theComments2:String?

var theAreaBlasted3:String?
var theAbrasiveUsed3:String?
var theTimeBlast3:String?
var theBlastProduction3:String?
var theAbrasiveConsumption3:String?
var theProfileAchieved3:String?
var theComments3:String?

var theAreaBlasted4:String?
var theAbrasiveUsed4:String?
var theTimeBlast4:String?
var theBlastProduction4:String?
var theAbrasiveConsumption4:String?
var theProfileAchieved4:String?
var theComments4:String?

var theAreaBlasted5:String?
var theAbrasiveUsed5:String?
var theTimeBlast5:String?
var theBlastProduction5:String?
var theAbrasiveConsumption5:String?
var theProfileAchieved5:String?
var theComments5:String?

var theAreaBlasted6:String?
var theAbrasiveUsed6:String?
var theTimeBlast6:String?
var theBlastProduction6:String?
var theAbrasiveConsumption6:String?
var theProfileAchieved6:String?
var theComments6:String?

var airDryerBrand:String?
var airDryerSize:String?
var airDryerPressure:String?
var airDryerComments:String?

var airCompressorBrand:String?
var airCompressorSize:String?
var airCompressorPressure:String?
var airCompressorOptions:String?
var airCompressorComments:String?

var blastingBlast:String?
var blastingBrand:String?
var blastingMetering:String?
var blastingInlet:String?
var blastingPusherline:String?
var blastingChoke:String?
var blastingMoisture:String?
var blastingRestricting:String?
var blastingDeadman:String?
var blastingAir:String?
var blastingComments:String?

var accessoriesExtension:String?
var accessoriesWhipHose:String?
var accessoriesBlast:String?
var accessoriesDeadman:String?
var accessoriesComments:String?

var abrasiveType:String?
var abrasiveGrade:String?
var abrasiveStorage:String?
var abrasiveOnsite:String?
var abrasiveRequirements:String?
var abrasiveComments:String?

var bullSize:String?
var bullPressure:String?
var bullFitting:String?
var bullComments:String?

class MainScreenViewController: UIViewController {
    
    @IBOutlet var customerInformation: UIButton!
    @IBOutlet var jobsiteInformation: UIButton!
    @IBOutlet var equipment: UIButton!
    @IBOutlet var pressureTests: UIButton!
    @IBOutlet var equipmentTests: UIButton!
    @IBOutlet var actionItems: UIButton!
    @IBOutlet var save: UIButton!
    //@IBOutlet var email: UIButton!
    @IBOutlet var btnMyReport: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customerInformation.layer.borderWidth = 2
        customerInformation.layer.borderColor = UIColor.blackColor().CGColor
        jobsiteInformation.layer.borderWidth = 2
        jobsiteInformation.layer.borderColor = UIColor.blackColor().CGColor
        equipment.layer.borderWidth = 2
        equipment.layer.borderColor = UIColor.blackColor().CGColor
        pressureTests.layer.borderWidth = 2
        pressureTests.layer.borderColor = UIColor.blackColor().CGColor
        equipmentTests.layer.borderWidth = 2
        equipmentTests.layer.borderColor = UIColor.blackColor().CGColor
        actionItems.layer.borderWidth = 2
        actionItems.layer.borderColor = UIColor.blackColor().CGColor
        save.layer.borderWidth = 2
        save.layer.borderColor = UIColor.blackColor().CGColor
        btnMyReport.layer.borderWidth = 2
        btnMyReport.layer.borderColor = UIColor.blackColor().CGColor
        
    }
    
    
//    override func shouldAutorotate() -> Bool {
//        if (UIDevice.currentDevice().orientation == UIDeviceOrientation.LandscapeLeft ||
//            UIDevice.currentDevice().orientation == UIDeviceOrientation.LandscapeRight ||
//            UIDevice.currentDevice().orientation == UIDeviceOrientation.Unknown) {
//            return false
//        }
//        else {
//            return true
//        }
//    }
    
//    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
//        return [UIInterfaceOrientationMask.LandscapeLeft ,UIInterfaceOrientationMask.LandscapeRight]
//    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        printAllValues()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func customerInformationButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("CustomerInformationViewController") as! CustomerInformationViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func jobsiteInformationButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("JobsiteInformationViewController") as! JobsiteInformationViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func equipmentButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("EquipmentObservationViewController") as! EquipmentObservationsViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func pressureTestsButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("PressureChecksViewController") as! PressureChecksViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func equipmentTestsButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("BlastingTestResultsViewController") as! BlastingTestResultsViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func actionItemsButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("RecommendationActionViewController") as! RecommendationActionViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func resetButton(sender: AnyObject) {
        resetAllValues()
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("Screen2ViewController") as! Screen2ViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        
        //Can validate necessory information before generating report
//                if nameOfConsultant == nil {
//                    //Show alert message for validation for this attribute
//                   return
//                }
        
        //For Rendering PDF with 2nd Method (FROM UIVIEW)
        generatePDF()
    
        //For Rendering PDG with 1st Method (From HTML)
        //let next = self.storyboard?.instantiateViewControllerWithIdentifier("PreviewViewController") as! PreviewViewController!
        //self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func emailButton(sender: AnyObject) {
//        var url:NSURL?
//        if let url = self.url {
//            if let contentView = self.contentView {
//                print(url)
//                contentView.loadRequest(NSURLRequest(URL: url))
//            }
//        }
//        let objectsToShare: Array<AnyObject> = [NSData(contentsOfURL: url!)!]
//        let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
//        self.presentViewController(activityVC, animated: true, completion: nil)
    }
    
    func generatePDF()
    {
        var pages:Array<UIView> = []
        
        // Load Views with NibName
        let page1 = NSBundle.mainBundle().loadNibNamed("PageOneView", owner: self, options: nil).last as! PageOneView
        let page2 = NSBundle.mainBundle().loadNibNamed("PageTwoView", owner: self, options: nil).last as! PageTwoView
        let page3 = NSBundle.mainBundle().loadNibNamed("PageThreeView", owner: self, options: nil).last as! PageThreeView
        let page4 = NSBundle.mainBundle().loadNibNamed("PageFourthView", owner: self, options: nil).last as! PageFourthView
        let page5 = NSBundle.mainBundle().loadNibNamed("PageFifthView", owner: self, options: nil).last as! PageFifthView
        let page6 = NSBundle.mainBundle().loadNibNamed("PageSixView", owner: self, options: nil).last as! PageSixView
        
        // Fill Views With Data
        page1.setupViewContent()
        page2.setupViewContent()
        page3.setupViewContent()
        page4.setupViewContent()
        page5.setupViewContent()
        page6.setupViewContent()
        
        // Generate PDF from pages Array
        pages.appendContentsOf([page1, page2, page3, page4, page5, page6])
        let tempFilePath = SwiftPDFGenerator.generatePDFWithPages(pages)
        let pdfLoc = NSURL(fileURLWithPath: tempFilePath)
        
        // present PDF
//        let newEventController = self.storyboard!.instantiateViewControllerWithIdentifier("PDFNavigationController") as! UINavigationController
//        newEventController.modalPresentationStyle = .PageSheet
//        (newEventController.childViewControllers[0] as! DisplayController).url = pdfLoc
//        self.presentViewController(next, animated: true, completion: nil)
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("DisplayController") as! DisplayController!
        next.url = pdfLoc
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func actionMyReport(sender: AnyObject) {
        //
        let fileBrowser = FileBrowser()
        self.presentViewController(fileBrowser, animated: true, completion: nil)
    }
}


func printAllValues()
{
    print("-------------------------------------------------------------------------------------------------------")
    print("introAnswer1 : \(introAnswer1)")
    print("introAnswer2 : \(introAnswer2)")
    print("pressureCheck1 : \(pressureCheck1)")
    print("pressureCheck2 : \(pressureCheck2)")
    print("pressureCheck3 : \(pressureCheck3)")
    print("pressureCheck4 : \(pressureCheck4)")
    print("pressureCheck5 : \(pressureCheck5)")
    print("pressureCheck5 : \(pressureCheck6)")
    print("pressureCheck7 : \(pressureCheck7)")
    print("----")
    
    print("nameOfConsultant : \(nameOfConsultant)")
    print("nameOfSalesRep : \(nameOfSalesRep)")
    print("nameOfCustomer : \(nameOfCustomer)")
    print("theCustomerContact : \(theCustomerContact)")
    print("theDate : \(theDate)")
    print("theProjectName : \(theProjectName)")
    print("theAddress : \(theAddress)")
    print("theTimeArrived : \(theTimeArrived)")
    print("theTimeDeparted : \(theTimeDeparted)")
    print("weatherInfo : \(weatherInfo)")
    print("accessInfo : \(accessInfo)")
    print("hazardsInfo : \(hazardsInfo)")
    print("----")
    
    print("actionRecommendations : \(actionRecommendations)")
    print("actionBlastSkills : \(actionBlastSkills)")
    print("actionList1 : \(actionList1)")
    print("actionList1 : \(actionList2)")
    print("actionList1 : \(actionList3)")
    print("actionList1 : \(actionList4)")
    print("actionList1 : \(actionList5)")
    print("actionList1 : \(actionList6)")
    print("actionList1 : \(actionList7)")
    print("actionList1 : \(actionList8)")
    print("actionList1 : \(actionList9)")
    print("actionList1 : \(actionList10)")
    print("----")
    
    print("theAreaBlasted1 : \(theAreaBlasted1)")
    print("theAbrasiveUsed1 : \(theAbrasiveUsed1)")
    print("theTimeBlast1 : \(theTimeBlast1)")
    print("theBlastProduction1 : \(theBlastProduction1)")
    print("theAbrasiveConsumption1 : \(theAbrasiveConsumption1)")
    print("theProfileAchieved1 : \(theProfileAchieved1)")
    print("theComments1 : \(theComments1)")
    print("--")
    print("theAreaBlasted1 : \(theAreaBlasted1)")
    print("theAbrasiveUsed1 : \(theAbrasiveUsed1)")
    print("theTimeBlast1 : \(theTimeBlast1)")
    print("theBlastProduction1 : \(theBlastProduction1)")
    print("theAbrasiveConsumption1 : \(theAbrasiveConsumption1)")
    print("theProfileAchieved1 : \(theProfileAchieved1)")
    print("theComments1 : \(theComments1)")
    print("--")
    print("theAreaBlasted2 : \(theAreaBlasted2)")
    print("theAbrasiveUsed2 : \(theAbrasiveUsed2)")
    print("theTimeBlast2 : \(theTimeBlast2)")
    print("theBlastProduction2 : \(theBlastProduction2)")
    print("theAbrasiveConsumption2 : \(theAbrasiveConsumption2)")
    print("theProfileAchieved2 : \(theProfileAchieved2)")
    print("theComments2 : \(theComments2)")
    print("--")
    print("theAreaBlasted4 : \(theAreaBlasted3)")
    print("theAbrasiveUsed4 : \(theAbrasiveUsed3)")
    print("theTimeBlast4 : \(theTimeBlast3)")
    print("theBlastProduction4 : \(theBlastProduction3)")
    print("theAbrasiveConsumption4 : \(theAbrasiveConsumption3)")
    print("theProfileAchieved4 : \(theProfileAchieved3)")
    print("theComments4 : \(theComments4)")
    print("--")
    print("theAreaBlasted5 : \(theAreaBlasted5)")
    print("theAbrasiveUsed5 : \(theAbrasiveUsed5)")
    print("theTimeBlast5 : \(theTimeBlast5)")
    print("theBlastProduction5 : \(theBlastProduction5)")
    print("theAbrasiveConsumption5 : \(theAbrasiveConsumption5)")
    print("theProfileAchieved5 : \(theProfileAchieved5)")
    print("theComments5 : \(theComments5)")
    print("--")
    print("theAreaBlasted6 : \(theAreaBlasted6)")
    print("theAbrasiveUsed6 : \(theAbrasiveUsed6)")
    print("theTimeBlast6 : \(theTimeBlast6)")
    print("theBlastProduction6 : \(theBlastProduction6)")
    print("theAbrasiveConsumption6 : \(theAbrasiveConsumption6)")
    print("theProfileAchieved6 : \(theProfileAchieved6)")
    print("theComments6 : \(theComments6)")
    print("----")
    
    print("airDryerBrand : \(airDryerBrand)")
    print("airDryerSize : \(airDryerSize)")
    print("airDryerPressure: \(airDryerPressure)")
    print("airDryerComments : \(airDryerComments)")
    print("----")
    
    print("airCompressorBrand : \(airCompressorBrand)")
    print("airCompressorSize : \(airCompressorSize)")
    print("airCompressorPressure : \(airCompressorPressure)")
    print("airCompressorOptions : \(airCompressorOptions)")
    print("airCompressorComments : \(airCompressorComments)")
    print("----")
    
    print("blastingBlast : \(blastingBlast)")
    print("blastingBrand : \(blastingBrand)")
    print("blastingMetering : \(blastingMetering)")
    print("blastingInlet : \(blastingInlet)")
    print("blastingPusherline : \(blastingPusherline)")
    print("blastingChoke : \(blastingChoke)")
    print("blastingMoisture : \(blastingMoisture)")
    print("blastingRestricting : \(blastingRestricting)")
    print("blastingDeadman : \(blastingDeadman)")
    print("blastingAir : \(blastingAir)")
    print("blastingComments : \(blastingComments)")
    print("----")
    
    print("accessoriesExtension : \(accessoriesExtension)")
    print("accessoriesWhipHose : \(accessoriesWhipHose)")
    print("accessoriesBlast : \(accessoriesBlast)")
    print("accessoriesDeadman : \(accessoriesDeadman)")
    print("accessoriesComments : \(accessoriesComments)")
    print("abrasiveType : \(abrasiveType)")
    print("abrasiveGrade : \(abrasiveGrade)")
    print("abrasiveOnsite : \(abrasiveOnsite)")
    print("abrasiveRequirements : \(abrasiveRequirements)")
    print("abrasiveStorage : \(abrasiveStorage)")
    print("bullSize : \(bullSize)")
    print("bullPressure : \(bullPressure)")
    print("bullFitting : \(bullFitting)")
    print("----")
    
}

func resetAllValues()
{
    //Variables Added Newly
    jobSitePicturesURL = nil
    jobSitePictures = nil
    
    Airc_Pictures = nil
    BHose_Pictures = nil
    AirD_Pictures = nil
    BEqu_Pictures = nil
    BAce_Pictures = nil
    
    BAbr_Pictures = nil
    Pcheck_Pictures = nil
    
    BT1_Pictures = nil
    BT2_Pictures = nil
    BT3_Pictures = nil
    BT4_Pictures = nil
    BT5_Pictures = nil
    BT6_Pictures = nil
    
    //Variables Before
    introAnswer1 = nil
    introAnswer2 = nil
    pressureCheck1 = nil
    pressureCheck2 = nil
    pressureCheck3 = nil
    pressureCheck4 = nil
    pressureCheck5 = nil
    pressureCheck6 = nil
    pressureCheck7 = nil
    
    nameOfConsultant = nil
    nameOfSalesRep = nil
    nameOfCustomer = nil
    theCustomerContact = nil
    theDate = nil
    theProjectName = nil
    theAddress = nil
    theTimeArrived = nil
    theTimeDeparted = nil
    actionRecommendations = nil
    actionBlastSkills = nil
    
    actionList1 = nil
    actionList2 = nil
    actionList3 = nil
    actionList4 = nil
    actionList5 = nil
    actionList6 = nil
    actionList7 = nil
    actionList8 = nil
    actionList9 = nil
    actionList10 = nil
    
    weatherInfo = nil
    hazardsInfo = nil
    accessInfo = nil
    
    theAreaBlasted1 = nil
    theAbrasiveUsed1 = nil
    theTimeBlast1 = nil
    theBlastProduction1 = nil
    theAbrasiveConsumption1 = nil
    theProfileAchieved1 = nil
    theComments1 = nil
    
    theAreaBlasted2 = nil
    theAbrasiveUsed2 = nil
    theTimeBlast2 = nil
    theBlastProduction2 = nil
    theAbrasiveConsumption2 = nil
    theProfileAchieved2 = nil
    theComments2 = nil
    
    theAreaBlasted3 = nil
    theAbrasiveUsed3 = nil
    theTimeBlast3 = nil
    theBlastProduction3 = nil
    theAbrasiveConsumption3 = nil
    theProfileAchieved3 = nil
    theComments3 = nil
    
    theAreaBlasted4 = nil
    theAbrasiveUsed4 = nil
    theTimeBlast4 = nil
    theBlastProduction4 = nil
    theAbrasiveConsumption4 = nil
    theProfileAchieved4 = nil
    theComments4 = nil
    
    theAreaBlasted5 = nil
    theAbrasiveUsed5 = nil
    theTimeBlast5 = nil
    theBlastProduction5 = nil
    theAbrasiveConsumption5 = nil
    theProfileAchieved5 = nil
    theComments5 = nil
    
    theAreaBlasted6 = nil
    theAbrasiveUsed6 = nil
    theTimeBlast6 = nil
    theBlastProduction6 = nil
    theAbrasiveConsumption6 = nil
    theProfileAchieved6 = nil
    theComments6 = nil
    
    airDryerBrand = nil
    airDryerSize = nil
    airDryerPressure = nil
    airDryerComments = nil
    
    airCompressorBrand = nil
    airCompressorSize = nil
    airCompressorPressure = nil
    airCompressorOptions = nil
    airCompressorComments = nil
    
    blastingBlast = nil
    blastingBrand = nil
    blastingMetering = nil
    blastingInlet = nil
    blastingPusherline = nil
    blastingChoke = nil
    blastingMoisture = nil
    blastingRestricting = nil
    blastingDeadman = nil
    blastingAir = nil
    blastingComments = nil
    
    accessoriesExtension = nil
    accessoriesWhipHose = nil
    accessoriesBlast = nil
    accessoriesDeadman = nil
    accessoriesComments = nil
    
    abrasiveType = nil
    abrasiveGrade = nil
    abrasiveStorage = nil
    abrasiveOnsite = nil
    abrasiveRequirements = nil
    abrasiveComments = nil
    
    bullSize = nil
    bullPressure = nil
    bullFitting = nil
    bullComments = nil
}