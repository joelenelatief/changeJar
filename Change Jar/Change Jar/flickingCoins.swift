//
//  Organizations.swift
//  Change Jar
//
//  Created by Joelene Latief on 7/31/19.
//  Copyright © 2019 Chirasree Mandal. All rights reserved.
//

import UIKit
import Alamofire

class flickingCoins: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func loadOrganizations(_ sender: Any) {
        Alamofire.request(API_HOST+"/orgs/get_org").responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value {
                print("HELLO I AM JSON: \(json)") // serialized json response
                let JSON = json as! NSDictionary
                print(JSON)
                let name = JSON["name"]
                let description = JSON["description"]
                UserDefaults.standard.set(name, forKey: "orgName")
                UserDefaults.standard.set(description, forKey: "orgDescription")
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
            
            let organizations = self.storyboard?.instantiateViewController(withIdentifier:"OrganizationsViewController") as! OrganizationsViewController
            self.present(organizations, animated: true, completion: nil)
            
        }
    }
}
