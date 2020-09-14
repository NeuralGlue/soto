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

/// Error enum for Rekognition
public enum RekognitionErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case humanLoopQuotaExceededException(message: String?)
    case idempotentParameterMismatchException(message: String?)
    case imageTooLargeException(message: String?)
    case internalServerError(message: String?)
    case invalidImageFormatException(message: String?)
    case invalidPaginationTokenException(message: String?)
    case invalidParameterException(message: String?)
    case invalidS3ObjectException(message: String?)
    case limitExceededException(message: String?)
    case provisionedThroughputExceededException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case resourceNotReadyException(message: String?)
    case throttlingException(message: String?)
    case videoTooLargeException(message: String?)
}

extension RekognitionErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "HumanLoopQuotaExceededException":
            self = .humanLoopQuotaExceededException(message: message)
        case "IdempotentParameterMismatchException":
            self = .idempotentParameterMismatchException(message: message)
        case "ImageTooLargeException":
            self = .imageTooLargeException(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "InvalidImageFormatException":
            self = .invalidImageFormatException(message: message)
        case "InvalidPaginationTokenException":
            self = .invalidPaginationTokenException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidS3ObjectException":
            self = .invalidS3ObjectException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ProvisionedThroughputExceededException":
            self = .provisionedThroughputExceededException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceNotReadyException":
            self = .resourceNotReadyException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "VideoTooLargeException":
            self = .videoTooLargeException(message: message)
        default:
            return nil
        }
    }
}

extension RekognitionErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .humanLoopQuotaExceededException(let message):
            return "HumanLoopQuotaExceededException: \(message ?? "")"
        case .idempotentParameterMismatchException(let message):
            return "IdempotentParameterMismatchException: \(message ?? "")"
        case .imageTooLargeException(let message):
            return "ImageTooLargeException: \(message ?? "")"
        case .internalServerError(let message):
            return "InternalServerError: \(message ?? "")"
        case .invalidImageFormatException(let message):
            return "InvalidImageFormatException: \(message ?? "")"
        case .invalidPaginationTokenException(let message):
            return "InvalidPaginationTokenException: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameterException: \(message ?? "")"
        case .invalidS3ObjectException(let message):
            return "InvalidS3ObjectException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .provisionedThroughputExceededException(let message):
            return "ProvisionedThroughputExceededException: \(message ?? "")"
        case .resourceAlreadyExistsException(let message):
            return "ResourceAlreadyExistsException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .resourceNotReadyException(let message):
            return "ResourceNotReadyException: \(message ?? "")"
        case .throttlingException(let message):
            return "ThrottlingException: \(message ?? "")"
        case .videoTooLargeException(let message):
            return "VideoTooLargeException: \(message ?? "")"
        }
    }
}
