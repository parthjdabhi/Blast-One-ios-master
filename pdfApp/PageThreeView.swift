
import Foundation
import UIKit

class PageThreeView: UIView {
    
    @IBOutlet internal weak var lblBEqu_Blast_Pot_Size: UILabel!
    @IBOutlet internal weak var lblBEqu_Brand: UILabel!
    @IBOutlet internal weak var lblBEqu_Metering_Valves: UILabel!
    @IBOutlet internal weak var lblBEqu_Inlet_valve: UILabel!
    @IBOutlet internal weak var lblBEqu_Pusherline_size: UILabel!
    @IBOutlet internal weak var lblBEqu_Choke_Valve_used: UILabel!
    @IBOutlet internal weak var lblBEqu_Moisture_Separator: UILabel!
    @IBOutlet internal weak var lblBEqu_Restricting_fittings: UILabel!
    @IBOutlet internal weak var lblBEqu_Deadman_controls: UILabel!
    @IBOutlet internal weak var lblBEqu_Air_Leaks: UILabel!
    @IBOutlet internal weak var lblBEqu_Comments: UILabel!
    
    @IBOutlet internal weak var lblBAcc_ExthoseIDLen: UILabel!
    @IBOutlet internal weak var lblBAcc_WhiphoseIDLen: UILabel!
    @IBOutlet internal weak var lblBAcc_BNozzletypeizeDeadmanType: UILabel!
    @IBOutlet internal weak var lblBAcc_Comments: UILabel!
    
    @IBOutlet internal weak var lblBAbr_Type: UILabel!
    @IBOutlet internal weak var lblBAbr_Grade: UILabel!
    @IBOutlet internal weak var lblBAbr_Storage: UILabel!
    @IBOutlet internal weak var lblBAbr_Lbs_on_site: UILabel!
    @IBOutlet internal weak var lblBAbr_Profile_Req: UILabel!
    @IBOutlet internal weak var lblBAbr_Comments: UILabel!
    
    @IBOutlet internal weak var img_BEqu: UIImageView!
    @IBOutlet internal weak var img_BAcc: UIImageView!
    @IBOutlet internal weak var img_BAbr: UIImageView!
    
    internal func setupViewContent() {
        
        lblBEqu_Blast_Pot_Size.text = theDate ?? ""
        lblBEqu_Brand.text = theDate ?? ""
        lblBEqu_Metering_Valves.text = theDate ?? ""
        lblBEqu_Inlet_valve.text = theDate ?? ""
        lblBEqu_Pusherline_size.text = theDate ?? ""
        lblBEqu_Choke_Valve_used.text = theDate ?? ""
        lblBEqu_Moisture_Separator.text = theDate ?? ""
        lblBEqu_Restricting_fittings.text = theDate ?? ""
        lblBEqu_Deadman_controls.text = theDate ?? ""
        lblBEqu_Air_Leaks.text = theDate ?? ""
        lblBEqu_Comments.text = theDate ?? ""
        
        lblBAcc_ExthoseIDLen.text = theDate ?? ""
        lblBAcc_WhiphoseIDLen.text = theDate ?? ""
        lblBAcc_BNozzletypeizeDeadmanType.text = theDate ?? ""
        lblBAcc_Comments.text = theDate ?? ""
        
        lblBAbr_Type.text = theDate ?? ""
        lblBAbr_Grade.text = theDate ?? ""
        lblBAbr_Storage.text = theDate ?? ""
        lblBAbr_Lbs_on_site.text = theDate ?? ""
        lblBAbr_Profile_Req.text = theDate ?? ""
        lblBAbr_Comments.text = theDate ?? ""
        
        img_BEqu.image = (jobSitePictures?.count > 0) ? jobSitePictures?[0] : UIImage(named: imgPlaceholderName )
        img_BAcc.image = (jobSitePictures?.count > 0) ? jobSitePictures?[0] : UIImage(named: imgPlaceholderName )
        img_BAbr.image = (jobSitePictures?.count > 0) ? jobSitePictures?[0] : UIImage(named: imgPlaceholderName )
    }
}