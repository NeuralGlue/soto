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

/// Error enum for KinesisAnalyticsV2
public enum KinesisAnalyticsV2ErrorType: AWSErrorType {
    case codeValidationException(message: String?)
    case concurrentModificationException(message: String?)
    case invalidApplicationConfigurationException(message: String?)
    case invalidArgumentException(message: String?)
    case invalidRequestException(message: String?)
    case limitExceededException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case resourceProvisionedThroughputExceededException(message: String?)
    case serviceUnavailableException(message: String?)
    case tooManyTagsException(message: String?)
    case unableToDetectSchemaException(message: String?)
    case unsupportedOperationException(message: String?)
}

extension KinesisAnalyticsV2ErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "CodeValidationException":
            self = .codeValidationException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "InvalidApplicationConfigurationException":
            self = .invalidApplicationConfigurationException(message: message)
        case "InvalidArgumentException":
            self = .invalidArgumentException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceProvisionedThroughputExceededException":
            self = .resourceProvisionedThroughputExceededException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        case "UnableToDetectSchemaException":
            self = .unableToDetectSchemaException(message: message)
        case "UnsupportedOperationException":
            self = .unsupportedOperationException(message: message)
        default:
            return nil
        }
    }
}

extension KinesisAnalyticsV2ErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .codeValidationException(let message):
            return "CodeValidationException: \(message ?? "")"
        case .concurrentModificationException(let message):
            return "ConcurrentModificationException: \(message ?? "")"
        case .invalidApplicationConfigurationException(let message):
            return "InvalidApplicationConfigurationException: \(message ?? "")"
        case .invalidArgumentException(let message):
            return "InvalidArgumentException: \(message ?? "")"
        case .invalidRequestException(let message):
            return "InvalidRequestException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .resourceProvisionedThroughputExceededException(let message):
            return "ResourceProvisionedThroughputExceededException: \(message ?? "")"
        case .serviceUnavailableException(let message):
            return "ServiceUnavailableException: \(message ?? "")"
        case .tooManyTagsException(let message):
            return "TooManyTagsException: \(message ?? "")"
        case .unableToDetectSchemaException(let message):
            return "UnableToDetectSchemaException: \(message ?? "")"
        case .unsupportedOperationException(let message):
            return "UnsupportedOperationException: \(message ?? "")"
        }
    }
}
