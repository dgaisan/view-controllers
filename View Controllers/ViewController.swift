//
//  ViewController.swift
//  View Controllers
//
//  Created by Dmitri Gaisan on 2/27/19.
//  Copyright © 2019 Dmitri Gaisan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var checkbox: UISwitch!
    @IBOutlet var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initControls()
    }

    @IBAction func submitSurvey() {
        let resultViewController = self.storyboard!.instantiateViewController(withIdentifier: "GreenVC") as! ResultViewController
        
        resultViewController.name = textField.text
        resultViewController.isGoing = checkbox.isOn
        self.show(resultViewController, sender: self)
    }
    
    func initControls() {
        textField.delegate = self
        submitButton.isEnabled = false
        checkbox.isEnabled = false
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText: NSString = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        submitButton.isEnabled = newText.length > 0
        checkbox.isEnabled = newText.length > 0
        
        return true
    }
}

