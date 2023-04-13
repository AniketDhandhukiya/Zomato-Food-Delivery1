//
//  ViewController.swift
//  Zomato-Food Delivery
//
//  Created by R83 on 13/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mobileText: UITextField!
    @IBOutlet weak var loginimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginimage.layer.cornerRadius = 45
        loginimage.layer.masksToBounds = true
    }


}

