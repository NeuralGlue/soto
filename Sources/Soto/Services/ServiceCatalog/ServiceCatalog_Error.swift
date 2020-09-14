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

/// Error enum for ServiceCatalog
public enum ServiceCatalogErrorType: AWSErrorType {
    case duplicateResourceException(message: String?)
    case invalidParametersException(message: String?)
    case invalidStateException(message: String?)
    case limitExceededException(message: String?)
    case operationNotSupportedException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case tagOptionNotMigratedException(message: String?)
}

extension ServiceCatalogErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "DuplicateResourceException":
            self = .duplicateResourceException(message: message)
        case "InvalidParametersException":
            self = .invalidParametersException(message: message)
        case "InvalidStateException":
            self = .invalidStateException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "OperationNotSupportedException":
            self = .operationNotSupportedException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "TagOptionNotMigratedException":
            self = .tagOptionNotMigratedException(message: message)
        default:
            return nil
        }
    }
}

extension ServiceCatalogErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .duplicateResourceException(let message):
            return "DuplicateResourceException: \(message ?? "")"
        case .invalidParametersException(let message):
            return "InvalidParametersException: \(message ?? "")"
        case .invalidStateException(let message):
            return "InvalidStateException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .operationNotSupportedException(let message):
            return "OperationNotSupportedException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .tagOptionNotMigratedException(let message):
            return "TagOptionNotMigratedException: \(message ?? "")"
        }
    }
}
