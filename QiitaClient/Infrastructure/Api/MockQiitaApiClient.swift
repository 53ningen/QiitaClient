//
//  MockQiitaApiClient.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import RxSwift
import Foundation

public class MockQiitaApiClient: QiitaApiClient {
    
    public func getAuthenticatedUser(session: Session?) -> Observable<GetUserResult> {
        return returnElements()
    }
    
    public func getStockersOfItem(itemId: String, page: Int, perPage: Int) -> Observable<GetUsersResult> {
        return returnElements()
    }
    
    public let description: String = "MockQiitaApiClient{}"

}
