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

/// Error enum for MTurk
public enum MTurkErrorType: AWSErrorType {
    case requestError(message: String?)
    case serviceFault(message: String?)
}

extension MTurkErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "RequestError":
            self = .requestError(message: message)
        case "ServiceFault":
            self = .serviceFault(message: message)
        default:
            return nil
        }
    }
}

extension MTurkErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .requestError(let message):
            return "RequestError: \(message ?? "")"
        case .serviceFault(let message):
            return "ServiceFault: \(message ?? "")"
        }
    }
}
