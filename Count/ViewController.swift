//
//  ViewController.swift
//  Count
//
//  Created by Tommy on 2019/04/07.
//  Copyright © 2019 Tommy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number : Int = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus() {
        number = number + 1
        label.text = String(number)
    }
    
}

