//
//  Tag.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public class Tag {
    
    public let followersCount: Int
    public let iconUrl: String?
    public let id: String
    public let itemsCount: Int
    
    public init(id: String, iconUrl: String?, followersCount: Int, itemsCount: Int) {
        self.id = id
        self.iconUrl = iconUrl
        self.followersCount = followersCount
        self.itemsCount = itemsCount
    }
    
}
