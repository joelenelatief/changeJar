//
//  ViewController.swift
//  Change Jar
//
//  Created by Chirasree Mandal on 7/9/19.
//  Copyright © 2019 Chirasree Mandal. All rights reserved.
//

import UIKit

class intro1: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        print("hello")
        self.performSegue(withIdentifier: "intro2", sender: self)
    }
    //    @IBAction func swipeLeft(_ sender: Any) {
//        print("hello")
//        self.performSegue(withIdentifier: "Intro2", sender: self)
//    }
    
}


