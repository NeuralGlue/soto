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
 Client object for interacting with AWS SMS service.

 AWS Server Migration Service AWS Server Migration Service (AWS SMS) makes it easier and faster for you to migrate your on-premises workloads to AWS. To learn more about AWS SMS, see the following resources:    AWS Server Migration Service product page     AWS Server Migration Service User Guide
 */
public struct SMS: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the SMS client
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
            amzTarget: "AWSServerMigrationService_V2016_10_24",
            service: "sms",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-10-24",
            endpoint: endpoint,
            possibleErrorTypes: [SMSErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Creates an application. An application consists of one or more server groups. Each server group contain one or more servers.
    public func createApp(_ input: CreateAppRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateAppResponse> {
        return self.client.execute(operation: "CreateApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a replication job. The replication job schedules periodic replication runs to replicate your server to AWS. Each replication run creates an Amazon Machine Image (AMI).
    public func createReplicationJob(_ input: CreateReplicationJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateReplicationJobResponse> {
        return self.client.execute(operation: "CreateReplicationJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the specified application. Optionally deletes the launched stack associated with the application and all AWS SMS replication jobs for servers in the application.
    public func deleteApp(_ input: DeleteAppRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteAppResponse> {
        return self.client.execute(operation: "DeleteApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the launch configuration for the specified application.
    public func deleteAppLaunchConfiguration(_ input: DeleteAppLaunchConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteAppLaunchConfigurationResponse> {
        return self.client.execute(operation: "DeleteAppLaunchConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the replication configuration for the specified application.
    public func deleteAppReplicationConfiguration(_ input: DeleteAppReplicationConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteAppReplicationConfigurationResponse> {
        return self.client.execute(operation: "DeleteAppReplicationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the validation configuration for the specified application.
    public func deleteAppValidationConfiguration(_ input: DeleteAppValidationConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteAppValidationConfigurationResponse> {
        return self.client.execute(operation: "DeleteAppValidationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the specified replication job. After you delete a replication job, there are no further replication runs. AWS deletes the contents of the Amazon S3 bucket used to store AWS SMS artifacts. The AMIs created by the replication runs are not deleted.
    public func deleteReplicationJob(_ input: DeleteReplicationJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteReplicationJobResponse> {
        return self.client.execute(operation: "DeleteReplicationJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes all servers from your server catalog.
    public func deleteServerCatalog(_ input: DeleteServerCatalogRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteServerCatalogResponse> {
        return self.client.execute(operation: "DeleteServerCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Disassociates the specified connector from AWS SMS. After you disassociate a connector, it is no longer available to support replication jobs.
    public func disassociateConnector(_ input: DisassociateConnectorRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DisassociateConnectorResponse> {
        return self.client.execute(operation: "DisassociateConnector", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Generates a target change set for a currently launched stack and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
    public func generateChangeSet(_ input: GenerateChangeSetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GenerateChangeSetResponse> {
        return self.client.execute(operation: "GenerateChangeSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Generates an AWS CloudFormation template based on the current launch configuration and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
    public func generateTemplate(_ input: GenerateTemplateRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GenerateTemplateResponse> {
        return self.client.execute(operation: "GenerateTemplate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieve information about the specified application.
    public func getApp(_ input: GetAppRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetAppResponse> {
        return self.client.execute(operation: "GetApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the application launch configuration associated with the specified application.
    public func getAppLaunchConfiguration(_ input: GetAppLaunchConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetAppLaunchConfigurationResponse> {
        return self.client.execute(operation: "GetAppLaunchConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the application replication configuration associated with the specified application.
    public func getAppReplicationConfiguration(_ input: GetAppReplicationConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetAppReplicationConfigurationResponse> {
        return self.client.execute(operation: "GetAppReplicationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves information about a configuration for validating an application.
    public func getAppValidationConfiguration(_ input: GetAppValidationConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetAppValidationConfigurationResponse> {
        return self.client.execute(operation: "GetAppValidationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves output from validating an application.
    public func getAppValidationOutput(_ input: GetAppValidationOutputRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetAppValidationOutputResponse> {
        return self.client.execute(operation: "GetAppValidationOutput", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the connectors registered with the AWS SMS.
    public func getConnectors(_ input: GetConnectorsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetConnectorsResponse> {
        return self.client.execute(operation: "GetConnectors", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the specified replication job or all of your replication jobs.
    public func getReplicationJobs(_ input: GetReplicationJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetReplicationJobsResponse> {
        return self.client.execute(operation: "GetReplicationJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the replication runs for the specified replication job.
    public func getReplicationRuns(_ input: GetReplicationRunsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetReplicationRunsResponse> {
        return self.client.execute(operation: "GetReplicationRuns", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the servers in your server catalog. Before you can describe your servers, you must import them using ImportServerCatalog.
    public func getServers(_ input: GetServersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetServersResponse> {
        return self.client.execute(operation: "GetServers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Allows application import from AWS Migration Hub.
    public func importAppCatalog(_ input: ImportAppCatalogRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ImportAppCatalogResponse> {
        return self.client.execute(operation: "ImportAppCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gathers a complete list of on-premises servers. Connectors must be installed and monitoring all servers to import. This call returns immediately, but might take additional time to retrieve all the servers.
    public func importServerCatalog(_ input: ImportServerCatalogRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ImportServerCatalogResponse> {
        return self.client.execute(operation: "ImportServerCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Launches the specified application as a stack in AWS CloudFormation.
    public func launchApp(_ input: LaunchAppRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<LaunchAppResponse> {
        return self.client.execute(operation: "LaunchApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves summaries for all applications.
    public func listApps(_ input: ListAppsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListAppsResponse> {
        return self.client.execute(operation: "ListApps", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Provides information to AWS SMS about whether application validation is successful.
    public func notifyAppValidationOutput(_ input: NotifyAppValidationOutputRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<NotifyAppValidationOutputResponse> {
        return self.client.execute(operation: "NotifyAppValidationOutput", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates or updates the launch configuration for the specified application.
    public func putAppLaunchConfiguration(_ input: PutAppLaunchConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutAppLaunchConfigurationResponse> {
        return self.client.execute(operation: "PutAppLaunchConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates or updates the replication configuration for the specified application.
    public func putAppReplicationConfiguration(_ input: PutAppReplicationConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutAppReplicationConfigurationResponse> {
        return self.client.execute(operation: "PutAppReplicationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates or updates a validation configuration for the specified application.
    public func putAppValidationConfiguration(_ input: PutAppValidationConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutAppValidationConfigurationResponse> {
        return self.client.execute(operation: "PutAppValidationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts replicating the specified application by creating replication jobs for each server in the application.
    public func startAppReplication(_ input: StartAppReplicationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartAppReplicationResponse> {
        return self.client.execute(operation: "StartAppReplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts an on-demand replication run for the specified application.
    public func startOnDemandAppReplication(_ input: StartOnDemandAppReplicationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartOnDemandAppReplicationResponse> {
        return self.client.execute(operation: "StartOnDemandAppReplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts an on-demand replication run for the specified replication job. This replication run starts immediately. This replication run is in addition to the ones already scheduled. There is a limit on the number of on-demand replications runs that you can request in a 24-hour period.
    public func startOnDemandReplicationRun(_ input: StartOnDemandReplicationRunRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartOnDemandReplicationRunResponse> {
        return self.client.execute(operation: "StartOnDemandReplicationRun", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Stops replicating the specified application by deleting the replication job for each server in the application.
    public func stopAppReplication(_ input: StopAppReplicationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StopAppReplicationResponse> {
        return self.client.execute(operation: "StopAppReplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Terminates the stack for the specified application.
    public func terminateApp(_ input: TerminateAppRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TerminateAppResponse> {
        return self.client.execute(operation: "TerminateApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the specified application.
    public func updateApp(_ input: UpdateAppRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateAppResponse> {
        return self.client.execute(operation: "UpdateApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the specified settings for the specified replication job.
    public func updateReplicationJob(_ input: UpdateReplicationJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateReplicationJobResponse> {
        return self.client.execute(operation: "UpdateReplicationJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }
}
