//
//  ResultViewController.swift
//  View Controllers
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    public var isGoing: Bool!
    public var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if isGoing {
            self.label.text = "Thank you \(name!) for attending our event!"
        } else {
            self.label.text = "Sorry to hear \(name!) that you're not attending"
        }
    }

    @IBAction func closeView(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
