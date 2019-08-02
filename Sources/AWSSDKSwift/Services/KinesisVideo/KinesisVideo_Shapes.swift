// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension KinesisVideo {

    public enum APIName: String, CustomStringConvertible, Codable {
        case putMedia = "PUT_MEDIA"
        case getMedia = "GET_MEDIA"
        case listFragments = "LIST_FRAGMENTS"
        case getMediaForFragmentList = "GET_MEDIA_FOR_FRAGMENT_LIST"
        case getHlsStreamingSessionUrl = "GET_HLS_STREAMING_SESSION_URL"
        case getDashStreamingSessionUrl = "GET_DASH_STREAMING_SESSION_URL"
        public var description: String { return self.rawValue }
    }

    public enum ComparisonOperator: String, CustomStringConvertible, Codable {
        case beginsWith = "BEGINS_WITH"
        public var description: String { return self.rawValue }
    }

    public struct CreateStreamInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DataRetentionInHours", required: false, type: .integer), 
            AWSShapeMember(label: "DeviceName", required: false, type: .string), 
            AWSShapeMember(label: "KmsKeyId", required: false, type: .string), 
            AWSShapeMember(label: "MediaType", required: false, type: .string), 
            AWSShapeMember(label: "StreamName", required: true, type: .string), 
            AWSShapeMember(label: "Tags", required: false, type: .map)
        ]

        /// The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream. The default value is 0, indicating that the stream does not persist data. When the DataRetentionInHours value is 0, consumers can still consume the fragments that remain in the service host buffer, which has a retention time limit of 5 minutes and a retention memory limit of 200 MB. Fragments are removed from the buffer when either limit is reached.
        public let dataRetentionInHours: Int32?
        /// The name of the device that is writing to the stream.   In the current implementation, Kinesis Video Streams does not use this name. 
        public let deviceName: String?
        /// The ID of the AWS Key Management Service (AWS KMS) key that you want Kinesis Video Streams to use to encrypt stream data. If no key ID is specified, the default, Kinesis Video-managed key (aws/kinesisvideo) is used.  For more information, see DescribeKey. 
        public let kmsKeyId: String?
        /// The media type of the stream. Consumers of the stream can use this information when processing the stream. For more information about media types, see Media Types. If you choose to specify the MediaType, see Naming Requirements for guidelines. This parameter is optional; the default value is null (or empty in JSON).
        public let mediaType: String?
        /// A name for the stream that you are creating. The stream name is an identifier for the stream, and must be unique for each account and region.
        public let streamName: String
        /// A list of tags to associate with the specified stream. Each tag is a key-value pair (the value is optional).
        public let tags: [String: String]?

        public init(dataRetentionInHours: Int32? = nil, deviceName: String? = nil, kmsKeyId: String? = nil, mediaType: String? = nil, streamName: String, tags: [String: String]? = nil) {
            self.dataRetentionInHours = dataRetentionInHours
            self.deviceName = deviceName
            self.kmsKeyId = kmsKeyId
            self.mediaType = mediaType
            self.streamName = streamName
            self.tags = tags
        }

        public func validate() throws {
            try validate(dataRetentionInHours, name:"dataRetentionInHours", min: 0)
            try validate(deviceName, name:"deviceName", max: 128)
            try validate(deviceName, name:"deviceName", min: 1)
            try validate(deviceName, name:"deviceName", pattern: "[a-zA-Z0-9_.-]+")
            try validate(kmsKeyId, name:"kmsKeyId", max: 2048)
            try validate(kmsKeyId, name:"kmsKeyId", min: 1)
            try validate(mediaType, name:"mediaType", max: 128)
            try validate(mediaType, name:"mediaType", min: 1)
            try validate(mediaType, name:"mediaType", pattern: "[\\w\\-\\.\\+]+/[\\w\\-\\.\\+]+(,[\\w\\-\\.\\+]+/[\\w\\-\\.\\+]+)*")
            try validate(streamName, name:"streamName", max: 256)
            try validate(streamName, name:"streamName", min: 1)
            try validate(streamName, name:"streamName", pattern: "[a-zA-Z0-9_.-]+")
            try tags?.forEach {
                try validate($0.key, name:"tags[key:]", max: 128)
                try validate($0.key, name:"tags[key:]", min: 1)
                try validate($0.value, name:"tags[:value]", max: 256)
                try validate($0.value, name:"tags[:value]", min: 0)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case dataRetentionInHours = "DataRetentionInHours"
            case deviceName = "DeviceName"
            case kmsKeyId = "KmsKeyId"
            case mediaType = "MediaType"
            case streamName = "StreamName"
            case tags = "Tags"
        }
    }

    public struct CreateStreamOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "StreamARN", required: false, type: .string)
        ]

        /// The Amazon Resource Name (ARN) of the stream.
        public let streamARN: String?

        public init(streamARN: String? = nil) {
            self.streamARN = streamARN
        }

        private enum CodingKeys: String, CodingKey {
            case streamARN = "StreamARN"
        }
    }

    public struct DeleteStreamInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CurrentVersion", required: false, type: .string), 
            AWSShapeMember(label: "StreamARN", required: true, type: .string)
        ]

        /// Optional: The version of the stream that you want to delete.  Specify the version as a safeguard to ensure that your are deleting the correct stream. To get the stream version, use the DescribeStream API. If not specified, only the CreationTime is checked before deleting the stream.
        public let currentVersion: String?
        /// The Amazon Resource Name (ARN) of the stream that you want to delete. 
        public let streamARN: String

        public init(currentVersion: String? = nil, streamARN: String) {
            self.currentVersion = currentVersion
            self.streamARN = streamARN
        }

        public func validate() throws {
            try validate(currentVersion, name:"currentVersion", max: 64)
            try validate(currentVersion, name:"currentVersion", min: 1)
            try validate(currentVersion, name:"currentVersion", pattern: "[a-zA-Z0-9]+")
            try validate(streamARN, name:"streamARN", max: 1024)
            try validate(streamARN, name:"streamARN", min: 1)
            try validate(streamARN, name:"streamARN", pattern: "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+")
        }

        private enum CodingKeys: String, CodingKey {
            case currentVersion = "CurrentVersion"
            case streamARN = "StreamARN"
        }
    }

    public struct DeleteStreamOutput: AWSShape {


        public init() {
        }

    }

    public struct DescribeStreamInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "StreamARN", required: false, type: .string), 
            AWSShapeMember(label: "StreamName", required: false, type: .string)
        ]

        /// The Amazon Resource Name (ARN) of the stream.
        public let streamARN: String?
        /// The name of the stream.
        public let streamName: String?

        public init(streamARN: String? = nil, streamName: String? = nil) {
            self.streamARN = streamARN
            self.streamName = streamName
        }

        public func validate() throws {
            try validate(streamARN, name:"streamARN", max: 1024)
            try validate(streamARN, name:"streamARN", min: 1)
            try validate(streamARN, name:"streamARN", pattern: "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+")
            try validate(streamName, name:"streamName", max: 256)
            try validate(streamName, name:"streamName", min: 1)
            try validate(streamName, name:"streamName", pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case streamARN = "StreamARN"
            case streamName = "StreamName"
        }
    }

    public struct DescribeStreamOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "StreamInfo", required: false, type: .structure)
        ]

        /// An object that describes the stream.
        public let streamInfo: StreamInfo?

        public init(streamInfo: StreamInfo? = nil) {
            self.streamInfo = streamInfo
        }

        private enum CodingKeys: String, CodingKey {
            case streamInfo = "StreamInfo"
        }
    }

    public struct GetDataEndpointInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "APIName", required: true, type: .enum), 
            AWSShapeMember(label: "StreamARN", required: false, type: .string), 
            AWSShapeMember(label: "StreamName", required: false, type: .string)
        ]

        /// The name of the API action for which to get an endpoint.
        public let aPIName: APIName
        /// The Amazon Resource Name (ARN) of the stream that you want to get the endpoint for. You must specify either this parameter or a StreamName in the request. 
        public let streamARN: String?
        /// The name of the stream that you want to get the endpoint for. You must specify either this parameter or a StreamARN in the request.
        public let streamName: String?

        public init(aPIName: APIName, streamARN: String? = nil, streamName: String? = nil) {
            self.aPIName = aPIName
            self.streamARN = streamARN
            self.streamName = streamName
        }

        public func validate() throws {
            try validate(streamARN, name:"streamARN", max: 1024)
            try validate(streamARN, name:"streamARN", min: 1)
            try validate(streamARN, name:"streamARN", pattern: "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+")
            try validate(streamName, name:"streamName", max: 256)
            try validate(streamName, name:"streamName", min: 1)
            try validate(streamName, name:"streamName", pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case aPIName = "APIName"
            case streamARN = "StreamARN"
            case streamName = "StreamName"
        }
    }

    public struct GetDataEndpointOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DataEndpoint", required: false, type: .string)
        ]

        /// The endpoint value. To read data from the stream or to write data to it, specify this endpoint in your application.
        public let dataEndpoint: String?

        public init(dataEndpoint: String? = nil) {
            self.dataEndpoint = dataEndpoint
        }

        private enum CodingKeys: String, CodingKey {
            case dataEndpoint = "DataEndpoint"
        }
    }

    public struct ListStreamsInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "StreamNameCondition", required: false, type: .structure)
        ]

        /// The maximum number of streams to return in the response. The default is 10,000.
        public let maxResults: Int32?
        /// If you specify this parameter, when the result of a ListStreams operation is truncated, the call returns the NextToken in the response. To get another batch of streams, provide this token in your next request.
        public let nextToken: String?
        /// Optional: Returns only streams that satisfy a specific condition. Currently, you can specify only the prefix of a stream name as a condition. 
        public let streamNameCondition: StreamNameCondition?

        public init(maxResults: Int32? = nil, nextToken: String? = nil, streamNameCondition: StreamNameCondition? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.streamNameCondition = streamNameCondition
        }

        public func validate() throws {
            try validate(maxResults, name:"maxResults", max: 10000)
            try validate(maxResults, name:"maxResults", min: 1)
            try validate(nextToken, name:"nextToken", max: 512)
            try validate(nextToken, name:"nextToken", min: 0)
            try streamNameCondition?.validate()
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case streamNameCondition = "StreamNameCondition"
        }
    }

    public struct ListStreamsOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "StreamInfoList", required: false, type: .list)
        ]

        /// If the response is truncated, the call returns this element with a token. To get the next batch of streams, use this token in your next request. 
        public let nextToken: String?
        /// An array of StreamInfo objects.
        public let streamInfoList: [StreamInfo]?

        public init(nextToken: String? = nil, streamInfoList: [StreamInfo]? = nil) {
            self.nextToken = nextToken
            self.streamInfoList = streamInfoList
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case streamInfoList = "StreamInfoList"
        }
    }

    public struct ListTagsForStreamInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "StreamARN", required: false, type: .string), 
            AWSShapeMember(label: "StreamName", required: false, type: .string)
        ]

        /// If you specify this parameter and the result of a ListTagsForStream call is truncated, the response includes a token that you can use in the next request to fetch the next batch of tags.
        public let nextToken: String?
        /// The Amazon Resource Name (ARN) of the stream that you want to list tags for.
        public let streamARN: String?
        /// The name of the stream that you want to list tags for.
        public let streamName: String?

        public init(nextToken: String? = nil, streamARN: String? = nil, streamName: String? = nil) {
            self.nextToken = nextToken
            self.streamARN = streamARN
            self.streamName = streamName
        }

        public func validate() throws {
            try validate(nextToken, name:"nextToken", max: 512)
            try validate(nextToken, name:"nextToken", min: 0)
            try validate(streamARN, name:"streamARN", max: 1024)
            try validate(streamARN, name:"streamARN", min: 1)
            try validate(streamARN, name:"streamARN", pattern: "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+")
            try validate(streamName, name:"streamName", max: 256)
            try validate(streamName, name:"streamName", min: 1)
            try validate(streamName, name:"streamName", pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case streamARN = "StreamARN"
            case streamName = "StreamName"
        }
    }

    public struct ListTagsForStreamOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "Tags", required: false, type: .map)
        ]

        /// If you specify this parameter and the result of a ListTags call is truncated, the response includes a token that you can use in the next request to fetch the next set of tags.
        public let nextToken: String?
        /// A map of tag keys and values associated with the specified stream.
        public let tags: [String: String]?

        public init(nextToken: String? = nil, tags: [String: String]? = nil) {
            self.nextToken = nextToken
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case tags = "Tags"
        }
    }

    public enum Status: String, CustomStringConvertible, Codable {
        case creating = "CREATING"
        case active = "ACTIVE"
        case updating = "UPDATING"
        case deleting = "DELETING"
        public var description: String { return self.rawValue }
    }

    public struct StreamInfo: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CreationTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "DataRetentionInHours", required: false, type: .integer), 
            AWSShapeMember(label: "DeviceName", required: false, type: .string), 
            AWSShapeMember(label: "KmsKeyId", required: false, type: .string), 
            AWSShapeMember(label: "MediaType", required: false, type: .string), 
            AWSShapeMember(label: "Status", required: false, type: .enum), 
            AWSShapeMember(label: "StreamARN", required: false, type: .string), 
            AWSShapeMember(label: "StreamName", required: false, type: .string), 
            AWSShapeMember(label: "Version", required: false, type: .string)
        ]

        /// A time stamp that indicates when the stream was created.
        public let creationTime: TimeStamp?
        /// How long the stream retains data, in hours.
        public let dataRetentionInHours: Int32?
        /// The name of the device that is associated with the stream.
        public let deviceName: String?
        /// The ID of the AWS Key Management Service (AWS KMS) key that Kinesis Video Streams uses to encrypt data on the stream.
        public let kmsKeyId: String?
        /// The MediaType of the stream. 
        public let mediaType: String?
        /// The status of the stream.
        public let status: Status?
        /// The Amazon Resource Name (ARN) of the stream.
        public let streamARN: String?
        /// The name of the stream.
        public let streamName: String?
        /// The version of the stream.
        public let version: String?

        public init(creationTime: TimeStamp? = nil, dataRetentionInHours: Int32? = nil, deviceName: String? = nil, kmsKeyId: String? = nil, mediaType: String? = nil, status: Status? = nil, streamARN: String? = nil, streamName: String? = nil, version: String? = nil) {
            self.creationTime = creationTime
            self.dataRetentionInHours = dataRetentionInHours
            self.deviceName = deviceName
            self.kmsKeyId = kmsKeyId
            self.mediaType = mediaType
            self.status = status
            self.streamARN = streamARN
            self.streamName = streamName
            self.version = version
        }

        private enum CodingKeys: String, CodingKey {
            case creationTime = "CreationTime"
            case dataRetentionInHours = "DataRetentionInHours"
            case deviceName = "DeviceName"
            case kmsKeyId = "KmsKeyId"
            case mediaType = "MediaType"
            case status = "Status"
            case streamARN = "StreamARN"
            case streamName = "StreamName"
            case version = "Version"
        }
    }

    public struct StreamNameCondition: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ComparisonOperator", required: false, type: .enum), 
            AWSShapeMember(label: "ComparisonValue", required: false, type: .string)
        ]

        /// A comparison operator. Currently, you can specify only the BEGINS_WITH operator, which finds streams whose names start with a given prefix.
        public let comparisonOperator: ComparisonOperator?
        /// A value to compare.
        public let comparisonValue: String?

        public init(comparisonOperator: ComparisonOperator? = nil, comparisonValue: String? = nil) {
            self.comparisonOperator = comparisonOperator
            self.comparisonValue = comparisonValue
        }

        public func validate() throws {
            try validate(comparisonValue, name:"comparisonValue", max: 256)
            try validate(comparisonValue, name:"comparisonValue", min: 1)
            try validate(comparisonValue, name:"comparisonValue", pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case comparisonOperator = "ComparisonOperator"
            case comparisonValue = "ComparisonValue"
        }
    }

    public struct TagStreamInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "StreamARN", required: false, type: .string), 
            AWSShapeMember(label: "StreamName", required: false, type: .string), 
            AWSShapeMember(label: "Tags", required: true, type: .map)
        ]

        /// The Amazon Resource Name (ARN) of the resource that you want to add the tag or tags to.
        public let streamARN: String?
        /// The name of the stream that you want to add the tag or tags to.
        public let streamName: String?
        /// A list of tags to associate with the specified stream. Each tag is a key-value pair (the value is optional).
        public let tags: [String: String]

        public init(streamARN: String? = nil, streamName: String? = nil, tags: [String: String]) {
            self.streamARN = streamARN
            self.streamName = streamName
            self.tags = tags
        }

        public func validate() throws {
            try validate(streamARN, name:"streamARN", max: 1024)
            try validate(streamARN, name:"streamARN", min: 1)
            try validate(streamARN, name:"streamARN", pattern: "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+")
            try validate(streamName, name:"streamName", max: 256)
            try validate(streamName, name:"streamName", min: 1)
            try validate(streamName, name:"streamName", pattern: "[a-zA-Z0-9_.-]+")
            try tags.forEach {
                try validate($0.key, name:"tags[key:]", max: 128)
                try validate($0.key, name:"tags[key:]", min: 1)
                try validate($0.value, name:"tags[:value]", max: 256)
                try validate($0.value, name:"tags[:value]", min: 0)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case streamARN = "StreamARN"
            case streamName = "StreamName"
            case tags = "Tags"
        }
    }

    public struct TagStreamOutput: AWSShape {


        public init() {
        }

    }

    public struct UntagStreamInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "StreamARN", required: false, type: .string), 
            AWSShapeMember(label: "StreamName", required: false, type: .string), 
            AWSShapeMember(label: "TagKeyList", required: true, type: .list)
        ]

        /// The Amazon Resource Name (ARN) of the stream that you want to remove tags from.
        public let streamARN: String?
        /// The name of the stream that you want to remove tags from.
        public let streamName: String?
        /// A list of the keys of the tags that you want to remove.
        public let tagKeyList: [String]

        public init(streamARN: String? = nil, streamName: String? = nil, tagKeyList: [String]) {
            self.streamARN = streamARN
            self.streamName = streamName
            self.tagKeyList = tagKeyList
        }

        public func validate() throws {
            try validate(streamARN, name:"streamARN", max: 1024)
            try validate(streamARN, name:"streamARN", min: 1)
            try validate(streamARN, name:"streamARN", pattern: "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+")
            try validate(streamName, name:"streamName", max: 256)
            try validate(streamName, name:"streamName", min: 1)
            try validate(streamName, name:"streamName", pattern: "[a-zA-Z0-9_.-]+")
            try tagKeyList.forEach {
                try validate($0, name:"tagKeyList[]", max: 128)
                try validate($0, name:"tagKeyList[]", min: 1)
            }
            try validate(tagKeyList, name:"tagKeyList", max: 50)
            try validate(tagKeyList, name:"tagKeyList", min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case streamARN = "StreamARN"
            case streamName = "StreamName"
            case tagKeyList = "TagKeyList"
        }
    }

    public struct UntagStreamOutput: AWSShape {


        public init() {
        }

    }

    public struct UpdateDataRetentionInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CurrentVersion", required: true, type: .string), 
            AWSShapeMember(label: "DataRetentionChangeInHours", required: true, type: .integer), 
            AWSShapeMember(label: "Operation", required: true, type: .enum), 
            AWSShapeMember(label: "StreamARN", required: false, type: .string), 
            AWSShapeMember(label: "StreamName", required: false, type: .string)
        ]

        /// The version of the stream whose retention period you want to change. To get the version, call either the DescribeStream or the ListStreams API.
        public let currentVersion: String
        /// The retention period, in hours. The value you specify replaces the current value. The maximum value for this parameter is 87600 (ten years).
        public let dataRetentionChangeInHours: Int32
        /// Indicates whether you want to increase or decrease the retention period.
        public let operation: UpdateDataRetentionOperation
        /// The Amazon Resource Name (ARN) of the stream whose retention period you want to change.
        public let streamARN: String?
        /// The name of the stream whose retention period you want to change.
        public let streamName: String?

        public init(currentVersion: String, dataRetentionChangeInHours: Int32, operation: UpdateDataRetentionOperation, streamARN: String? = nil, streamName: String? = nil) {
            self.currentVersion = currentVersion
            self.dataRetentionChangeInHours = dataRetentionChangeInHours
            self.operation = operation
            self.streamARN = streamARN
            self.streamName = streamName
        }

        public func validate() throws {
            try validate(currentVersion, name:"currentVersion", max: 64)
            try validate(currentVersion, name:"currentVersion", min: 1)
            try validate(currentVersion, name:"currentVersion", pattern: "[a-zA-Z0-9]+")
            try validate(dataRetentionChangeInHours, name:"dataRetentionChangeInHours", min: 1)
            try validate(streamARN, name:"streamARN", max: 1024)
            try validate(streamARN, name:"streamARN", min: 1)
            try validate(streamARN, name:"streamARN", pattern: "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+")
            try validate(streamName, name:"streamName", max: 256)
            try validate(streamName, name:"streamName", min: 1)
            try validate(streamName, name:"streamName", pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case currentVersion = "CurrentVersion"
            case dataRetentionChangeInHours = "DataRetentionChangeInHours"
            case operation = "Operation"
            case streamARN = "StreamARN"
            case streamName = "StreamName"
        }
    }

    public enum UpdateDataRetentionOperation: String, CustomStringConvertible, Codable {
        case increaseDataRetention = "INCREASE_DATA_RETENTION"
        case decreaseDataRetention = "DECREASE_DATA_RETENTION"
        public var description: String { return self.rawValue }
    }

    public struct UpdateDataRetentionOutput: AWSShape {


        public init() {
        }

    }

    public struct UpdateStreamInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CurrentVersion", required: true, type: .string), 
            AWSShapeMember(label: "DeviceName", required: false, type: .string), 
            AWSShapeMember(label: "MediaType", required: false, type: .string), 
            AWSShapeMember(label: "StreamARN", required: false, type: .string), 
            AWSShapeMember(label: "StreamName", required: false, type: .string)
        ]

        /// The version of the stream whose metadata you want to update.
        public let currentVersion: String
        /// The name of the device that is writing to the stream.    In the current implementation, Kinesis Video Streams does not use this name.  
        public let deviceName: String?
        /// The stream's media type. Use MediaType to specify the type of content that the stream contains to the consumers of the stream. For more information about media types, see Media Types. If you choose to specify the MediaType, see Naming Requirements. To play video on the console, you must specify the correct video type. For example, if the video in the stream is H.264, specify video/h264 as the MediaType.
        public let mediaType: String?
        /// The ARN of the stream whose metadata you want to update.
        public let streamARN: String?
        /// The name of the stream whose metadata you want to update. The stream name is an identifier for the stream, and must be unique for each account and region.
        public let streamName: String?

        public init(currentVersion: String, deviceName: String? = nil, mediaType: String? = nil, streamARN: String? = nil, streamName: String? = nil) {
            self.currentVersion = currentVersion
            self.deviceName = deviceName
            self.mediaType = mediaType
            self.streamARN = streamARN
            self.streamName = streamName
        }

        public func validate() throws {
            try validate(currentVersion, name:"currentVersion", max: 64)
            try validate(currentVersion, name:"currentVersion", min: 1)
            try validate(currentVersion, name:"currentVersion", pattern: "[a-zA-Z0-9]+")
            try validate(deviceName, name:"deviceName", max: 128)
            try validate(deviceName, name:"deviceName", min: 1)
            try validate(deviceName, name:"deviceName", pattern: "[a-zA-Z0-9_.-]+")
            try validate(mediaType, name:"mediaType", max: 128)
            try validate(mediaType, name:"mediaType", min: 1)
            try validate(mediaType, name:"mediaType", pattern: "[\\w\\-\\.\\+]+/[\\w\\-\\.\\+]+(,[\\w\\-\\.\\+]+/[\\w\\-\\.\\+]+)*")
            try validate(streamARN, name:"streamARN", max: 1024)
            try validate(streamARN, name:"streamARN", min: 1)
            try validate(streamARN, name:"streamARN", pattern: "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+")
            try validate(streamName, name:"streamName", max: 256)
            try validate(streamName, name:"streamName", min: 1)
            try validate(streamName, name:"streamName", pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case currentVersion = "CurrentVersion"
            case deviceName = "DeviceName"
            case mediaType = "MediaType"
            case streamARN = "StreamARN"
            case streamName = "StreamName"
        }
    }

    public struct UpdateStreamOutput: AWSShape {


        public init() {
        }

    }
}
