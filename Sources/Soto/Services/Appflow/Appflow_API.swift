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

@_exported import SotoCore

/*
 Client object for interacting with AWS Appflow service.

 Welcome to the Amazon AppFlow API reference. This guide is for developers who need detailed information about the Amazon AppFlow API operations, data types, and errors.  Amazon AppFlow is a fully managed integration service that enables you to securely transfer data between software as a service (SaaS) applications like Salesforce, Marketo, Slack, and ServiceNow, and AWS services like Amazon S3 and Amazon Redshift.  Use the following links to get started on the Amazon AppFlow API:    Actions: An alphabetical list of all Amazon AppFlow API operations.    Data types: An alphabetical list of all Amazon AppFlow data types.    Common parameters: Parameters that all Query operations can use.    Common errors: Client and server errors that all operations can return.   If you're new to Amazon AppFlow, we recommend that you review the Amazon AppFlow User Guide. Amazon AppFlow API users can use vendor-specific mechanisms for OAuth, and include applicable OAuth attributes (such as auth-code and redirecturi) with the connector-specific ConnectorProfileProperties when creating a new connector profile using Amazon AppFlow API operations. For example, Salesforce users can refer to the  Authorize Apps with OAuth  documentation.
 */
public struct Appflow: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Appflow client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "appflow",
            serviceProtocol: .restjson,
            apiVersion: "2020-08-23",
            endpoint: endpoint,
            possibleErrorTypes: [AppflowErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///   Creates a new connector profile associated with your AWS account. There is a soft quota of 100 connector profiles per AWS account. If you need more connector profiles than this quota allows, you can submit a request to the Amazon AppFlow team through the Amazon AppFlow support channel.
    public func createConnectorProfile(_ input: CreateConnectorProfileRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateConnectorProfileResponse> {
        return self.client.execute(operation: "CreateConnectorProfile", path: "/create-connector-profile", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Enables your application to create a new flow using Amazon AppFlow. You must create a connector profile before calling this API. Please note that the Request Syntax below shows syntax for multiple destinations, however, you can only transfer data to one item in this list at a time. Amazon AppFlow does not currently support flows to multiple destinations at once.
    public func createFlow(_ input: CreateFlowRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateFlowResponse> {
        return self.client.execute(operation: "CreateFlow", path: "/create-flow", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Enables you to delete an existing connector profile.
    public func deleteConnectorProfile(_ input: DeleteConnectorProfileRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteConnectorProfileResponse> {
        return self.client.execute(operation: "DeleteConnectorProfile", path: "/delete-connector-profile", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Enables your application to delete an existing flow. Before deleting the flow, Amazon AppFlow validates the request by checking the flow configuration and status. You can delete flows one at a time.
    public func deleteFlow(_ input: DeleteFlowRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteFlowResponse> {
        return self.client.execute(operation: "DeleteFlow", path: "/delete-flow", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Provides details regarding the entity used with the connector, with a description of the data model for each entity.
    public func describeConnectorEntity(_ input: DescribeConnectorEntityRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeConnectorEntityResponse> {
        return self.client.execute(operation: "DescribeConnectorEntity", path: "/describe-connector-entity", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns a list of connector-profile details matching the provided connector-profile names and connector-types. Both input lists are optional, and you can use them to filter the result.  If no names or connector-types are provided, returns all connector profiles in a paginated form. If there is no match, this operation returns an empty list.
    public func describeConnectorProfiles(_ input: DescribeConnectorProfilesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeConnectorProfilesResponse> {
        return self.client.execute(operation: "DescribeConnectorProfiles", path: "/describe-connector-profiles", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Describes the connectors vended by Amazon AppFlow for specified connector types. If you don't specify a connector type, this operation describes all connectors vended by Amazon AppFlow. If there are more connectors than can be returned in one page, the response contains a nextToken object, which can be be passed in to the next call to the DescribeConnectors API operation to retrieve the next page.
    public func describeConnectors(_ input: DescribeConnectorsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeConnectorsResponse> {
        return self.client.execute(operation: "DescribeConnectors", path: "/describe-connectors", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Provides a description of the specified flow.
    public func describeFlow(_ input: DescribeFlowRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeFlowResponse> {
        return self.client.execute(operation: "DescribeFlow", path: "/describe-flow", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Fetches the execution history of the flow.
    public func describeFlowExecutionRecords(_ input: DescribeFlowExecutionRecordsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeFlowExecutionRecordsResponse> {
        return self.client.execute(operation: "DescribeFlowExecutionRecords", path: "/describe-flow-execution-records", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns the list of available connector entities supported by Amazon AppFlow. For example, you can query Salesforce for Account and Opportunity entities, or query ServiceNow for the Incident entity.
    public func listConnectorEntities(_ input: ListConnectorEntitiesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListConnectorEntitiesResponse> {
        return self.client.execute(operation: "ListConnectorEntities", path: "/list-connector-entities", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Lists all of the flows associated with your account.
    public func listFlows(_ input: ListFlowsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListFlowsResponse> {
        return self.client.execute(operation: "ListFlows", path: "/list-flows", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Retrieves the tags that are associated with a specified flow.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Activates an existing flow. For on-demand flows, this operation runs the flow immediately. For schedule and event-triggered flows, this operation activates the flow.
    public func startFlow(_ input: StartFlowRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartFlowResponse> {
        return self.client.execute(operation: "StartFlow", path: "/start-flow", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Deactivates the existing flow. For on-demand flows, this operation returns an unsupportedOperationException error message. For schedule and event-triggered flows, this operation deactivates the flow.
    public func stopFlow(_ input: StopFlowRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StopFlowResponse> {
        return self.client.execute(operation: "StopFlow", path: "/stop-flow", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Applies a tag to the specified flow.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Removes a tag from the specified flow.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Updates a given connector profile associated with your account.
    public func updateConnectorProfile(_ input: UpdateConnectorProfileRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateConnectorProfileResponse> {
        return self.client.execute(operation: "UpdateConnectorProfile", path: "/update-connector-profile", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Updates an existing flow.
    public func updateFlow(_ input: UpdateFlowRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateFlowResponse> {
        return self.client.execute(operation: "UpdateFlow", path: "/update-flow", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }
}
