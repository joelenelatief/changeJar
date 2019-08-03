//
//  Organizations.swift
//  Change Jar
//
//  Created by Joelene Latief on 7/31/19.
//  Copyright © 2019 Chirasree Mandal. All rights reserved.
//

import Foundation

struct Organization:Codable {
    static var current:Organization!
    var name:String
    var description:String
}
