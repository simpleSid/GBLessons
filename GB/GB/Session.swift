//
//  Session.swift
//  GB
//
//  Created by Сидоренко Денис Викторович on 06/11/2019.
//  Copyright © 2019 Сидоренко Денис Викторович. All rights reserved.
//

import Foundation

class Session {
    
    var token = ""
    var userId = 0
    
    static let shared = Session()
    
    private init() {}
}
