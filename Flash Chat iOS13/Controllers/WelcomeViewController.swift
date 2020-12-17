
import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flashingTitle()
       
    }
    func flashingTitle () {
        let title = K.appTitle
        titleLabel.text? = ""
        var number = 0.0
        for i in title {
            Timer.scheduledTimer(withTimeInterval: 0.2 * number, repeats: false) {
                (timer) in self.titleLabel?.text?.append(i)
            }
            number += 1
        }
    }

}
