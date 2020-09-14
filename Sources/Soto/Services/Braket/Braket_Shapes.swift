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

import Foundation
import SotoCore

extension Braket {
    // MARK: Enums

    public enum CancellationStatus: String, CustomStringConvertible, Codable {
        case cancelled = "CANCELLED"
        case cancelling = "CANCELLING"
        public var description: String { return self.rawValue }
    }

    public enum DeviceStatus: String, CustomStringConvertible, Codable {
        case offline = "OFFLINE"
        case online = "ONLINE"
        public var description: String { return self.rawValue }
    }

    public enum DeviceType: String, CustomStringConvertible, Codable {
        case qpu = "QPU"
        case simulator = "SIMULATOR"
        public var description: String { return self.rawValue }
    }

    public enum QuantumTaskStatus: String, CustomStringConvertible, Codable {
        case cancelled = "CANCELLED"
        case cancelling = "CANCELLING"
        case completed = "COMPLETED"
        case created = "CREATED"
        case failed = "FAILED"
        case queued = "QUEUED"
        case running = "RUNNING"
        public var description: String { return self.rawValue }
    }

    public enum SearchQuantumTasksFilterOperator: String, CustomStringConvertible, Codable {
        case between = "BETWEEN"
        case equal = "EQUAL"
        case gt = "GT"
        case gte = "GTE"
        case lt = "LT"
        case lte = "LTE"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CancelQuantumTaskRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "quantumTaskArn", location: .uri(locationName: "quantumTaskArn"))
        ]

        /// The client token associated with the request.
        public let clientToken: String
        /// The ARN of the task to cancel.
        public let quantumTaskArn: String

        public init(clientToken: String = CancelQuantumTaskRequest.idempotencyToken(), quantumTaskArn: String) {
            self.clientToken = clientToken
            self.quantumTaskArn = quantumTaskArn
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 64)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.quantumTaskArn, name: "quantumTaskArn", parent: name, max: 256)
            try self.validate(self.quantumTaskArn, name: "quantumTaskArn", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken
        }
    }

    public struct CancelQuantumTaskResponse: AWSDecodableShape {
        /// The status of the cancellation request.
        public let cancellationStatus: CancellationStatus
        /// The ARN of the task.
        public let quantumTaskArn: String

        public init(cancellationStatus: CancellationStatus, quantumTaskArn: String) {
            self.cancellationStatus = cancellationStatus
            self.quantumTaskArn = quantumTaskArn
        }

        private enum CodingKeys: String, CodingKey {
            case cancellationStatus
            case quantumTaskArn
        }
    }

    public struct CreateQuantumTaskRequest: AWSEncodableShape {
        /// The action associated with the task.
        public let action: String
        /// The client token associated with the request.
        public let clientToken: String
        /// The ARN of the device to run the task on.
        public let deviceArn: String
        /// The parameters for the device to run the task on.
        public let deviceParameters: String?
        /// The S3 bucket to store task result files in.
        public let outputS3Bucket: String
        /// The key prefix for the location in the S3 bucket to store task results in.
        public let outputS3KeyPrefix: String
        /// The number of shots to use for the task.
        public let shots: Int64

        public init(action: String, clientToken: String = CreateQuantumTaskRequest.idempotencyToken(), deviceArn: String, deviceParameters: String? = nil, outputS3Bucket: String, outputS3KeyPrefix: String, shots: Int64) {
            self.action = action
            self.clientToken = clientToken
            self.deviceArn = deviceArn
            self.deviceParameters = deviceParameters
            self.outputS3Bucket = outputS3Bucket
            self.outputS3KeyPrefix = outputS3KeyPrefix
            self.shots = shots
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 64)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.deviceArn, name: "deviceArn", parent: name, max: 256)
            try self.validate(self.deviceArn, name: "deviceArn", parent: name, min: 1)
            try self.validate(self.deviceParameters, name: "deviceParameters", parent: name, max: 2048)
            try self.validate(self.deviceParameters, name: "deviceParameters", parent: name, min: 1)
            try self.validate(self.outputS3Bucket, name: "outputS3Bucket", parent: name, max: 63)
            try self.validate(self.outputS3Bucket, name: "outputS3Bucket", parent: name, min: 3)
            try self.validate(self.outputS3KeyPrefix, name: "outputS3KeyPrefix", parent: name, max: 1024)
            try self.validate(self.outputS3KeyPrefix, name: "outputS3KeyPrefix", parent: name, min: 1)
            try self.validate(self.shots, name: "shots", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case action
            case clientToken
            case deviceArn
            case deviceParameters
            case outputS3Bucket
            case outputS3KeyPrefix
            case shots
        }
    }

    public struct CreateQuantumTaskResponse: AWSDecodableShape {
        /// The ARN of the task created by the request.
        public let quantumTaskArn: String

        public init(quantumTaskArn: String) {
            self.quantumTaskArn = quantumTaskArn
        }

        private enum CodingKeys: String, CodingKey {
            case quantumTaskArn
        }
    }

    public struct DeviceSummary: AWSDecodableShape {
        /// The ARN of the device.
        public let deviceArn: String
        /// The name of the device.
        public let deviceName: String
        /// The status of the device.
        public let deviceStatus: DeviceStatus
        /// The type of the device.
        public let deviceType: DeviceType
        /// The provider of the device.
        public let providerName: String

        public init(deviceArn: String, deviceName: String, deviceStatus: DeviceStatus, deviceType: DeviceType, providerName: String) {
            self.deviceArn = deviceArn
            self.deviceName = deviceName
            self.deviceStatus = deviceStatus
            self.deviceType = deviceType
            self.providerName = providerName
        }

        private enum CodingKeys: String, CodingKey {
            case deviceArn
            case deviceName
            case deviceStatus
            case deviceType
            case providerName
        }
    }

    public struct GetDeviceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "deviceArn", location: .uri(locationName: "deviceArn"))
        ]

        /// The ARN of the device to retrieve.
        public let deviceArn: String

        public init(deviceArn: String) {
            self.deviceArn = deviceArn
        }

        public func validate(name: String) throws {
            try self.validate(self.deviceArn, name: "deviceArn", parent: name, max: 256)
            try self.validate(self.deviceArn, name: "deviceArn", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetDeviceResponse: AWSDecodableShape {
        /// The ARN of the device.
        public let deviceArn: String
        /// Details about the capabilities of the device.
        public let deviceCapabilities: String
        /// The name of the device.
        public let deviceName: String
        /// The status of the device.
        public let deviceStatus: DeviceStatus
        /// The type of the device.
        public let deviceType: DeviceType
        /// The name of the partner company for the device.
        public let providerName: String

        public init(deviceArn: String, deviceCapabilities: String, deviceName: String, deviceStatus: DeviceStatus, deviceType: DeviceType, providerName: String) {
            self.deviceArn = deviceArn
            self.deviceCapabilities = deviceCapabilities
            self.deviceName = deviceName
            self.deviceStatus = deviceStatus
            self.deviceType = deviceType
            self.providerName = providerName
        }

        private enum CodingKeys: String, CodingKey {
            case deviceArn
            case deviceCapabilities
            case deviceName
            case deviceStatus
            case deviceType
            case providerName
        }
    }

    public struct GetQuantumTaskRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "quantumTaskArn", location: .uri(locationName: "quantumTaskArn"))
        ]

        /// the ARN of the task to retrieve.
        public let quantumTaskArn: String

        public init(quantumTaskArn: String) {
            self.quantumTaskArn = quantumTaskArn
        }

        public func validate(name: String) throws {
            try self.validate(self.quantumTaskArn, name: "quantumTaskArn", parent: name, max: 256)
            try self.validate(self.quantumTaskArn, name: "quantumTaskArn", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetQuantumTaskResponse: AWSDecodableShape {
        /// The time at which the task was created.
        @Coding<ISO8601TimeStampCoder>
        public var createdAt: TimeStamp
        /// The ARN of the device the task was run on.
        public let deviceArn: String
        /// The parameters for the device on which the task ran.
        public let deviceParameters: String
        /// The time at which the task ended.
        @OptionalCoding<ISO8601TimeStampCoder>
        public var endedAt: TimeStamp?
        /// The reason that a task failed.
        public let failureReason: String?
        /// The S3 bucket where task results are stored.
        public let outputS3Bucket: String
        /// The folder in the S3 bucket where task results are stored.
        public let outputS3Directory: String
        /// The ARN of the task.
        public let quantumTaskArn: String
        /// The number of shots used in the task.
        public let shots: Int64
        /// The status of the task.
        public let status: QuantumTaskStatus

        public init(createdAt: TimeStamp, deviceArn: String, deviceParameters: String, endedAt: TimeStamp? = nil, failureReason: String? = nil, outputS3Bucket: String, outputS3Directory: String, quantumTaskArn: String, shots: Int64, status: QuantumTaskStatus) {
            self.createdAt = createdAt
            self.deviceArn = deviceArn
            self.deviceParameters = deviceParameters
            self.endedAt = endedAt
            self.failureReason = failureReason
            self.outputS3Bucket = outputS3Bucket
            self.outputS3Directory = outputS3Directory
            self.quantumTaskArn = quantumTaskArn
            self.shots = shots
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case createdAt
            case deviceArn
            case deviceParameters
            case endedAt
            case failureReason
            case outputS3Bucket
            case outputS3Directory
            case quantumTaskArn
            case shots
            case status
        }
    }

    public struct QuantumTaskSummary: AWSDecodableShape {
        /// The time at which the task was created.
        @Coding<ISO8601TimeStampCoder>
        public var createdAt: TimeStamp
        /// The ARN of the device the task ran on.
        public let deviceArn: String
        /// The time at which the task finished.
        @OptionalCoding<ISO8601TimeStampCoder>
        public var endedAt: TimeStamp?
        /// The S3 bucket where the task result file is stored..
        public let outputS3Bucket: String
        /// The folder in the S3 bucket where the task result file is stored.
        public let outputS3Directory: String
        /// The ARN of the task.
        public let quantumTaskArn: String
        /// The shots used for the task.
        public let shots: Int64
        /// The status of the task.
        public let status: QuantumTaskStatus

        public init(createdAt: TimeStamp, deviceArn: String, endedAt: TimeStamp? = nil, outputS3Bucket: String, outputS3Directory: String, quantumTaskArn: String, shots: Int64, status: QuantumTaskStatus) {
            self.createdAt = createdAt
            self.deviceArn = deviceArn
            self.endedAt = endedAt
            self.outputS3Bucket = outputS3Bucket
            self.outputS3Directory = outputS3Directory
            self.quantumTaskArn = quantumTaskArn
            self.shots = shots
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case createdAt
            case deviceArn
            case endedAt
            case outputS3Bucket
            case outputS3Directory
            case quantumTaskArn
            case shots
            case status
        }
    }

    public struct SearchDevicesFilter: AWSEncodableShape {
        /// The name to use to filter results.
        public let name: String
        /// The values to use to filter results.
        public let values: [String]

        public init(name: String, values: [String]) {
            self.name = name
            self.values = values
        }

        public func validate(name: String) throws {
            try self.validate(self.name, name: "name", parent: name, max: 64)
            try self.validate(self.name, name: "name", parent: name, min: 1)
            try self.values.forEach {
                try validate($0, name: "values[]", parent: name, max: 256)
                try validate($0, name: "values[]", parent: name, min: 1)
            }
            try self.validate(self.values, name: "values", parent: name, max: 10)
            try self.validate(self.values, name: "values", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case values
        }
    }

    public struct SearchDevicesRequest: AWSEncodableShape {
        /// The filter values to use to search for a device.
        public let filters: [SearchDevicesFilter]
        /// The maximum number of results to return in the response.
        public let maxResults: Int?
        /// A token used for pagination of results returned in the response. Use the token returned from the previous request continue results where the previous request ended.
        public let nextToken: String?

        public init(filters: [SearchDevicesFilter], maxResults: Int? = nil, nextToken: String? = nil) {
            self.filters = filters
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.filters.forEach {
                try $0.validate(name: "\(name).filters[]")
            }
            try self.validate(self.filters, name: "filters", parent: name, max: 10)
            try self.validate(self.filters, name: "filters", parent: name, min: 0)
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case filters
            case maxResults
            case nextToken
        }
    }

    public struct SearchDevicesResponse: AWSDecodableShape {
        /// An array of DeviceSummary objects for devices that match the specified filter values.
        public let devices: [DeviceSummary]
        /// A token used for pagination of results, or null if there are no additional results. Use the token value in a subsequent request to continue results where the previous request ended.
        public let nextToken: String?

        public init(devices: [DeviceSummary], nextToken: String? = nil) {
            self.devices = devices
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case devices
            case nextToken
        }
    }

    public struct SearchQuantumTasksFilter: AWSEncodableShape {
        /// The name of the device used for the task.
        public let name: String
        /// An operator to use in the filter.
        public let `operator`: SearchQuantumTasksFilterOperator
        /// The values to use for the filter.
        public let values: [String]

        public init(name: String, operator: SearchQuantumTasksFilterOperator, values: [String]) {
            self.name = name
            self.`operator` = `operator`
            self.values = values
        }

        public func validate(name: String) throws {
            try self.validate(self.name, name: "name", parent: name, max: 64)
            try self.validate(self.name, name: "name", parent: name, min: 1)
            try self.values.forEach {
                try validate($0, name: "values[]", parent: name, max: 256)
                try validate($0, name: "values[]", parent: name, min: 1)
            }
            try self.validate(self.values, name: "values", parent: name, max: 10)
            try self.validate(self.values, name: "values", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case `operator`
            case values
        }
    }

    public struct SearchQuantumTasksRequest: AWSEncodableShape {
        /// Array of SearchQuantumTasksFilter objects.
        public let filters: [SearchQuantumTasksFilter]
        /// Maximum number of results to return in the response.
        public let maxResults: Int?
        /// A token used for pagination of results returned in the response. Use the token returned from the previous request continue results where the previous request ended.
        public let nextToken: String?

        public init(filters: [SearchQuantumTasksFilter], maxResults: Int? = nil, nextToken: String? = nil) {
            self.filters = filters
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.filters.forEach {
                try $0.validate(name: "\(name).filters[]")
            }
            try self.validate(self.filters, name: "filters", parent: name, max: 10)
            try self.validate(self.filters, name: "filters", parent: name, min: 0)
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case filters
            case maxResults
            case nextToken
        }
    }

    public struct SearchQuantumTasksResponse: AWSDecodableShape {
        /// A token used for pagination of results, or null if there are no additional results. Use the token value in a subsequent request to continue results where the previous request ended.
        public let nextToken: String?
        /// An array of QuantumTaskSummary objects for tasks that match the specified filters.
        public let quantumTasks: [QuantumTaskSummary]

        public init(nextToken: String? = nil, quantumTasks: [QuantumTaskSummary]) {
            self.nextToken = nextToken
            self.quantumTasks = quantumTasks
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken
            case quantumTasks
        }
    }
}
