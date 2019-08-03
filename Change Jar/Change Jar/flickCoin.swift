//
//  ViewController.swift
//  Change Jar
//
//  Created by Chirasree Mandal on 7/9/19.
//  Copyright © 2019 Chirasree Mandal. All rights reserved.
//

import UIKit
import Lottie
import Alamofire

class flickCoin: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        playAnimation()
        // Do any additional setup after loading the view.
    }
//
//    func playAnimation(){
//        let animationView = AnimationView(name: "4778-coin")
//        animationView.frame = self.view.frame
//        self.view.addSubview(animationView)
//        animationView.play()
//    }
//
    @IBAction func loadOrganizations(_ sender: Any) {
        Alamofire.request(API_HOST+"/orgs/get_orgs/").responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result

            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }

            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
    }

        }
    }

}

