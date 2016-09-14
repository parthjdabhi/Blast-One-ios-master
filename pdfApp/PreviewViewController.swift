//
//  PreviewViewController.swift
//  Print2PDF
//
//  Created by Gabriel Theodoropoulos on 14/06/16.
//  Copyright © 2016 Appcoda. All rights reserved.
//

import UIKit
import MessageUI


//extension UINavigationController {
//    public override func shouldAutorotate() -> Bool {
//        if visibleViewController is PreviewViewController {
//            return true   // rotation
//        } else {
//            return false  // no rotation
//        }
//    }
//    
//    public override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
//        return (visibleViewController?.supportedInterfaceOrientations())!
//    }
//}

class PreviewViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webPreview: UIWebView!
    @IBOutlet weak var btnBack: UIButton?
    @IBOutlet weak var btnPDF: UIButton?
    
    var invoiceInfo: [String: AnyObject]!
    
    var osaComposer: OSAComposer!
    
    var HTMLContent: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //webPreview.scrollView.scoll
        // Do any additional setup after loading the view.
        
        print(" Directory : \(AppDelegate.getAppDelegate().getDocDir())")
//        let value = UIInterfaceOrientation.Portrait.rawValue
//        UIDevice.currentDevice().setValue(value, forKey: "orientation")
    }
    
//    override func shouldAutorotate() -> Bool {
//        if (UIDevice.currentDevice().orientation == UIDeviceOrientation.LandscapeLeft ||
//            UIDevice.currentDevice().orientation == UIDeviceOrientation.LandscapeRight ||
//            UIDevice.currentDevice().orientation == UIDeviceOrientation.Unknown) {
//            return true
//        }
//        else {
//            return false
//        }
//    }
//    
//    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
//        return [UIInterfaceOrientationMask.Portrait ,UIInterfaceOrientationMask.PortraitUpsideDown]
//    }
    
//    override func shouldAutorotate() -> Bool {
//        return false
//    }
//    
//    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
//        return UIInterfaceOrientationMask.Portrait
//    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        createInvoiceAsHTML()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: IBAction Methods
    
    
    @IBAction func actionGoToBack(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func exportToPDF(sender: AnyObject) {
        osaComposer.exportHTMLContentToPDF(HTMLContent)
        showOptionsAlert()
    }
    
    
    // MARK: Custom Methods
    
    func createInvoiceAsHTML() {
        osaComposer = OSAComposer()
        
        //let url = NSBundle.mainBundle().URLForResource("invoice", withExtension: "html")
        //let html = try! String(contentsOfURL: url!)
        //let base = url!.URLByDeletingLastPathComponent
        //var HTMLContent = try String(contentsOfFile: pathToInvoiceHTMLTemplate!)
        //webPreview.loadHTMLString(html, baseURL: base)
        
        if let osaHTML = osaComposer.renderInvoice() {
            
            //let html = invoiceComposer.pathToInvoiceHTMLTemplate
            //let FormUrl = NSURL(string: html ?? "")
            let base = NSBundle.mainBundle().URLForResource(OSAComposer.FileName, withExtension: OSAComposer.FileExt)!.URLByDeletingLastPathComponent
            webPreview.loadHTMLString(osaHTML, baseURL: base)
            HTMLContent = osaHTML
            
        }
    }
    
    func showOptionsAlert()
    {
        let pdfData = createPdfFile(webPreview.viewPrintFormatter())
        pdfData.writeToFile("\(AppDelegate.getAppDelegate().getDocDir())/OSA_Form_Test1.pdf", atomically: true)
        
        print("Generated PDF file written to document path : \(AppDelegate.getAppDelegate().getDocDir())/OSA_Form_Test1.pdf")
        
        
        let alertController = UIAlertController(title: "Yeah!", message: "Your OSA Form has been successfully printed to a PDF file.\n\nWhat do you want to do now?", preferredStyle: UIAlertControllerStyle.Alert)
        
        let actionPreview = UIAlertAction(title: "Preview it", style: UIAlertActionStyle.Default) { (action) in
            let request = NSURLRequest(URL: NSURL(string: "\(AppDelegate.getAppDelegate().getDocDir())/OSA_Form_Test1.pdf")!)
            self.webPreview.loadRequest(request)
            self.btnPDF?.hidden = true
        }
        
        let actionEmail = UIAlertAction(title: "Send by Email", style: UIAlertActionStyle.Default) { (action) in
            dispatch_async(dispatch_get_main_queue(), {
                self.sendEmail()
            })
        }
        
        let actionNothing = UIAlertAction(title: "Close", style: UIAlertActionStyle.Default) { (action) in
            
        }
        
        alertController.addAction(actionPreview)
        alertController.addAction(actionEmail)
        alertController.addAction(actionNothing)
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            let pdfFile = "\(AppDelegate.getAppDelegate().getDocDir())/OSA_Form_Test1.pdf"  //osaComposer.pdfFilename
            let mailComposeViewController = MFMailComposeViewController()
            mailComposeViewController.setSubject("OSA Form")
            mailComposeViewController.addAttachmentData(NSData(contentsOfFile: pdfFile)!, mimeType: "application/pdf", fileName: "OSA Form \(NSDate())")
            presentViewController(mailComposeViewController, animated: true, completion: nil)
        }
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        print("webView Start Load")
    }
    func webViewDidFinishLoad(webView: UIWebView) {
        print("webView Finish Load")
        let pdfData = createPdfFile(webView.viewPrintFormatter())
        pdfData.writeToFile("\(AppDelegate.getAppDelegate().getDocDir())/Test1.pdf", atomically: true)
    }
    
    func createPdfFile(printFormatter: UIViewPrintFormatter) -> NSData {
        
        let renderer = CustomPrintPageRenderer()
        
//        let printFormatter = UIMarkupTextPrintFormatter(markupText: HTMLContent)
//        printPageRenderer.addPrintFormatter(printFormatter, startingAtPageAtIndex: 0)
//        
//        let pdfData = drawPDFUsingPrintPageRenderer(printPageRenderer)
//        
//        pdfFilename = "\(AppDelegate.getAppDelegate().getDocDir())/OSA_Form123.pdf"
//        pdfData.writeToFile(pdfFilename, atomically: true)
//        
//        print(pdfFilename)
        
        //let renderer = UIPrintPageRenderer()
        renderer.addPrintFormatter(printFormatter, startingAtPageAtIndex: 0);
        //#define kPaperSizeA4 CGSizeMake(595.2,841.8)
        let paperSize = CGSizeMake(886, 841.8)    //(595.2, 841.8)
        //let paperSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height)
        let printableRect = CGRectMake(0, 0, paperSize.width, paperSize.height)
        let paperRect = CGRectMake(0, 0, paperSize.width, paperSize.height);
        //let paperRect = CGRectMake(0, 0, 595.2, 841.8);
        renderer.setValue(NSValue(CGRect: paperRect), forKey: "paperRect")
        renderer.setValue(NSValue(CGRect: paperRect), forKey: "printableRect")
        return renderer.printToPDF()
    }
    
}

extension UIPrintPageRenderer {
    func printToPDF() -> NSData {
        let pdfData = NSMutableData()
        UIGraphicsBeginPDFContextToData(pdfData, self.paperRect, nil)
        self.prepareForDrawingPages(NSMakeRange(0, self.numberOfPages()))
        let bounds = UIGraphicsGetPDFContextBounds()
        for i in 0..<self.numberOfPages() {
            UIGraphicsBeginPDFPage();
            self.drawPageAtIndex(i, inRect: bounds)
        }
        UIGraphicsEndPDFContext();
        return pdfData;
    }
}