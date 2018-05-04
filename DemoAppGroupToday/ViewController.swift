//
//  ViewController.swift
//  DemoAppGroupToday
//
//  Created by Michael Collard on 5/4/18.
//  Copyright © 2018 Michael Collard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // write value to the App Group User Defaults
        guard let defaults = UserDefaults(suiteName: "group.edu.uakron.cs.ios.collard") else {
            return
        }
        let message = "Hi"
        print(#function, #line, "Message: ", message)
        defaults.set(message, forKey: "Message")
    }

}
