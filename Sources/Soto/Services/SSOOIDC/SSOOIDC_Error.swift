//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

/// Error enum for SSOOIDC
public enum SSOOIDCErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case authorizationPendingException(message: String?)
    case expiredTokenException(message: String?)
    case internalServerException(message: String?)
    case invalidClientException(message: String?)
    case invalidClientMetadataException(message: String?)
    case invalidGrantException(message: String?)
    case invalidRequestException(message: String?)
    case invalidScopeException(message: String?)
    case slowDownException(message: String?)
    case unauthorizedClientException(message: String?)
    case unsupportedGrantTypeException(message: String?)
}

extension SSOOIDCErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "AuthorizationPendingException":
            self = .authorizationPendingException(message: message)
        case "ExpiredTokenException":
            self = .expiredTokenException(message: message)
        case "InternalServerException":
            self = .internalServerException(message: message)
        case "InvalidClientException":
            self = .invalidClientException(message: message)
        case "InvalidClientMetadataException":
            self = .invalidClientMetadataException(message: message)
        case "InvalidGrantException":
            self = .invalidGrantException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "InvalidScopeException":
            self = .invalidScopeException(message: message)
        case "SlowDownException":
            self = .slowDownException(message: message)
        case "UnauthorizedClientException":
            self = .unauthorizedClientException(message: message)
        case "UnsupportedGrantTypeException":
            self = .unsupportedGrantTypeException(message: message)
        default:
            return nil
        }
    }
}

extension SSOOIDCErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .authorizationPendingException(let message):
            return "AuthorizationPendingException: \(message ?? "")"
        case .expiredTokenException(let message):
            return "ExpiredTokenException: \(message ?? "")"
        case .internalServerException(let message):
            return "InternalServerException: \(message ?? "")"
        case .invalidClientException(let message):
            return "InvalidClientException: \(message ?? "")"
        case .invalidClientMetadataException(let message):
            return "InvalidClientMetadataException: \(message ?? "")"
        case .invalidGrantException(let message):
            return "InvalidGrantException: \(message ?? "")"
        case .invalidRequestException(let message):
            return "InvalidRequestException: \(message ?? "")"
        case .invalidScopeException(let message):
            return "InvalidScopeException: \(message ?? "")"
        case .slowDownException(let message):
            return "SlowDownException: \(message ?? "")"
        case .unauthorizedClientException(let message):
            return "UnauthorizedClientException: \(message ?? "")"
        case .unsupportedGrantTypeException(let message):
            return "UnsupportedGrantTypeException: \(message ?? "")"
        }
    }
}
