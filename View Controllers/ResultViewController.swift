//
//  ResultViewController.swift
//  View Controllers
//
//  Created by Dmitri Gaisan on 2/27/19.
//  Copyright © 2019 Dmitri Gaisan. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    public var isGoing: Bool!
    public var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func closeView(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
