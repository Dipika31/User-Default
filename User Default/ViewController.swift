//
//  ViewController.swift
//  User Default
//
//  Created by Choudhary Dipika on 21/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let abc = segue.destination as! ViewController2
        abc.a1 = username.text!
        abc.a2 = password.text!
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        let alert = UIAlertController.init(title: "Save", message: "Save ypur details.", preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "Save", style: .default, handler: { alert in
            UserDefaults.standard.set(self.username.text!, forKey: "username")
            UserDefaults.standard.set(self.password.text!, forKey: "password")
            self.performSegue(withIdentifier: "Cell", sender: self)
        }))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .cancel))
        present(alert, animated: true)
    }
    
}

