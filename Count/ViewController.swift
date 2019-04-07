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
        label.layer.cornerRadius = 60
        label.clipsToBounds = true
    }

    @IBAction func plus() {
        number = number + 1
        change()
    }
    
    @IBAction func minus(_ sender: Any) {
        number = number - 1
        change()
    }
    
    @IBAction func reset(_ sender: Any) {
        number = 0
        change()
    }
    
    //端末を振った時にカウントを増やす。
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        number = number + 1
        change()
    }
    
    func change() {
        if number > 10 {
            label.textColor = UIColor.red
        } else if number < 0 {
            label.textColor = UIColor.blue
        } else {
            label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        label.text = String(number)
    }
}

