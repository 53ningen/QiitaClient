//
//  OptionalUtils.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

func ==(lhs: String?, rhs: String?) -> Bool {
    if let l = lhs, r = rhs { return l == r }
    else if let l = lhs { return false }
    else if let r = rhs { return false }
    else { return true }
}

func ==(lhs: [String]?, rhs: [String]?) -> Bool {
    if let l = lhs, r = rhs { return l == r }
    else if let l = lhs { return false }
    else if let r = rhs { return false }
    else { return true }
}

func ==(lhs: Bool?, rhs: Bool?) -> Bool {
    if let l = lhs, r = rhs { return l == r }
    else if let l = lhs { return false }
    else if let r = rhs { return false }
    else { return true }
}
