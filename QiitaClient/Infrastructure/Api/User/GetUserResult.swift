//
//  GetUserResult.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import SwiftyJSON
import Foundation

public class GetUserResult: AbstractQiitaApiResult, QiitaApiResult {
    
    public typealias RESULT = User?
    
    public func getContent() -> RESULT {
        return UserJsonSupport.json2User(JSON(data: data))
    }
    
    public override var description: String {
        return "GetUserResult{\(super.description)}"
    }
    
}
