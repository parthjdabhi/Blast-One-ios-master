
import Foundation
import UIKit

class PageSixView: UIView {
    
    @IBOutlet internal weak var lblBlaster_skill_level_technique: UILabel!
    @IBOutlet internal weak var lblRecommendations: UILabel!
    @IBOutlet internal weak var lblAction_Items: UILabel!
    @IBOutlet internal weak var lblWrap_Up: UILabel!
    
    internal func setupViewContent() {
        
        lblBlaster_skill_level_technique.text = actionBlastSkills ?? ""
        lblRecommendations.text = actionRecommendations ?? ""
        
        var allActions:Array<String> = []
        
        if let HasAction = actionList1 { allActions.append(HasAction) }
        if let HasAction = actionList2 { allActions.append(HasAction) }
        if let HasAction = actionList3 { allActions.append(HasAction) }
        if let HasAction = actionList4 { allActions.append(HasAction) }
        if let HasAction = actionList5 { allActions.append(HasAction) }
        if let HasAction = actionList6 { allActions.append(HasAction) }
        if let HasAction = actionList7 { allActions.append(HasAction) }
        if let HasAction = actionList8 { allActions.append(HasAction) }
        if let HasAction = actionList9 { allActions.append(HasAction) }
        if let HasAction = actionList10 { allActions.append(HasAction) }
        
        lblAction_Items.text = (allActions.count>0) ? allActions.joinWithSeparator(", ") : ""
        
        lblWrap_Up.text = ""    //We can Setup wrapup text here
        
    }
}