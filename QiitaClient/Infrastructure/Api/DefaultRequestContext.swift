//
//  DefaultRequestContext.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public class DefaultRequestContext: RequestContext {
    
    let baseUrl: String
    
    public init(baseUrl: String) {
        self.baseUrl = baseUrl
    }

    public func getUrl(format: String, args: CVarArgType...) -> String {
        return baseUrl + String(format: format, arguments: args)
    }
    
    public override var description: String {
        return "DefaultRequestContext{baseUrl:\(baseUrl)}"
    }
    
}
