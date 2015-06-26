//
//  QiitaApiClient.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import RxSwift
import RxCocoa
import Alamofire
import Foundation

public protocol QiitaApiClient: Printable {
    
    func getStockersOfItem(itemId: String, page: Int, perPage: Int) -> Observable<GetUsersResult>
    
    func getAuthenticatedUser(session: Session?) -> Observable<GetUserResult>

}
