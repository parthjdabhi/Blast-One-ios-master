
import Foundation
import UIKit

class PageFourthView: UIView {

    @IBOutlet internal weak var img_lblPCheck_CompressorGage: UILabel!
    @IBOutlet internal weak var img_lblPCheck_Compressor_Exit: UILabel!
    @IBOutlet internal weak var img_lblPCheck_AirPrep_Entry: UILabel!
    @IBOutlet internal weak var img_lblPCheck_AirPrep_Exit: UILabel!
    @IBOutlet internal weak var img_lblPCheck_BlastPot_Entry: UILabel!
    @IBOutlet internal weak var img_lblPCheck_BlastPot_Exit: UILabel!
    @IBOutlet internal weak var img_lblPCheck_Nozzel_Pressure: UILabel!
    
    @IBOutlet internal weak var lblPCheck_CompressorGage: UILabel!
    @IBOutlet internal weak var lblPCheck_Compressor_Exit: UILabel!
    @IBOutlet internal weak var lblPCheck_AirPrep_Entry: UILabel!
    @IBOutlet internal weak var lblPCheck_AirPrep_Exit: UILabel!
    @IBOutlet internal weak var lblPCheck_BlastPot_Entry: UILabel!
    @IBOutlet internal weak var lblPCheck_BlastPot_Exit: UILabel!
    @IBOutlet internal weak var lblPCheck_Nozzel_Pressure: UILabel!
    
    @IBOutlet internal weak var lblPCheck_Comments: UILabel!
    
    @IBOutlet internal weak var img_PCheck: UIImageView!
    
    internal func setupViewContent() {
        
        img_lblPCheck_CompressorGage.text = "  \(pressureCheck1 ?? "")  "
        img_lblPCheck_Compressor_Exit.text = "  \(pressureCheck2 ?? "")  "
        img_lblPCheck_AirPrep_Entry.text = "  \(pressureCheck3 ?? "")  "
        img_lblPCheck_AirPrep_Exit.text = "  \(pressureCheck4 ?? "")  "
        img_lblPCheck_BlastPot_Entry.text = "  \(pressureCheck5 ?? "")  "
        img_lblPCheck_BlastPot_Exit.text = "  \(pressureCheck6 ?? "")  "
        img_lblPCheck_Nozzel_Pressure.text = "  \(pressureCheck7 ?? "")  "
        
        lblPCheck_CompressorGage.text = pressureCheck1 ?? ""
        lblPCheck_Compressor_Exit.text = pressureCheck2 ?? ""
        lblPCheck_AirPrep_Entry.text = pressureCheck3 ?? ""
        lblPCheck_AirPrep_Exit.text = pressureCheck4 ?? ""
        lblPCheck_BlastPot_Entry.text = pressureCheck5 ?? ""
        lblPCheck_BlastPot_Exit.text = pressureCheck6 ?? ""
        lblPCheck_Nozzel_Pressure.text = pressureCheck7 ?? ""
        
        lblPCheck_Comments.text = theDate ?? ""
        
        img_PCheck.image = (jobSitePictures?.count > 0) ? jobSitePictures?[0] : UIImage(named: imgPlaceholderName )
        
    }
}