//
//  QiitaApiResult.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public protocol QiitaApiResult: Printable {
    
    typealias RESULT: Any
    
    var response: NSHTTPURLResponse! { get }
    var data: NSData! { get }
    var statusCode: Int { get }
    
    func isSucceeded() -> Bool
    func isOk() -> Bool
    func getContent() -> RESULT
    
}
