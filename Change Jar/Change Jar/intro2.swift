//
//  ViewController.swift
//  Change Jar
//
//  Created by Chirasree Mandal on 7/9/19.
//  Copyright © 2019 Chirasree Mandal. All rights reserved.
//

import UIKit

class intro2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func swipeLeft(_ sender: Any) {
    self.performSegue(withIdentifier: "intro3", sender: self)
    }
    @IBAction func swipeRight(_ sender: Any) {
        self.performSegue(withIdentifier: "intro1", sender: self)
    }
    //    @IBAction func swipeLeft(_ sender: Any) {
//        print("hello")
//        self.performSegue(withIdentifier: "Intro3", sender: self)
//    }
    
}

