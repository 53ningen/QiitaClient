//
//  QiitaApiRequest.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import RxSwift
import Alamofire
import Foundation

public protocol QiitaApiRequest: Printable {

    typealias RESULT: QiitaApiResult
    
    func getUrl() -> String
    
    func getMethod() ->  Alamofire.Method
    
    func invoke() -> Observable<RESULT>
    
    func getHeaders() -> [String:AnyObject]
    
    func getParameters() -> [String:AnyObject]
    
}
