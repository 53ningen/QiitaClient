//
//  GetStockersOfItemRequest.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import RxSwift
import Alamofire
import Foundation

public class GetStockersItemRequest: QiitaApiRequest {
    
    public typealias RESULT = GetUsersResult
    
    private let PARAM_PAGE = "page"
    private let PARAM_PER_PAGE = "per_page"
    private let FORMAT_URL = "items/%@/stockers"
    
    private let itemId: String
    private let page: Int
    private let perPage: Int
    private let context: RequestContext
    
    public init(itemId: String, page: Int, perPage: Int, context: RequestContext) {
        self.itemId = itemId
        self.page = page
        self.perPage = perPage
        self.context = context
    }
    
    public func getUrl() -> String {
        return context.getUrl(FORMAT_URL, args: itemId)
    }
    
    public func getMethod() ->  Alamofire.Method {
        return .GET
    }
    
    public func invoke() -> Observable<RESULT> {
        let request = Alamofire.request(getMethod(), getUrl(), parameters: getParameters(), encoding: ParameterEncoding.URL).request
        return Manager.sharedInstance.session.rx_response(request)
            >- map {
                (data: NSData!, response: NSURLResponse!) in
                GetUsersResult(response: response as! NSHTTPURLResponse, data: data)
            }
    }
    
    public var description: String {
        return "GetStockersItemRequest{}"
    }
    
    public func getHeaders() -> [String : AnyObject] {
        return [:]
    }
    
    public func getParameters() -> [String : AnyObject] {
        return [
            PARAM_PAGE: page,
            PARAM_PER_PAGE: perPage
        ]
    }

}
