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
 Client object for interacting with AWS AppSync service.

 AWS AppSync provides API actions for creating and interacting with data sources using GraphQL from your application.
 */
public struct AppSync: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the AppSync client
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
            service: "appsync",
            serviceProtocol: .restjson,
            apiVersion: "2017-07-25",
            endpoint: endpoint,
            possibleErrorTypes: [AppSyncErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Creates a cache for the GraphQL API.
    public func createApiCache(_ input: CreateApiCacheRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateApiCacheResponse> {
        return self.client.execute(operation: "CreateApiCache", path: "/v1/apis/{apiId}/ApiCaches", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a unique key that you can distribute to clients who are executing your API.
    public func createApiKey(_ input: CreateApiKeyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateApiKeyResponse> {
        return self.client.execute(operation: "CreateApiKey", path: "/v1/apis/{apiId}/apikeys", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a DataSource object.
    public func createDataSource(_ input: CreateDataSourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateDataSourceResponse> {
        return self.client.execute(operation: "CreateDataSource", path: "/v1/apis/{apiId}/datasources", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a Function object. A function is a reusable entity. Multiple functions can be used to compose the resolver logic.
    public func createFunction(_ input: CreateFunctionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateFunctionResponse> {
        return self.client.execute(operation: "CreateFunction", path: "/v1/apis/{apiId}/functions", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a GraphqlApi object.
    public func createGraphqlApi(_ input: CreateGraphqlApiRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateGraphqlApiResponse> {
        return self.client.execute(operation: "CreateGraphqlApi", path: "/v1/apis", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a Resolver object. A resolver converts incoming requests into a format that a data source can understand and converts the data source's responses into GraphQL.
    public func createResolver(_ input: CreateResolverRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateResolverResponse> {
        return self.client.execute(operation: "CreateResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a Type object.
    public func createType(_ input: CreateTypeRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateTypeResponse> {
        return self.client.execute(operation: "CreateType", path: "/v1/apis/{apiId}/types", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an ApiCache object.
    public func deleteApiCache(_ input: DeleteApiCacheRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteApiCacheResponse> {
        return self.client.execute(operation: "DeleteApiCache", path: "/v1/apis/{apiId}/ApiCaches", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an API key.
    public func deleteApiKey(_ input: DeleteApiKeyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteApiKeyResponse> {
        return self.client.execute(operation: "DeleteApiKey", path: "/v1/apis/{apiId}/apikeys/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a DataSource object.
    public func deleteDataSource(_ input: DeleteDataSourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteDataSourceResponse> {
        return self.client.execute(operation: "DeleteDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a Function.
    public func deleteFunction(_ input: DeleteFunctionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteFunctionResponse> {
        return self.client.execute(operation: "DeleteFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a GraphqlApi object.
    public func deleteGraphqlApi(_ input: DeleteGraphqlApiRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteGraphqlApiResponse> {
        return self.client.execute(operation: "DeleteGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a Resolver object.
    public func deleteResolver(_ input: DeleteResolverRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteResolverResponse> {
        return self.client.execute(operation: "DeleteResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a Type object.
    public func deleteType(_ input: DeleteTypeRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteTypeResponse> {
        return self.client.execute(operation: "DeleteType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Flushes an ApiCache object.
    public func flushApiCache(_ input: FlushApiCacheRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<FlushApiCacheResponse> {
        return self.client.execute(operation: "FlushApiCache", path: "/v1/apis/{apiId}/FlushCache", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves an ApiCache object.
    public func getApiCache(_ input: GetApiCacheRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetApiCacheResponse> {
        return self.client.execute(operation: "GetApiCache", path: "/v1/apis/{apiId}/ApiCaches", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a DataSource object.
    public func getDataSource(_ input: GetDataSourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDataSourceResponse> {
        return self.client.execute(operation: "GetDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Get a Function.
    public func getFunction(_ input: GetFunctionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetFunctionResponse> {
        return self.client.execute(operation: "GetFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a GraphqlApi object.
    public func getGraphqlApi(_ input: GetGraphqlApiRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetGraphqlApiResponse> {
        return self.client.execute(operation: "GetGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the introspection schema for a GraphQL API.
    public func getIntrospectionSchema(_ input: GetIntrospectionSchemaRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetIntrospectionSchemaResponse> {
        return self.client.execute(operation: "GetIntrospectionSchema", path: "/v1/apis/{apiId}/schema", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a Resolver object.
    public func getResolver(_ input: GetResolverRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetResolverResponse> {
        return self.client.execute(operation: "GetResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the current status of a schema creation operation.
    public func getSchemaCreationStatus(_ input: GetSchemaCreationStatusRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetSchemaCreationStatusResponse> {
        return self.client.execute(operation: "GetSchemaCreationStatus", path: "/v1/apis/{apiId}/schemacreation", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a Type object.
    public func getType(_ input: GetTypeRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetTypeResponse> {
        return self.client.execute(operation: "GetType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the API keys for a given API.  API keys are deleted automatically sometime after they expire. However, they may still be included in the response until they have actually been deleted. You can safely call DeleteApiKey to manually delete a key before it's automatically deleted.
    public func listApiKeys(_ input: ListApiKeysRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListApiKeysResponse> {
        return self.client.execute(operation: "ListApiKeys", path: "/v1/apis/{apiId}/apikeys", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the data sources for a given API.
    public func listDataSources(_ input: ListDataSourcesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDataSourcesResponse> {
        return self.client.execute(operation: "ListDataSources", path: "/v1/apis/{apiId}/datasources", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  List multiple functions.
    public func listFunctions(_ input: ListFunctionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListFunctionsResponse> {
        return self.client.execute(operation: "ListFunctions", path: "/v1/apis/{apiId}/functions", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists your GraphQL APIs.
    public func listGraphqlApis(_ input: ListGraphqlApisRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListGraphqlApisResponse> {
        return self.client.execute(operation: "ListGraphqlApis", path: "/v1/apis", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the resolvers for a given API and type.
    public func listResolvers(_ input: ListResolversRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListResolversResponse> {
        return self.client.execute(operation: "ListResolvers", path: "/v1/apis/{apiId}/types/{typeName}/resolvers", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  List the resolvers that are associated with a specific function.
    public func listResolversByFunction(_ input: ListResolversByFunctionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListResolversByFunctionResponse> {
        return self.client.execute(operation: "ListResolversByFunction", path: "/v1/apis/{apiId}/functions/{functionId}/resolvers", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the tags for a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/v1/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the types for a given API.
    public func listTypes(_ input: ListTypesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTypesResponse> {
        return self.client.execute(operation: "ListTypes", path: "/v1/apis/{apiId}/types", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds a new schema to your GraphQL API. This operation is asynchronous. Use to determine when it has completed.
    public func startSchemaCreation(_ input: StartSchemaCreationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartSchemaCreationResponse> {
        return self.client.execute(operation: "StartSchemaCreation", path: "/v1/apis/{apiId}/schemacreation", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Tags a resource with user-supplied tags.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/v1/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Untags a resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/v1/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the cache for the GraphQL API.
    public func updateApiCache(_ input: UpdateApiCacheRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateApiCacheResponse> {
        return self.client.execute(operation: "UpdateApiCache", path: "/v1/apis/{apiId}/ApiCaches/update", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an API key.
    public func updateApiKey(_ input: UpdateApiKeyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateApiKeyResponse> {
        return self.client.execute(operation: "UpdateApiKey", path: "/v1/apis/{apiId}/apikeys/{id}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a DataSource object.
    public func updateDataSource(_ input: UpdateDataSourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateDataSourceResponse> {
        return self.client.execute(operation: "UpdateDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a Function object.
    public func updateFunction(_ input: UpdateFunctionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateFunctionResponse> {
        return self.client.execute(operation: "UpdateFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a GraphqlApi object.
    public func updateGraphqlApi(_ input: UpdateGraphqlApiRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateGraphqlApiResponse> {
        return self.client.execute(operation: "UpdateGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a Resolver object.
    public func updateResolver(_ input: UpdateResolverRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateResolverResponse> {
        return self.client.execute(operation: "UpdateResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a Type object.
    public func updateType(_ input: UpdateTypeRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateTypeResponse> {
        return self.client.execute(operation: "UpdateType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }
}
