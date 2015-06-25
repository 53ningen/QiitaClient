//
//  User.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public class User: Entity {
    
    public typealias ID = UserId
    
    public let descriptions: String?
    public let facebookId: String?
    public let followeesCount: Int?
    public let followersCount: Int?
    public let githubLoginName: String?
    public let id: String
    public let itemsCount: Int?
    public let linkedInId: String?
    public let location: String?
    public let name: String
    public let organization: String?
    public let permanentId: CLong?
    public let profileImageUrl: String
    public let twitterScreenName: String?
    public let websiteUrl: String?
    
    public init(id: String, name: String, profileImageUrl: String,
        description: String?, facebookId: String?, followeesCount: Int?,
        followersCount: Int?, githubLoginName: String?, itemsCount: Int?,
        linkedInId: String?, location: String?, organization: String?,
        permanentId: CLong?, twitterScreenName: String?, websiteUrl: String?) {
            self.id = id
            self.name = name
            self.profileImageUrl = profileImageUrl
            self.descriptions = description
            self.facebookId = facebookId
            self.followeesCount = followeesCount
            self.followersCount = followersCount
            self.githubLoginName = githubLoginName
            self.itemsCount = itemsCount
            self.linkedInId = linkedInId
            self.location = location
            self.organization = organization
            self.permanentId = permanentId
            self.twitterScreenName = twitterScreenName
            self.websiteUrl = websiteUrl
    }
    
    public func getId() -> ID {
        return ID(value: id)
    }
    
    public func sameIdentityAs(other: User) -> Bool {
        return self.id == other.id
    }
    
    public var description: String {
        return "User{id:\(id)}"
    }
    
}

public func ==(lhs: User, rhs: User) -> Bool {
    return lhs.id == rhs.id
        && lhs.name == rhs.name
        && lhs.profileImageUrl == rhs.profileImageUrl
        && lhs.descriptions == rhs.descriptions
        && lhs.facebookId == rhs.facebookId
        && lhs.followeesCount == rhs.followeesCount
        && lhs.followersCount == rhs.followersCount
        && lhs.githubLoginName == rhs.githubLoginName
        && lhs.itemsCount == rhs.itemsCount
        && lhs.githubLoginName == rhs.githubLoginName
        && lhs.linkedInId == rhs.linkedInId
        && lhs.location == rhs.location
        && lhs.organization == rhs.organization
        && lhs.permanentId == rhs.permanentId
        && lhs.twitterScreenName == rhs.twitterScreenName
        && lhs.websiteUrl == rhs.websiteUrl
}
