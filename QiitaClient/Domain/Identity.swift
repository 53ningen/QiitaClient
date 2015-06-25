//
//  Identity.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public protocol Identity: Printable, Equatable {
    
    typealias ID: Equatable
    
    var value: ID { get }
    
}
