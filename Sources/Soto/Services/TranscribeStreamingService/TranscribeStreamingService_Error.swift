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

/// Error enum for TranscribeStreamingService
public enum TranscribeStreamingServiceErrorType: AWSErrorType {
    case badRequestException(message: String?)
    case conflictException(message: String?)
    case internalFailureException(message: String?)
    case limitExceededException(message: String?)
    case serviceUnavailableException(message: String?)
}

extension TranscribeStreamingServiceErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        default:
            return nil
        }
    }
}

extension TranscribeStreamingServiceErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .badRequestException(let message):
            return "BadRequestException: \(message ?? "")"
        case .conflictException(let message):
            return "ConflictException: \(message ?? "")"
        case .internalFailureException(let message):
            return "InternalFailureException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .serviceUnavailableException(let message):
            return "ServiceUnavailableException: \(message ?? "")"
        }
    }
}
