//
//  InvoiceComposer.swift
//  Print2PDF
//
//  Created by Gabriel Theodoropoulos on 23/06/16.
//  Copyright © 2016 Appcoda. All rights reserved.
//

import UIKit

class OSAComposer: NSObject {

    static let FileName = "index"    //OSA_Form,invoice
    static let FileExt = "html"     //htm,html
    let pathToInvoiceHTMLTemplate = NSBundle.mainBundle().pathForResource(FileName, ofType: FileExt)
    
    var pdfFilename: String!
    
    override init() {
        super.init()
    }
    
    
    func renderInvoice() -> String! {
        // Store the invoice number for future use.
        do {
            // Load the invoice HTML template code into a String variable.
            var HTMLContent = try String(contentsOfFile: pathToInvoiceHTMLTemplate!)
            
            // The logo image.
            //(NSBundle.mainBundle().pathForResource("blog-logo-dark-400", ofType: "png") ?? "")
            HTMLContent = HTMLContent.stringByReplacingOccurrencesOfString("#img_header#", withString: (NSBundle.mainBundle().pathForResource("img_header", ofType: "jpg") ?? ""))
            HTMLContent = HTMLContent.stringByReplacingOccurrencesOfString("#img_footer#", withString: (NSBundle.mainBundle().pathForResource("img_footer", ofType: "jpg") ?? ""))
            
            // * * * * * * * Start Page 1 * * * * * * * *
            /*#er_consultant#
            #er_date#
            #er_customer#
            #er_facility#
            #er_productprocess#
            #er_jobdetail#
            #job_condition#
            #job_condition#
            #js_pic# =
             <div class="img-col">
             <img src="#js_pic1#" alt="Job Site Picture" style="width:100%;" />
             </div>
            #js_comments# */
            HTMLContent = HTMLContent.stringByReplacingOccurrencesOfString("#er_consultant#", withString: "\(nameOfConsultant ?? "")")
            HTMLContent = HTMLContent.stringByReplacingOccurrencesOfString("#er_date#", withString: "\(NSDate())")
            HTMLContent = HTMLContent.stringByReplacingOccurrencesOfString("#er_customer#", withString: "\(nameOfCustomer ?? "")")
            HTMLContent = HTMLContent.stringByReplacingOccurrencesOfString("#er_facility#", withString: "\(introAnswer1 ?? "")")
            HTMLContent = HTMLContent.stringByReplacingOccurrencesOfString("#er_productprocess#", withString: "\(nameOfCustomer ?? "")")
            HTMLContent = HTMLContent.stringByReplacingOccurrencesOfString("#er_jobdetail#", withString: "\(introAnswer2 ?? "")")
            HTMLContent = HTMLContent.stringByReplacingOccurrencesOfString("#job_condition#", withString: "\(nameOfCustomer ?? "")")
            HTMLContent = HTMLContent.stringByReplacingOccurrencesOfString("#js_pic#", withString: "\("job-pic.jpeg")")
            
            //HTMLContent = HTMLContent.stringByReplacingOccurrencesOfString("#RECIPIENT_INFO#", withString: "Test\nString line".stringByReplacingOccurrencesOfString("\n", withString: "<br>"))

            // * * * * * * * Finish Page 1 * * * * * * * *
            
            // The HTML code is ready.
            return HTMLContent
            
        }
        catch {
            print("Unable to open and use HTML template files.")
        }
        
        return nil
    }
    
    
    func exportHTMLContentToPDF(HTMLContent: String) {
        let printPageRenderer = CustomPrintPageRenderer()
        
        let printFormatter = UIMarkupTextPrintFormatter(markupText: HTMLContent)
        printFormatter.maximumContentHeight = 500
        printPageRenderer.addPrintFormatter(printFormatter, startingAtPageAtIndex: 0)
        
        let pdfData = drawPDFUsingPrintPageRenderer(printPageRenderer)
        
        pdfFilename = "\(AppDelegate.getAppDelegate().getDocDir())/OSA_Form_customPrint.pdf"
        pdfData.writeToFile(pdfFilename, atomically: true)
        
        print(pdfFilename)
    }
    
    
    func drawPDFUsingPrintPageRenderer(printPageRenderer: UIPrintPageRenderer) -> NSData! {
        let data = NSMutableData()
        
        UIGraphicsBeginPDFContextToData(data, CGRectZero, nil)
        
        UIGraphicsBeginPDFPage()
        
        printPageRenderer.drawPageAtIndex(0, inRect: UIGraphicsGetPDFContextBounds())
        
        UIGraphicsEndPDFContext()
        
        return data
    }
    
}
