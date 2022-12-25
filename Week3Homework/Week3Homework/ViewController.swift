//
//  ViewController.swift
//  Week3Homework
//
//  Created by Ali Berkay BERBER on 24.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var homeTownLabel: UILabel!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // to get struct
        NotificationCenter.default.addObserver(self, selector: #selector(load(data: )), name: NSNotification.Name(rawValue: "personLoad"), object: nil)

    }

    @IBAction func nextClicked(_ sender: Any) {
        
        
    }
    // to assign label
    @objc func load(data: Notification) {
        if let userInfoName = data.userInfo {
            let name = userInfoName["name"] as! String
            self.nameLabel.text = String(name)
        }
      
        if let userInfoSurname = data.userInfo {
            let surname = userInfoSurname["surname"] as! String
            self.surnameLabel.text = String(surname)
        }
           if let userInfoHometown = data.userInfo {
            let hometown = userInfoHometown["hometown"] as! String
            self.homeTownLabel.text = String(hometown)
        }
        
    }
}

