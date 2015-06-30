//
//  DefaultApplicationComponents.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public class DefaultApplicationComponents: ApplicationComponents {
    
    private let config = ApplicationContext()
        
    public func requestContext() -> RequestContext {
        let baseUrl: String = config.get(ApplicationContextKey.QIITA_API_URL)
        return DefaultRequestContext(baseUrl: baseUrl)
    }
    
    public func qiitaApiClient() -> QiitaApiClient {
        let isDebug: Bool = config.get(ApplicationContextKey.IS_DEBUG)
        return isDebug ? MockQiitaApiClient() : DefaultQiitaApiClient(context: self.requestContext())
    }
    
    public let description: String = "DefaultApplicationComponents{}"
    
}
