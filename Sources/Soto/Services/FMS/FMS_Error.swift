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

/// Error enum for FMS
public enum FMSErrorType: AWSErrorType {
    case internalErrorException(message: String?)
    case invalidInputException(message: String?)
    case invalidOperationException(message: String?)
    case invalidTypeException(message: String?)
    case limitExceededException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension FMSErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalErrorException":
            self = .internalErrorException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "InvalidOperationException":
            self = .invalidOperationException(message: message)
        case "InvalidTypeException":
            self = .invalidTypeException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}

extension FMSErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .internalErrorException(let message):
            return "InternalErrorException: \(message ?? "")"
        case .invalidInputException(let message):
            return "InvalidInputException: \(message ?? "")"
        case .invalidOperationException(let message):
            return "InvalidOperationException: \(message ?? "")"
        case .invalidTypeException(let message):
            return "InvalidTypeException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        }
    }
}
