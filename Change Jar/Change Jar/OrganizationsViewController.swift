//
//  Organizations.swift
//  Change Jar
//
//  Created by Joelene Latief on 7/31/19.
//  Copyright © 2019 Chirasree Mandal. All rights reserved.
//

import UIKit

class OrganizationsViewController: UIViewController {
    
    @IBOutlet var organizationTitle: UILabel!
    @IBOutlet var organizationDescription: UITextView!
    @IBOutlet var header: UIView!
    @IBOutlet var popup: UIView!
    @IBOutlet var startFlickingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        organizationTitle.text = UserDefaults.standard.string(forKey: "orgName")
        organizationDescription.text = UserDefaults.standard.string(forKey: "orgDescription")
        
        popup.layer.cornerRadius = 20
        
        header.layer.cornerRadius = 20
        header.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
    startFlickingButton.layer.cornerRadius = 20
        startFlickingButton.clipsToBounds = true
        
}
    
}
