//
//  GetAuthenticatedUserRequest.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import RxSwift
import Alamofire
import Foundation

public class GetAuthenticatedUserRequest: QiitaApiRequest {
    
    public typealias RESULT = GetUserResult
    
    private let HEADER_AUTHORIZATION = "Authorization"
    private let PATH = "authenticated_user"
    
    private let context: RequestContext
    private let session: Session?
    
    public init(context: RequestContext, session: Session?) {
        self.context = context
        self.session = session
    }
    
    public convenience init(context: RequestContext) {
        self.init(context: context, session: nil)
    }
    
    public func getUrl() -> String {
        return context.getUrl(PATH)
    }
    
    public func getMethod() ->  Alamofire.Method {
        return .GET
    }
    
    public func invoke() -> Observable<RESULT> {
        var request = Alamofire.request(getMethod(), getUrl(), parameters: getParameters(), encoding: ParameterEncoding.URL).request
        Manager.sharedInstance.session.configuration.HTTPAdditionalHeaders = getHeaders()
        return Manager.sharedInstance.session.rx_response(request)
            >- map {
                (data: NSData!, response: NSURLResponse!) in
                return GetUserResult(response: response as! NSHTTPURLResponse, data: data)
        }
    }
    
    public var description: String {
        return "GetAuthenticatedUserRequest{}"
    }
    
    public func getHeaders() -> [String : AnyObject] {
        if let session = session { return [HEADER_AUTHORIZATION : session.accessToken] }
        else { return [:] }
    }
    
    public func getParameters() -> [String : AnyObject] {
        return [:]
    }

}
