//
//  StatusCode.swift
//  QiitaClient
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public enum StatusCode: Int {
    
    case CONTINUE = 100
    case SWITCHING_PROTOCOLS = 101
    case PROCESSIONG = 102
    case OK = 200
    case CREATED = 201
    case ACCEPTED = 202
    case NON_AUTHORITATIVE_INFORMATION = 203
    case NO_CONTENT = 204
    case RESET_CONTENT = 205
    case PARTIAL_CONTENT = 206
    case MULTI_STATUS = 207
    case IM_USED = 208
    case MULTIPLE_CHOISES = 300
    case MOVED_PERMANENTLY = 301
    case FOUND = 302
    case SEE_OTHER = 303
    case NOT_MODIFIED = 304
    case USE_PROXY = 305
    case TEMPORARY_REDIRECT = 307
    case PERMANENT_REDIRECT = 308
    case BAD_REQUEST = 400
    case UNAUTHORIZED = 401
    case PAYMENT_REQUIRED = 402
    case FORBIDDEN = 403
    case NOT_FOUND = 404
    case METHOD_NOT_ALLOWED = 405
    case NOT_ACCEPTABLE = 406
    case PROXY_AUTHENCATION_REQUIRED = 407
    case REQUEST_TIMEOUT = 408
    case CONFLICT = 409
    case GONE = 410
    case INTERNAL_SERVER_ERROR = 500
    case NOT_IMPLEMENTED = 501
    case BAD_GATEWAY = 502
    case SERVICE_UNAVAILABLE = 503
    
}
