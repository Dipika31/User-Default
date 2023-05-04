//
//  ViewController2.swift
//  User Default
//
//  Created by Choudhary Dipika on 21/03/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    var a1 = ""
    var a2 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameLabel.text = a1
        passwordLabel.text = a2
    }

}
