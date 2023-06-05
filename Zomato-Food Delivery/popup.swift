//
//  popup.swift
//  Zomato-Food Delivery
//
//  Created by R91 on 05/06/23.
//

import UIKit

class popup: UIViewController {

    @IBOutlet weak var pop: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear){
            self.pop.alpha = 1
        }
    }
    

}
