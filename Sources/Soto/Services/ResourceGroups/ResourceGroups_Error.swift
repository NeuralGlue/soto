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

/// Error enum for ResourceGroups
public enum ResourceGroupsErrorType: AWSErrorType {
    case badRequestException(message: String?)
    case forbiddenException(message: String?)
    case internalServerErrorException(message: String?)
    case methodNotAllowedException(message: String?)
    case notFoundException(message: String?)
    case tooManyRequestsException(message: String?)
    case unauthorizedException(message: String?)
}

extension ResourceGroupsErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "ForbiddenException":
            self = .forbiddenException(message: message)
        case "InternalServerErrorException":
            self = .internalServerErrorException(message: message)
        case "MethodNotAllowedException":
            self = .methodNotAllowedException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        default:
            return nil
        }
    }
}

extension ResourceGroupsErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .badRequestException(let message):
            return "BadRequestException: \(message ?? "")"
        case .forbiddenException(let message):
            return "ForbiddenException: \(message ?? "")"
        case .internalServerErrorException(let message):
            return "InternalServerErrorException: \(message ?? "")"
        case .methodNotAllowedException(let message):
            return "MethodNotAllowedException: \(message ?? "")"
        case .notFoundException(let message):
            return "NotFoundException: \(message ?? "")"
        case .tooManyRequestsException(let message):
            return "TooManyRequestsException: \(message ?? "")"
        case .unauthorizedException(let message):
            return "UnauthorizedException: \(message ?? "")"
        }
    }
}
