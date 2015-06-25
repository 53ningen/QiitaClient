//
//  ItemId.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public class ItemId: Identity {
    
    public typealias ID = String
    
    public let value: ID
    
    public init(value: ID) {
        self.value = value
    }
    
    public var description: String {
        return value
    }
    
}

public func ==(lhs: ItemId, rhs: ItemId) -> Bool {
    return lhs.value == rhs.value
}
