
import UIKit

class diningPage: UIViewController {
    
    
    @IBOutlet weak var iv1: UIImageView!
    @IBOutlet weak var iv2: UIImageView!
    @IBOutlet weak var iv3: UIImageView!
    @IBOutlet weak var iv4: UIImageView!
    @IBOutlet weak var iv5: UIImageView!
    @IBOutlet weak var iv6: UIImageView!
    @IBOutlet weak var iv7: UIImageView!

    


    override func viewDidLoad() {
        super.viewDidLoad()
        iv1.layer.cornerRadius = 10
        iv1.layer.masksToBounds = true
        iv2.layer.cornerRadius = 10
        iv2.layer.masksToBounds = true
        iv3.layer.cornerRadius = 10
        iv3.layer.masksToBounds = true
        iv4.layer.cornerRadius = 10
        iv4.layer.masksToBounds = true
        iv5.layer.cornerRadius = 10
        iv5.layer.masksToBounds = true
        iv6.layer.cornerRadius = 10
        iv6.layer.masksToBounds = true
        iv7.layer.cornerRadius = 10
        iv7.layer.masksToBounds = true
    }
}
