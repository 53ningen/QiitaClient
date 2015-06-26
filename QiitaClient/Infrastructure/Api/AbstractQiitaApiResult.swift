//
//  AbstractQiitaApiResult.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public class AbstractQiitaApiResult: Printable {
    
    public let response: NSHTTPURLResponse!
    public let data: NSData!
    
    public init(response: NSHTTPURLResponse!, data: NSData!) {
        self.response = response
        self.data = data
    }

    public var statusCode: Int {
        return response.statusCode
    }
    
    public func isSucceeded() -> Bool {
        return StatusCode.OK.rawValue <= statusCode && statusCode < StatusCode.MULTIPLE_CHOISES.rawValue
    }
    
    public func isOk() -> Bool {
        return statusCode == StatusCode.OK.rawValue
    }
    
    public var description: String {
        return "res:\(response),data:\(data)"
    }

}
