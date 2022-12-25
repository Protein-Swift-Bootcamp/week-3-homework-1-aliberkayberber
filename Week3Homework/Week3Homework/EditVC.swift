//
//  EditVC.swift
//  Week3Homework
//
//  Created by Ali Berkay BERBER on 24.12.2022.
//

import UIKit

class EditVC: UIViewController {
        
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var hometownTextField: UITextField!
  
    struct Person {
        var sendName = ""
        var sendSurname = ""
        var sendHometown = ""
    }
    var   firstPerson = Person()

        
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    override func viewDidAppear(_ animated: Bool) {

    }
    
    @IBAction func saveClicked(_ sender: Any) {
        
        
        firstPerson.sendName = nameTextField.text ?? ""
        firstPerson.sendSurname = surnameTextField.text ?? ""
        firstPerson.sendHometown = hometownTextField.text ?? ""
 
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "personLoad"), object: nil, userInfo: ["name" : firstPerson.sendName, "surname" : firstPerson.sendSurname , "hometown" : firstPerson.sendHometown])
    }
    func dataSaver() {
        
    }

    
}
