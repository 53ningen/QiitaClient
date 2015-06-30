//
//  DefaultQiitaApiClient.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import RxSwift
import Foundation

public class DefaultQiitaApiClient: QiitaApiClient {
    
    private static let DEFAULT_REQUEST_CONTEXT: RequestContext = DefaultRequestContext(baseUrl: "http://qiita.com/api/v2/")
    
    private let context: RequestContext
    
    public init(context: RequestContext = DEFAULT_REQUEST_CONTEXT) {
        self.context = context
    }
    
    public func getStockersOfItem(itemId: String, page: Int, perPage: Int) -> Observable<GetUsersResult> {
        return GetStockersItemRequest(itemId: itemId, page: page, perPage: perPage, context: context).invoke()
    }
    
    public func getAuthenticatedUser(session: Session?) -> Observable<GetUserResult> {
        return GetAuthenticatedUserRequest(context: context, session: session).invoke()
    }

    public override var description: String {
        return "DefaultQiitaApiClient{}"
    }
    
}
