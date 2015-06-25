//
//  UserId.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public class UserId: Identity {
    
    public typealias ID = String
    
    public let value: ID
    
    public init(value: ID) {
        self.value = value
    }
    
    public var description: String {
        return value
    }

}

public func ==(lhs: UserId, rhs: UserId) -> Bool {
    return lhs.value == rhs.value
}
