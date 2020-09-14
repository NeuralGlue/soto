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

/// Error enum for SNS
public enum SNSErrorType: AWSErrorType {
    case authorizationErrorException(message: String?)
    case concurrentAccessException(message: String?)
    case endpointDisabledException(message: String?)
    case filterPolicyLimitExceededException(message: String?)
    case internalErrorException(message: String?)
    case invalidParameterException(message: String?)
    case invalidParameterValueException(message: String?)
    case invalidSecurityException(message: String?)
    case kMSAccessDeniedException(message: String?)
    case kMSDisabledException(message: String?)
    case kMSInvalidStateException(message: String?)
    case kMSNotFoundException(message: String?)
    case kMSOptInRequired(message: String?)
    case kMSThrottlingException(message: String?)
    case notFoundException(message: String?)
    case platformApplicationDisabledException(message: String?)
    case resourceNotFoundException(message: String?)
    case staleTagException(message: String?)
    case subscriptionLimitExceededException(message: String?)
    case tagLimitExceededException(message: String?)
    case tagPolicyException(message: String?)
    case throttledException(message: String?)
    case topicLimitExceededException(message: String?)
}

extension SNSErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AuthorizationError":
            self = .authorizationErrorException(message: message)
        case "ConcurrentAccess":
            self = .concurrentAccessException(message: message)
        case "EndpointDisabled":
            self = .endpointDisabledException(message: message)
        case "FilterPolicyLimitExceeded":
            self = .filterPolicyLimitExceededException(message: message)
        case "InternalError":
            self = .internalErrorException(message: message)
        case "InvalidParameter":
            self = .invalidParameterException(message: message)
        case "ParameterValueInvalid":
            self = .invalidParameterValueException(message: message)
        case "InvalidSecurity":
            self = .invalidSecurityException(message: message)
        case "KMSAccessDenied":
            self = .kMSAccessDeniedException(message: message)
        case "KMSDisabled":
            self = .kMSDisabledException(message: message)
        case "KMSInvalidState":
            self = .kMSInvalidStateException(message: message)
        case "KMSNotFound":
            self = .kMSNotFoundException(message: message)
        case "KMSOptInRequired":
            self = .kMSOptInRequired(message: message)
        case "KMSThrottling":
            self = .kMSThrottlingException(message: message)
        case "NotFound":
            self = .notFoundException(message: message)
        case "PlatformApplicationDisabled":
            self = .platformApplicationDisabledException(message: message)
        case "ResourceNotFound":
            self = .resourceNotFoundException(message: message)
        case "StaleTag":
            self = .staleTagException(message: message)
        case "SubscriptionLimitExceeded":
            self = .subscriptionLimitExceededException(message: message)
        case "TagLimitExceeded":
            self = .tagLimitExceededException(message: message)
        case "TagPolicy":
            self = .tagPolicyException(message: message)
        case "Throttled":
            self = .throttledException(message: message)
        case "TopicLimitExceeded":
            self = .topicLimitExceededException(message: message)
        default:
            return nil
        }
    }
}

extension SNSErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .authorizationErrorException(let message):
            return "AuthorizationError: \(message ?? "")"
        case .concurrentAccessException(let message):
            return "ConcurrentAccess: \(message ?? "")"
        case .endpointDisabledException(let message):
            return "EndpointDisabled: \(message ?? "")"
        case .filterPolicyLimitExceededException(let message):
            return "FilterPolicyLimitExceeded: \(message ?? "")"
        case .internalErrorException(let message):
            return "InternalError: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameter: \(message ?? "")"
        case .invalidParameterValueException(let message):
            return "ParameterValueInvalid: \(message ?? "")"
        case .invalidSecurityException(let message):
            return "InvalidSecurity: \(message ?? "")"
        case .kMSAccessDeniedException(let message):
            return "KMSAccessDenied: \(message ?? "")"
        case .kMSDisabledException(let message):
            return "KMSDisabled: \(message ?? "")"
        case .kMSInvalidStateException(let message):
            return "KMSInvalidState: \(message ?? "")"
        case .kMSNotFoundException(let message):
            return "KMSNotFound: \(message ?? "")"
        case .kMSOptInRequired(let message):
            return "KMSOptInRequired: \(message ?? "")"
        case .kMSThrottlingException(let message):
            return "KMSThrottling: \(message ?? "")"
        case .notFoundException(let message):
            return "NotFound: \(message ?? "")"
        case .platformApplicationDisabledException(let message):
            return "PlatformApplicationDisabled: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFound: \(message ?? "")"
        case .staleTagException(let message):
            return "StaleTag: \(message ?? "")"
        case .subscriptionLimitExceededException(let message):
            return "SubscriptionLimitExceeded: \(message ?? "")"
        case .tagLimitExceededException(let message):
            return "TagLimitExceeded: \(message ?? "")"
        case .tagPolicyException(let message):
            return "TagPolicy: \(message ?? "")"
        case .throttledException(let message):
            return "Throttled: \(message ?? "")"
        case .topicLimitExceededException(let message):
            return "TopicLimitExceeded: \(message ?? "")"
        }
    }
}
