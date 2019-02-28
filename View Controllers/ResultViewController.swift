//
//  ResultViewController.swift
//  View Controllers
//
//  Created by Dmitri Gaisan on 2/27/19.
//  Copyright © 2019 Dmitri Gaisan. All rights reserved.
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
