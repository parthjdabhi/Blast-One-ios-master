
import Foundation
import UIKit

class PageTwoView: UIView {
    
    @IBOutlet internal weak var lblAirC_Brand: UILabel!
    @IBOutlet internal weak var lblAirC_Size_CFM: UILabel!
    @IBOutlet internal weak var lblAirC_Pressure_PSI: UILabel!
    @IBOutlet internal weak var lblAirC_Half_aftercooler: UILabel!
    @IBOutlet internal weak var lblAirC_Comments: UILabel!
    
    @IBOutlet internal weak var lblBullH_Size_inches: UILabel!
    @IBOutlet internal weak var lblBullH_Pressure_PSI: UILabel!
    @IBOutlet internal weak var lblBullH_Fitting_Type: UILabel!
    @IBOutlet internal weak var lblBullH_Comments: UILabel!
    
    @IBOutlet internal weak var lblAirD_Brand: UILabel!
    @IBOutlet internal weak var lblAirD_Size_CFM: UILabel!
    @IBOutlet internal weak var lblAirD_Pressure_PSI: UILabel!
    @IBOutlet internal weak var lblAirD_Comments: UILabel!
    
    @IBOutlet internal weak var img1_AirC: UIImageView!
    @IBOutlet internal weak var img2_BullH: UIImageView!
    @IBOutlet internal weak var img3_AirD: UIImageView!
    
    internal func setupViewContent() {
        
        lblAirC_Brand.text = airCompressorBrand ?? ""
        lblAirC_Size_CFM.text = airCompressorSize ?? ""
        lblAirC_Pressure_PSI.text = airCompressorPressure ?? ""
        lblAirC_Half_aftercooler.text = airCompressorOptions ?? ""
        lblAirC_Comments.text = airDryerComments ?? ""
        
        lblBullH_Size_inches.text = bullSize ?? ""
        lblBullH_Pressure_PSI.text = bullPressure ?? ""
        lblBullH_Fitting_Type.text = bullFitting ?? ""
        lblBullH_Comments.text = bullComments ?? ""
        
        lblAirD_Brand.text = airDryerBrand ?? ""
        lblAirD_Size_CFM.text = airDryerSize ?? ""
        lblAirD_Pressure_PSI.text = airDryerPressure ?? ""
        lblAirD_Comments.text = airDryerComments ?? ""
        
        img1_AirC.image = (Airc_Pictures?.count > 0) ? Airc_Pictures?[0] : UIImage(named: imgPlaceholderName )
        img2_BullH.image = (BHose_Pictures?.count > 0) ? BHose_Pictures?[0] : UIImage(named: imgPlaceholderName )
        img3_AirD.image = (AirD_Pictures?.count > 0) ? AirD_Pictures?[0] : UIImage(named: imgPlaceholderName )
    }
}