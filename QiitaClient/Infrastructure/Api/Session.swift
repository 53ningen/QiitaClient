//
//  QiitaApiSession.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public protocol Session: Printable {
    
    var accessToken: String { get }
    
}
