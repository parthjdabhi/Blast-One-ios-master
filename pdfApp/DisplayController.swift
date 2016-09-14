
import UIKit

class DisplayController: UIViewController {
    
    @IBOutlet var contentView: UIWebView!
    
    var url:NSURL?

    // MARK: - Controller Implementation
    func configureView() {
        // Update the user interface for the detail item.
        if let url = self.url {
            if let contentView = self.contentView {
                print(url)
                contentView.loadRequest(NSURLRequest(URL: url))
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }

    @IBAction func actionGoToBack(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func actionShare(sender: UIButton)
    {
        let objectsToShare: Array<AnyObject> = [NSData(contentsOfURL: url!)!]
        let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = sender
        activityVC.popoverPresentationController?.sourceRect = sender.bounds
        self.presentViewController(activityVC, animated: true, completion: nil)
    }
}