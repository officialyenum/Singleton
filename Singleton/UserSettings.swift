//
//  UserSettings.swift
//  Singleton
//
//  Created by Chukwuyenum Opone on 22/02/2020.
//  Copyright © 2020 Chukwuyenum Opone. All rights reserved.
//

import Foundation

final public class UserSettings {
    
    private init() {}
    
    public static let shared = UserSettings()
    
    private let serialQueue = DispatchQueue(label: "serialQueue")
    
    private var settings: [String:Any] = ["Theme" : "Vivid", "Brightness": 50]
    
    public func string(forKey key: String) -> String? {
        var result:String?
        serialQueue.sync {
            result = settings[key] as? String
        }
        return result
    }
    public func int(forKey key: String) -> Int? {
        var result:Int?
        serialQueue.sync {
            result = settings[key] as? Int
        }
        return result
    }
    
    public func set(_ value: Any, forKey key: String) {
        serialQueue.sync {
            settings[key] = value
        }
    }
}
