
import Foundation
import UIKit

class PageFifthView: UIView {

    @IBOutlet internal weak var lblBT1_Area_Blasted_sqft: UILabel!
    @IBOutlet internal weak var lblBT1_Abrasive_Used_lbs: UILabel!
    @IBOutlet internal weak var lblBT1_Time_Blasted_hrs: UILabel!
    @IBOutlet internal weak var lblBT1_Blasting_Prod_Rate_sqft_hr: UILabel!
    @IBOutlet internal weak var lblBT1_Abrasive_Consumption_lbs_hr: UILabel!
    @IBOutlet internal weak var lblBT1_Profile_Achieved_mils: UILabel!
    @IBOutlet internal weak var lblBT1_MoistureSeprator: UILabel!
    @IBOutlet internal weak var lblBT1_Comments: UILabel!
    
    @IBOutlet internal weak var lblBT2_Area_Blasted_sqft: UILabel!
    @IBOutlet internal weak var lblBT2_Abrasive_Used_lbs: UILabel!
    @IBOutlet internal weak var lblBT2_Time_Blasted_hrs: UILabel!
    @IBOutlet internal weak var lblBT2_Blasting_Prod_Rate_sqft_hr: UILabel!
    @IBOutlet internal weak var lblBT2_Abrasive_Consumption_lbs_hr: UILabel!
    @IBOutlet internal weak var lblBT2_Profile_Achieved_mils: UILabel!
    @IBOutlet internal weak var lblBT2_MoistureSeprator: UILabel!
    @IBOutlet internal weak var lblBT2_Comments: UILabel!
    
    @IBOutlet internal weak var lblBT3_Area_Blasted_sqft: UILabel!
    @IBOutlet internal weak var lblBT3_Abrasive_Used_lbs: UILabel!
    @IBOutlet internal weak var lblBT3_Time_Blasted_hrs: UILabel!
    @IBOutlet internal weak var lblBT3_Blasting_Prod_Rate_sqft_hr: UILabel!
    @IBOutlet internal weak var lblBT3_Abrasive_Consumption_lbs_hr: UILabel!
    @IBOutlet internal weak var lblBT3_Profile_Achieved_mils: UILabel!
    @IBOutlet internal weak var lblBT3_MoistureSeprator: UILabel!
    @IBOutlet internal weak var lblBT3_Comments: UILabel!
    
    @IBOutlet internal weak var img_BT1: UIImageView!
    @IBOutlet internal weak var img_BT2: UIImageView!
    @IBOutlet internal weak var img_BT3: UIImageView!
    
    internal func setupViewContent() {
        
        lblBT1_Area_Blasted_sqft.text = theAreaBlasted1 ?? ""
        lblBT1_Abrasive_Used_lbs.text = theAbrasiveUsed1 ?? ""
        lblBT1_Time_Blasted_hrs.text = theTimeBlast1 ?? ""
        lblBT1_Blasting_Prod_Rate_sqft_hr.text = theBlastProduction1 ?? ""
        lblBT1_Abrasive_Consumption_lbs_hr.text = theAbrasiveConsumption1 ?? ""
        lblBT1_Profile_Achieved_mils.text = theProfileAchieved1 ?? ""
        lblBT1_MoistureSeprator.text = theDate ?? ""
        lblBT1_Comments.text = theComments1 ?? ""
        
        lblBT2_Area_Blasted_sqft.text = theAreaBlasted2 ?? ""
        lblBT2_Abrasive_Used_lbs.text = theAbrasiveUsed2 ?? ""
        lblBT2_Time_Blasted_hrs.text = theTimeBlast2 ?? ""
        lblBT2_Blasting_Prod_Rate_sqft_hr.text = theBlastProduction2 ?? ""
        lblBT2_Abrasive_Consumption_lbs_hr.text = theAbrasiveConsumption2 ?? ""
        lblBT2_Profile_Achieved_mils.text = theProfileAchieved2 ?? ""
        lblBT2_MoistureSeprator.text = theDate ?? ""
        lblBT2_Comments.text = theComments2 ?? ""
        
        lblBT3_Area_Blasted_sqft.text = theAreaBlasted3 ?? ""
        lblBT3_Abrasive_Used_lbs.text = theAbrasiveUsed3 ?? ""
        lblBT3_Time_Blasted_hrs.text = theTimeBlast3 ?? ""
        lblBT3_Blasting_Prod_Rate_sqft_hr.text = theBlastProduction3 ?? ""
        lblBT3_Abrasive_Consumption_lbs_hr.text = theAbrasiveConsumption3 ?? ""
        lblBT3_Profile_Achieved_mils.text = theProfileAchieved3 ?? ""
        lblBT3_MoistureSeprator.text = theDate ?? ""
        lblBT3_Comments.text = theComments3 ?? ""
        
        img_BT1.image = (BT1_Pictures?.count > 0) ? BT1_Pictures?[0] : UIImage(named: imgPlaceholderName )
        img_BT2.image = (BT2_Pictures?.count > 0) ? BT2_Pictures?[0] : UIImage(named: imgPlaceholderName )
        img_BT3.image = (BT3_Pictures?.count > 0) ? BT3_Pictures?[0] : UIImage(named: imgPlaceholderName )
        
    }
}