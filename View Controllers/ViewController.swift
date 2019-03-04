//
//  ViewController.swift
//  View Controllers
//
//  Simple Survey App
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
    
    private func initControls() {
        textField.delegate = self
        submitButton.isEnabled = false
        checkbox.isEnabled = false
    }
    
    private func updateControlsEnabled(_ value: Bool) {
        submitButton.isEnabled = value
        checkbox.isEnabled = value
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText: NSString = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        updateControlsEnabled(newText.length > 0)
        
        return newText.length < 10
    }
}

