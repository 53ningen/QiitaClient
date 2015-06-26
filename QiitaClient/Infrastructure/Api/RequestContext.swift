//
//  RequestContext.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public protocol RequestContext: Printable {
    
    func getUrl(path: String) -> String
    
    func getUrl(format: String, args: CVarArgType...) -> String

}
