//
//  ApplicationContext.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public class ApplicationContext {
    
    let CONFIG = NSDictionary(contentsOfFile: NSBundle.mainBundle().pathForResource("Application.plist", ofType:nil)!)!
    
    func get<T>(key: ApplicationContextKey) -> T {
        return CONFIG.objectForKey(key.rawValue) as! T
    }
    
}
