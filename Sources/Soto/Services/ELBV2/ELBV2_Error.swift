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

/// Error enum for ELBV2
public enum ELBV2ErrorType: AWSErrorType {
    case aLPNPolicyNotSupportedException(message: String?)
    case allocationIdNotFoundException(message: String?)
    case availabilityZoneNotSupportedException(message: String?)
    case certificateNotFoundException(message: String?)
    case duplicateListenerException(message: String?)
    case duplicateLoadBalancerNameException(message: String?)
    case duplicateTagKeysException(message: String?)
    case duplicateTargetGroupNameException(message: String?)
    case healthUnavailableException(message: String?)
    case incompatibleProtocolsException(message: String?)
    case invalidConfigurationRequestException(message: String?)
    case invalidLoadBalancerActionException(message: String?)
    case invalidSchemeException(message: String?)
    case invalidSecurityGroupException(message: String?)
    case invalidSubnetException(message: String?)
    case invalidTargetException(message: String?)
    case listenerNotFoundException(message: String?)
    case loadBalancerNotFoundException(message: String?)
    case operationNotPermittedException(message: String?)
    case priorityInUseException(message: String?)
    case resourceInUseException(message: String?)
    case ruleNotFoundException(message: String?)
    case sSLPolicyNotFoundException(message: String?)
    case subnetNotFoundException(message: String?)
    case targetGroupAssociationLimitException(message: String?)
    case targetGroupNotFoundException(message: String?)
    case tooManyActionsException(message: String?)
    case tooManyCertificatesException(message: String?)
    case tooManyListenersException(message: String?)
    case tooManyLoadBalancersException(message: String?)
    case tooManyRegistrationsForTargetIdException(message: String?)
    case tooManyRulesException(message: String?)
    case tooManyTagsException(message: String?)
    case tooManyTargetGroupsException(message: String?)
    case tooManyTargetsException(message: String?)
    case tooManyUniqueTargetGroupsPerLoadBalancerException(message: String?)
    case unsupportedProtocolException(message: String?)
}

extension ELBV2ErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ALPNPolicyNotFound":
            self = .aLPNPolicyNotSupportedException(message: message)
        case "AllocationIdNotFound":
            self = .allocationIdNotFoundException(message: message)
        case "AvailabilityZoneNotSupported":
            self = .availabilityZoneNotSupportedException(message: message)
        case "CertificateNotFound":
            self = .certificateNotFoundException(message: message)
        case "DuplicateListener":
            self = .duplicateListenerException(message: message)
        case "DuplicateLoadBalancerName":
            self = .duplicateLoadBalancerNameException(message: message)
        case "DuplicateTagKeys":
            self = .duplicateTagKeysException(message: message)
        case "DuplicateTargetGroupName":
            self = .duplicateTargetGroupNameException(message: message)
        case "HealthUnavailable":
            self = .healthUnavailableException(message: message)
        case "IncompatibleProtocols":
            self = .incompatibleProtocolsException(message: message)
        case "InvalidConfigurationRequest":
            self = .invalidConfigurationRequestException(message: message)
        case "InvalidLoadBalancerAction":
            self = .invalidLoadBalancerActionException(message: message)
        case "InvalidScheme":
            self = .invalidSchemeException(message: message)
        case "InvalidSecurityGroup":
            self = .invalidSecurityGroupException(message: message)
        case "InvalidSubnet":
            self = .invalidSubnetException(message: message)
        case "InvalidTarget":
            self = .invalidTargetException(message: message)
        case "ListenerNotFound":
            self = .listenerNotFoundException(message: message)
        case "LoadBalancerNotFound":
            self = .loadBalancerNotFoundException(message: message)
        case "OperationNotPermitted":
            self = .operationNotPermittedException(message: message)
        case "PriorityInUse":
            self = .priorityInUseException(message: message)
        case "ResourceInUse":
            self = .resourceInUseException(message: message)
        case "RuleNotFound":
            self = .ruleNotFoundException(message: message)
        case "SSLPolicyNotFound":
            self = .sSLPolicyNotFoundException(message: message)
        case "SubnetNotFound":
            self = .subnetNotFoundException(message: message)
        case "TargetGroupAssociationLimit":
            self = .targetGroupAssociationLimitException(message: message)
        case "TargetGroupNotFound":
            self = .targetGroupNotFoundException(message: message)
        case "TooManyActions":
            self = .tooManyActionsException(message: message)
        case "TooManyCertificates":
            self = .tooManyCertificatesException(message: message)
        case "TooManyListeners":
            self = .tooManyListenersException(message: message)
        case "TooManyLoadBalancers":
            self = .tooManyLoadBalancersException(message: message)
        case "TooManyRegistrationsForTargetId":
            self = .tooManyRegistrationsForTargetIdException(message: message)
        case "TooManyRules":
            self = .tooManyRulesException(message: message)
        case "TooManyTags":
            self = .tooManyTagsException(message: message)
        case "TooManyTargetGroups":
            self = .tooManyTargetGroupsException(message: message)
        case "TooManyTargets":
            self = .tooManyTargetsException(message: message)
        case "TooManyUniqueTargetGroupsPerLoadBalancer":
            self = .tooManyUniqueTargetGroupsPerLoadBalancerException(message: message)
        case "UnsupportedProtocol":
            self = .unsupportedProtocolException(message: message)
        default:
            return nil
        }
    }
}

extension ELBV2ErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .aLPNPolicyNotSupportedException(let message):
            return "ALPNPolicyNotFound: \(message ?? "")"
        case .allocationIdNotFoundException(let message):
            return "AllocationIdNotFound: \(message ?? "")"
        case .availabilityZoneNotSupportedException(let message):
            return "AvailabilityZoneNotSupported: \(message ?? "")"
        case .certificateNotFoundException(let message):
            return "CertificateNotFound: \(message ?? "")"
        case .duplicateListenerException(let message):
            return "DuplicateListener: \(message ?? "")"
        case .duplicateLoadBalancerNameException(let message):
            return "DuplicateLoadBalancerName: \(message ?? "")"
        case .duplicateTagKeysException(let message):
            return "DuplicateTagKeys: \(message ?? "")"
        case .duplicateTargetGroupNameException(let message):
            return "DuplicateTargetGroupName: \(message ?? "")"
        case .healthUnavailableException(let message):
            return "HealthUnavailable: \(message ?? "")"
        case .incompatibleProtocolsException(let message):
            return "IncompatibleProtocols: \(message ?? "")"
        case .invalidConfigurationRequestException(let message):
            return "InvalidConfigurationRequest: \(message ?? "")"
        case .invalidLoadBalancerActionException(let message):
            return "InvalidLoadBalancerAction: \(message ?? "")"
        case .invalidSchemeException(let message):
            return "InvalidScheme: \(message ?? "")"
        case .invalidSecurityGroupException(let message):
            return "InvalidSecurityGroup: \(message ?? "")"
        case .invalidSubnetException(let message):
            return "InvalidSubnet: \(message ?? "")"
        case .invalidTargetException(let message):
            return "InvalidTarget: \(message ?? "")"
        case .listenerNotFoundException(let message):
            return "ListenerNotFound: \(message ?? "")"
        case .loadBalancerNotFoundException(let message):
            return "LoadBalancerNotFound: \(message ?? "")"
        case .operationNotPermittedException(let message):
            return "OperationNotPermitted: \(message ?? "")"
        case .priorityInUseException(let message):
            return "PriorityInUse: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUse: \(message ?? "")"
        case .ruleNotFoundException(let message):
            return "RuleNotFound: \(message ?? "")"
        case .sSLPolicyNotFoundException(let message):
            return "SSLPolicyNotFound: \(message ?? "")"
        case .subnetNotFoundException(let message):
            return "SubnetNotFound: \(message ?? "")"
        case .targetGroupAssociationLimitException(let message):
            return "TargetGroupAssociationLimit: \(message ?? "")"
        case .targetGroupNotFoundException(let message):
            return "TargetGroupNotFound: \(message ?? "")"
        case .tooManyActionsException(let message):
            return "TooManyActions: \(message ?? "")"
        case .tooManyCertificatesException(let message):
            return "TooManyCertificates: \(message ?? "")"
        case .tooManyListenersException(let message):
            return "TooManyListeners: \(message ?? "")"
        case .tooManyLoadBalancersException(let message):
            return "TooManyLoadBalancers: \(message ?? "")"
        case .tooManyRegistrationsForTargetIdException(let message):
            return "TooManyRegistrationsForTargetId: \(message ?? "")"
        case .tooManyRulesException(let message):
            return "TooManyRules: \(message ?? "")"
        case .tooManyTagsException(let message):
            return "TooManyTags: \(message ?? "")"
        case .tooManyTargetGroupsException(let message):
            return "TooManyTargetGroups: \(message ?? "")"
        case .tooManyTargetsException(let message):
            return "TooManyTargets: \(message ?? "")"
        case .tooManyUniqueTargetGroupsPerLoadBalancerException(let message):
            return "TooManyUniqueTargetGroupsPerLoadBalancer: \(message ?? "")"
        case .unsupportedProtocolException(let message):
            return "UnsupportedProtocol: \(message ?? "")"
        }
    }
}
