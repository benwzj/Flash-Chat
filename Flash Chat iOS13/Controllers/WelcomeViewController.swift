//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flashingTitle()
       
    }
    func flashingTitle () {
        let title = "⚡️FlashChat"
        titleLabel.text? = ""
        var number = 0.0
        for i in title {
            Timer.scheduledTimer(withTimeInterval: 0.2 * number, repeats: false) {
                (timer) in self.titleLabel?.text?.append(i)
            }
            number += 1
        }
    }

}
