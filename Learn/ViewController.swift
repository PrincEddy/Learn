//
//  ViewController.swift
//  Learn
//
//  Created by Vannesa on 2019/2/28.
//  Copyright © 2019 Vannesa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func languageButtonPressd(_ sender: UIButton) {
        if sender.tag == 1 {
             performSegue(withIdentifier: "goToSelectedLanguage", sender: self)
            print("Perfomed")
        } 
    }
}

