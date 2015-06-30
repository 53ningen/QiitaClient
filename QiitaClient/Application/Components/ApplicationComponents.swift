//
//  DefaultComponents.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public protocol ApplicationComponents: Printable {
    
    func requestContext() -> RequestContext
    
    func qiitaApiClient() -> QiitaApiClient
    
}
