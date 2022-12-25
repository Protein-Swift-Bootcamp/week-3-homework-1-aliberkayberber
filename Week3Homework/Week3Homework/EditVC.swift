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
    
    // to send another view struct
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
        
        
        firstPerson.sendName = nameTextField.text ?? ""         // for assign a variable
        firstPerson.sendSurname = surnameTextField.text ?? ""   // for assign a variable
        firstPerson.sendHometown = hometownTextField.text ?? "" // for assign a variable
 
        // to send view controller
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "personLoad"), object: nil, userInfo: ["name" : firstPerson.sendName, "surname" : firstPerson.sendSurname , "hometown" : firstPerson.sendHometown])
    }


    
}
