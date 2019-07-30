//
//  ViewController.swift
//  UITests
//
//  Created by Jeferson Oliveira Cequeira de Jesus on 30/07/19.
//  Copyright © 2019 Jeferson Oliveira Cequeira de Jesus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var segmented: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valueChanged(segmented as Any)
    }

    @IBAction func valueChanged(_ sender: Any) {
        label.text = segmented.titleForSegment(at: segmented.selectedSegmentIndex)
    }
    
}

