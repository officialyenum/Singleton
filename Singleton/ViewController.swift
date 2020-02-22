//
//  ViewController.swift
//  Singleton
//
//  Created by Chukwuyenum Opone on 22/02/2020.
//  Copyright © 2020 Chukwuyenum Opone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let userSettings = UserSettings.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let theme = userSettings.string(forKey: "Theme"){
            print("Theme: \(theme)")
        }
        
        let bright = 20
        userSettings.set(bright, forKey: "Brightness")
        
        if let brightner = userSettings.int(forKey: "Brightness"){
            print("new brightness = \(brightner)")
        }
        
    }


}

