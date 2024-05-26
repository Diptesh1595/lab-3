//
//  ViewController.swift
//  Exercise3
//
//  Created by user252703 on 5/25/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var warningLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        warningLabel.isHidden = true
        firstName.placeholder = "First Name"
        lastName.placeholder = "Last Name"
        country.placeholder = "Country"
        age.placeholder = "Age"
        
        
    }

    @IBAction func clearButtonAction(_ sender: Any) {
        firstName.text = ""
        lastName.text = ""
        country.text = ""
        age.text = ""
        textView.text = ""
    }
    
    @IBAction func submitButtonAction(_ sender: Any) {
        warningLabel.isHidden = false
        if firstName.text == "" || lastName.text == "" || country.text == "" || age.text == "" {
            warningLabel.text = "Complete all the information"
        } else {
            warningLabel.text = "Successfully submitted"
        }
    }
    
    @IBAction func addButtonAction(_ sender: Any) {
        textView.text = "Full Name: \(firstName.text ?? "") \(lastName.text ?? "")"
        textView.text += "\nCountry: \(country.text ?? "")"
        textView.text += "\nAge: \(age.text ?? "")"
    }
    
    
}

