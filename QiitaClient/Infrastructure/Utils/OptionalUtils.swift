//
//  OptionalUtils.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

internal func ==(lhs: String?, rhs: String?) -> Bool {
    if let l = lhs, r = rhs { return l == r }
    else if let l = lhs { return false }
    else if let r = rhs { return false }
    else { return true }
}

internal func ==(lhs: [String]?, rhs: [String]?) -> Bool {
    if let l = lhs, r = rhs { return l == r }
    else if let l = lhs { return false }
    else if let r = rhs { return false }
    else { return true }
}

internal func ==(lhs: Bool?, rhs: Bool?) -> Bool {
    if let l = lhs, r = rhs { return l == r }
    else if let l = lhs { return false }
    else if let r = rhs { return false }
    else { return true }
}

internal func ==(lhs: Int?, rhs: Int?) -> Bool {
    if let l = lhs, r = rhs { return l == r }
    else if let l = lhs { return false }
    else if let r = rhs { return false }
    else { return true }
}
