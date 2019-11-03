//
//  Extension +ViewController.swift
//  GB
//
//  Created by Денис Сидоренко on 03/11/2019.
//  Copyright © 2019 Сидоренко Денис Викторович. All rights reserved.
//

import UIKit

extension UIViewController {
    
    public func showAlert(title: String?, message: String?, cancelTitle: String?) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: cancelTitle, style: .cancel, handler: nil)
        ac.addAction(cancelAction)
        present(ac, animated: true, completion: nil)
    }
    
    public func hi() {
        print("hi")
    }
}
