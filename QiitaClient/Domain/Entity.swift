//
//  Entity.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public protocol Entity: Printable, Equatable {
    
    typealias ID: Identity
    
    func getId() -> ID
    
    func sameIdentityAs(other: Self) -> Bool
    
}
