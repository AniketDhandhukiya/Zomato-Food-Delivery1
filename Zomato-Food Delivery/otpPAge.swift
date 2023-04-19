//
//  otpPAge.swift
//  Zomato-Food Delivery
//
//  Created by R83 on 19/04/23.
//

import UIKit

class otpPAge: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var otpView: DPOTPView!
    
    @IBAction func otpContinueAction(_ sender: Any) {
        if otpView.validate(){
            let nv = storyboard?.instantiateViewController(withIdentifier: "zomatoMainPage") as! zomatoMainPage
            navigationController?.pushViewController(nv, animated: true)
        }
        
      
    }
    
}
