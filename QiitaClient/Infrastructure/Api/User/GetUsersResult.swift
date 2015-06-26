//
//  GetUsersResult.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import SwiftyJSON
import Foundation

public class GetUsersResult: AbstractQiitaApiResult, QiitaApiResult {
    
    public typealias RESULT = [User]?
    
    public func getContent() -> RESULT {
        return UserJsonSupport.json2Users(JSON(data: data))
    }
    
    public override var description: String {
        return "GetUserResult{\(super.description)}"
    }
    
}
