//
//  TodayViewController.swift
//  TodayExtension
//
//  Created by Michael Collard on 5/4/18.
//  Copyright © 2018 Michael Collard. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {

        // read value from the App Group User Defaults
        /* Note: Will need to adjust to your App Group name */
        guard let message = UserDefaults(suiteName: "group.edu.uakron.cs.ios.collard")?.string(forKey: "Message") else {
            print("Error: Unable to access App Group")
            completionHandler(NCUpdateResult.noData)
            return
        }

        print(#function, #line, "Message: ", message)
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.noData)
    }
    
}
