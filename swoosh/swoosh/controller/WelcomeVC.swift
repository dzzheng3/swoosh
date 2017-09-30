//
//  ViewController.swift
//  swoosh
//
//  Created by NaiqingZheng on 9/29/17.
//  Copyright © 2017 NaiqingZheng. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onNext(_ sender: Any) {
        performSegue(withIdentifier: "nextLeague", sender: self)
    }
    

    

}

