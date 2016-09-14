
import Foundation
import UIKit

let imgPlaceholderName = ""

class PageOneView: UIView
{
    @IBOutlet internal weak var lbl_Consultant: UILabel!
    @IBOutlet internal weak var lbl_Date: UILabel!
    @IBOutlet internal weak var lbl_Customer: UILabel!
    @IBOutlet internal weak var lbl_Facility: UILabel!
    @IBOutlet internal weak var lbl_Product_Process: UILabel!
    @IBOutlet internal weak var lbl_Job_Details: UILabel!
    @IBOutlet internal weak var lbl_Jobsite_Conditions: UILabel!
    @IBOutlet internal weak var lbl_Comments: UILabel!
    
    @IBOutlet internal weak var img1_Jobsite: UIImageView!
    @IBOutlet internal weak var img2_Jobsite: UIImageView!
    @IBOutlet internal weak var img3_Jobsite: UIImageView!
    
    internal func setupViewContent() {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
        dateFormatter.timeStyle = NSDateFormatterStyle.NoStyle
        
        //introAnswer1 type
        //introAnswer2 desc.
        
        lbl_Consultant .text = nameOfConsultant ?? ""
        lbl_Date.text = theDate ?? ""
        lbl_Customer.text = nameOfCustomer ?? ""
        lbl_Facility.text = "" ?? ""
        lbl_Product_Process.text = introAnswer1 ?? ""
        
        lbl_Job_Details.text = introAnswer2 ?? ""
        lbl_Jobsite_Conditions.text = " Weather:\(weatherInfo ?? "") \n Access:\(accessInfo ?? "") \n Hazard:\(hazardsInfo ?? "") "
        lbl_Comments.text = ""  //Want show main job comment here
        
        img1_Jobsite.image = (jobSitePictures?.count > 0) ? jobSitePictures?[0] : UIImage(named: imgPlaceholderName)
        img2_Jobsite.image = (jobSitePictures?.count > 1) ? jobSitePictures?[1] : UIImage(named: imgPlaceholderName)
        img3_Jobsite.image = (jobSitePictures?.count > 2) ? jobSitePictures?[2] : UIImage(named: imgPlaceholderName)
    }
}