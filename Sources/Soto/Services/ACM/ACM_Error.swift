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

/// Error enum for ACM
public enum ACMErrorType: AWSErrorType {
    case invalidArgsException(message: String?)
    case invalidArnException(message: String?)
    case invalidDomainValidationOptionsException(message: String?)
    case invalidParameterException(message: String?)
    case invalidStateException(message: String?)
    case invalidTagException(message: String?)
    case limitExceededException(message: String?)
    case requestInProgressException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case tagPolicyException(message: String?)
    case tooManyTagsException(message: String?)
}

extension ACMErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidArgsException":
            self = .invalidArgsException(message: message)
        case "InvalidArnException":
            self = .invalidArnException(message: message)
        case "InvalidDomainValidationOptionsException":
            self = .invalidDomainValidationOptionsException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidStateException":
            self = .invalidStateException(message: message)
        case "InvalidTagException":
            self = .invalidTagException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "RequestInProgressException":
            self = .requestInProgressException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "TagPolicyException":
            self = .tagPolicyException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        default:
            return nil
        }
    }
}

extension ACMErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .invalidArgsException(let message):
            return "InvalidArgsException: \(message ?? "")"
        case .invalidArnException(let message):
            return "InvalidArnException: \(message ?? "")"
        case .invalidDomainValidationOptionsException(let message):
            return "InvalidDomainValidationOptionsException: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameterException: \(message ?? "")"
        case .invalidStateException(let message):
            return "InvalidStateException: \(message ?? "")"
        case .invalidTagException(let message):
            return "InvalidTagException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .requestInProgressException(let message):
            return "RequestInProgressException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .tagPolicyException(let message):
            return "TagPolicyException: \(message ?? "")"
        case .tooManyTagsException(let message):
            return "TooManyTagsException: \(message ?? "")"
        }
    }
}
