//
//  Item.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

public class Item: Entity {

    public typealias ID = ItemId
    
    public let id: String
    public let title: String
    public let user: User
    public let url: String
    public let renderedBody: String?
    public let body: String?
    public let coediting: Bool?
    public let createdAt: String?
    public let isPrivate: Bool?
    public let tags: [String]?
    public let updatedAt: String?
    
    public init(id: String, title: String, user: User, url: String,
        renderedBody: String?, body: String?, coediting: Bool?,
        createdAt: String?, isPrivate: Bool?, tags: [String]?, updatedAt: String?) {
            self.id = id
            self.title = title
            self.user = user
            self.url = url
            self.renderedBody = renderedBody
            self.body = body
            self.coediting = coediting
            self.createdAt = createdAt
            self.isPrivate = isPrivate
            self.tags = tags
            self.updatedAt = updatedAt
    }
    
    public func getId() -> ID {
        return ID(value: id)
    }
    
    public func sameIdentityAs(other: Item) -> Bool {
        return id == other.id
    }
    
    public var description: String {
        return "Item{id:\(id)}"
    }
    
}

public func ==(lhs: Item, rhs: Item) -> Bool {
    return lhs.id == rhs.id
        && lhs.title == rhs.title
        && lhs.user == rhs.user
        && lhs.url == rhs.url
        && lhs.renderedBody == rhs.renderedBody
        && lhs.body == rhs.body
        && lhs.coediting == rhs.coediting
        && lhs.createdAt == rhs.createdAt
        && lhs.isPrivate == rhs.isPrivate
        && lhs.tags == rhs.tags
        && lhs.updatedAt == rhs.updatedAt
}
