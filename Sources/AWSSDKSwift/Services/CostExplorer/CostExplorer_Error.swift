// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CostExplorer
public enum CostExplorerErrorType: AWSErrorType {
    case billExpirationException(message: String?)
    case dataUnavailableException(message: String?)
    case invalidNextTokenException(message: String?)
    case limitExceededException(message: String?)
    case requestChangedException(message: String?)
    case unresolvableUsageUnitException(message: String?)
}

extension CostExplorerErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BillExpirationException":
            self = .billExpirationException(message: message)
        case "DataUnavailableException":
            self = .dataUnavailableException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "RequestChangedException":
            self = .requestChangedException(message: message)
        case "UnresolvableUsageUnitException":
            self = .unresolvableUsageUnitException(message: message)
        default:
            return nil
        }
    }
}