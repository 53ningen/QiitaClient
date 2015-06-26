//
//  DefaultQiitaApiSession.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public class DefaultSession: Session {
    
    public let accessToken: String
    
    public init(accessToken: String) {
        self.accessToken = accessToken
    }
    
    public var description: String {
        return "DefaultQiitaApiSession{accessToken:\(accessToken)}"
    }
    
}
