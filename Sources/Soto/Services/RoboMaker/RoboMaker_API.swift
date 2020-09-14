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
 Client object for interacting with AWS RoboMaker service.

 This section provides documentation for the AWS RoboMaker API operations.
 */
public struct RoboMaker: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the RoboMaker client
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
            service: "robomaker",
            serviceProtocol: .restjson,
            apiVersion: "2018-06-29",
            endpoint: endpoint,
            possibleErrorTypes: [RoboMakerErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Deletes one or more worlds in a batch operation.
    public func batchDeleteWorlds(_ input: BatchDeleteWorldsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchDeleteWorldsResponse> {
        return self.client.execute(operation: "BatchDeleteWorlds", path: "/batchDeleteWorlds", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes one or more simulation jobs.
    public func batchDescribeSimulationJob(_ input: BatchDescribeSimulationJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchDescribeSimulationJobResponse> {
        return self.client.execute(operation: "BatchDescribeSimulationJob", path: "/batchDescribeSimulationJob", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Cancels the specified deployment job.
    public func cancelDeploymentJob(_ input: CancelDeploymentJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CancelDeploymentJobResponse> {
        return self.client.execute(operation: "CancelDeploymentJob", path: "/cancelDeploymentJob", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Cancels the specified simulation job.
    public func cancelSimulationJob(_ input: CancelSimulationJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CancelSimulationJobResponse> {
        return self.client.execute(operation: "CancelSimulationJob", path: "/cancelSimulationJob", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Cancels a simulation job batch. When you cancel a simulation job batch, you are also cancelling all of the active simulation jobs created as part of the batch.
    public func cancelSimulationJobBatch(_ input: CancelSimulationJobBatchRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CancelSimulationJobBatchResponse> {
        return self.client.execute(operation: "CancelSimulationJobBatch", path: "/cancelSimulationJobBatch", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Cancels the specified export job.
    public func cancelWorldExportJob(_ input: CancelWorldExportJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CancelWorldExportJobResponse> {
        return self.client.execute(operation: "CancelWorldExportJob", path: "/cancelWorldExportJob", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Cancels the specified world generator job.
    public func cancelWorldGenerationJob(_ input: CancelWorldGenerationJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CancelWorldGenerationJobResponse> {
        return self.client.execute(operation: "CancelWorldGenerationJob", path: "/cancelWorldGenerationJob", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deploys a specific version of a robot application to robots in a fleet. The robot application must have a numbered applicationVersion for consistency reasons. To create a new version, use CreateRobotApplicationVersion or see Creating a Robot Application Version.   After 90 days, deployment jobs expire and will be deleted. They will no longer be accessible.
    public func createDeploymentJob(_ input: CreateDeploymentJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateDeploymentJobResponse> {
        return self.client.execute(operation: "CreateDeploymentJob", path: "/createDeploymentJob", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a fleet, a logical group of robots running the same robot application.
    public func createFleet(_ input: CreateFleetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateFleetResponse> {
        return self.client.execute(operation: "CreateFleet", path: "/createFleet", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a robot.
    public func createRobot(_ input: CreateRobotRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateRobotResponse> {
        return self.client.execute(operation: "CreateRobot", path: "/createRobot", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a robot application.
    public func createRobotApplication(_ input: CreateRobotApplicationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateRobotApplicationResponse> {
        return self.client.execute(operation: "CreateRobotApplication", path: "/createRobotApplication", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a version of a robot application.
    public func createRobotApplicationVersion(_ input: CreateRobotApplicationVersionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateRobotApplicationVersionResponse> {
        return self.client.execute(operation: "CreateRobotApplicationVersion", path: "/createRobotApplicationVersion", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a simulation application.
    public func createSimulationApplication(_ input: CreateSimulationApplicationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateSimulationApplicationResponse> {
        return self.client.execute(operation: "CreateSimulationApplication", path: "/createSimulationApplication", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a simulation application with a specific revision id.
    public func createSimulationApplicationVersion(_ input: CreateSimulationApplicationVersionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateSimulationApplicationVersionResponse> {
        return self.client.execute(operation: "CreateSimulationApplicationVersion", path: "/createSimulationApplicationVersion", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a simulation job.  After 90 days, simulation jobs expire and will be deleted. They will no longer be accessible.
    public func createSimulationJob(_ input: CreateSimulationJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateSimulationJobResponse> {
        return self.client.execute(operation: "CreateSimulationJob", path: "/createSimulationJob", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a world export job.
    public func createWorldExportJob(_ input: CreateWorldExportJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateWorldExportJobResponse> {
        return self.client.execute(operation: "CreateWorldExportJob", path: "/createWorldExportJob", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates worlds using the specified template.
    public func createWorldGenerationJob(_ input: CreateWorldGenerationJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateWorldGenerationJobResponse> {
        return self.client.execute(operation: "CreateWorldGenerationJob", path: "/createWorldGenerationJob", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a world template.
    public func createWorldTemplate(_ input: CreateWorldTemplateRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateWorldTemplateResponse> {
        return self.client.execute(operation: "CreateWorldTemplate", path: "/createWorldTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a fleet.
    public func deleteFleet(_ input: DeleteFleetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteFleetResponse> {
        return self.client.execute(operation: "DeleteFleet", path: "/deleteFleet", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a robot.
    public func deleteRobot(_ input: DeleteRobotRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteRobotResponse> {
        return self.client.execute(operation: "DeleteRobot", path: "/deleteRobot", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a robot application.
    public func deleteRobotApplication(_ input: DeleteRobotApplicationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteRobotApplicationResponse> {
        return self.client.execute(operation: "DeleteRobotApplication", path: "/deleteRobotApplication", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a simulation application.
    public func deleteSimulationApplication(_ input: DeleteSimulationApplicationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteSimulationApplicationResponse> {
        return self.client.execute(operation: "DeleteSimulationApplication", path: "/deleteSimulationApplication", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a world template.
    public func deleteWorldTemplate(_ input: DeleteWorldTemplateRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteWorldTemplateResponse> {
        return self.client.execute(operation: "DeleteWorldTemplate", path: "/deleteWorldTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deregisters a robot.
    public func deregisterRobot(_ input: DeregisterRobotRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeregisterRobotResponse> {
        return self.client.execute(operation: "DeregisterRobot", path: "/deregisterRobot", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes a deployment job.
    public func describeDeploymentJob(_ input: DescribeDeploymentJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeDeploymentJobResponse> {
        return self.client.execute(operation: "DescribeDeploymentJob", path: "/describeDeploymentJob", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes a fleet.
    public func describeFleet(_ input: DescribeFleetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeFleetResponse> {
        return self.client.execute(operation: "DescribeFleet", path: "/describeFleet", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes a robot.
    public func describeRobot(_ input: DescribeRobotRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeRobotResponse> {
        return self.client.execute(operation: "DescribeRobot", path: "/describeRobot", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes a robot application.
    public func describeRobotApplication(_ input: DescribeRobotApplicationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeRobotApplicationResponse> {
        return self.client.execute(operation: "DescribeRobotApplication", path: "/describeRobotApplication", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes a simulation application.
    public func describeSimulationApplication(_ input: DescribeSimulationApplicationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeSimulationApplicationResponse> {
        return self.client.execute(operation: "DescribeSimulationApplication", path: "/describeSimulationApplication", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes a simulation job.
    public func describeSimulationJob(_ input: DescribeSimulationJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeSimulationJobResponse> {
        return self.client.execute(operation: "DescribeSimulationJob", path: "/describeSimulationJob", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes a simulation job batch.
    public func describeSimulationJobBatch(_ input: DescribeSimulationJobBatchRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeSimulationJobBatchResponse> {
        return self.client.execute(operation: "DescribeSimulationJobBatch", path: "/describeSimulationJobBatch", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes a world.
    public func describeWorld(_ input: DescribeWorldRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeWorldResponse> {
        return self.client.execute(operation: "DescribeWorld", path: "/describeWorld", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes a world export job.
    public func describeWorldExportJob(_ input: DescribeWorldExportJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeWorldExportJobResponse> {
        return self.client.execute(operation: "DescribeWorldExportJob", path: "/describeWorldExportJob", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes a world generation job.
    public func describeWorldGenerationJob(_ input: DescribeWorldGenerationJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeWorldGenerationJobResponse> {
        return self.client.execute(operation: "DescribeWorldGenerationJob", path: "/describeWorldGenerationJob", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes a world template.
    public func describeWorldTemplate(_ input: DescribeWorldTemplateRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeWorldTemplateResponse> {
        return self.client.execute(operation: "DescribeWorldTemplate", path: "/describeWorldTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the world template body.
    public func getWorldTemplateBody(_ input: GetWorldTemplateBodyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetWorldTemplateBodyResponse> {
        return self.client.execute(operation: "GetWorldTemplateBody", path: "/getWorldTemplateBody", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of deployment jobs for a fleet. You can optionally provide filters to retrieve specific deployment jobs.
    public func listDeploymentJobs(_ input: ListDeploymentJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDeploymentJobsResponse> {
        return self.client.execute(operation: "ListDeploymentJobs", path: "/listDeploymentJobs", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of fleets. You can optionally provide filters to retrieve specific fleets.
    public func listFleets(_ input: ListFleetsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListFleetsResponse> {
        return self.client.execute(operation: "ListFleets", path: "/listFleets", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of robot application. You can optionally provide filters to retrieve specific robot applications.
    public func listRobotApplications(_ input: ListRobotApplicationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListRobotApplicationsResponse> {
        return self.client.execute(operation: "ListRobotApplications", path: "/listRobotApplications", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of robots. You can optionally provide filters to retrieve specific robots.
    public func listRobots(_ input: ListRobotsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListRobotsResponse> {
        return self.client.execute(operation: "ListRobots", path: "/listRobots", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of simulation applications. You can optionally provide filters to retrieve specific simulation applications.
    public func listSimulationApplications(_ input: ListSimulationApplicationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListSimulationApplicationsResponse> {
        return self.client.execute(operation: "ListSimulationApplications", path: "/listSimulationApplications", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list simulation job batches. You can optionally provide filters to retrieve specific simulation batch jobs.
    public func listSimulationJobBatches(_ input: ListSimulationJobBatchesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListSimulationJobBatchesResponse> {
        return self.client.execute(operation: "ListSimulationJobBatches", path: "/listSimulationJobBatches", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of simulation jobs. You can optionally provide filters to retrieve specific simulation jobs.
    public func listSimulationJobs(_ input: ListSimulationJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListSimulationJobsResponse> {
        return self.client.execute(operation: "ListSimulationJobs", path: "/listSimulationJobs", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists all tags on a AWS RoboMaker resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists world export jobs.
    public func listWorldExportJobs(_ input: ListWorldExportJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListWorldExportJobsResponse> {
        return self.client.execute(operation: "ListWorldExportJobs", path: "/listWorldExportJobs", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists world generator jobs.
    public func listWorldGenerationJobs(_ input: ListWorldGenerationJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListWorldGenerationJobsResponse> {
        return self.client.execute(operation: "ListWorldGenerationJobs", path: "/listWorldGenerationJobs", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists world templates.
    public func listWorldTemplates(_ input: ListWorldTemplatesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListWorldTemplatesResponse> {
        return self.client.execute(operation: "ListWorldTemplates", path: "/listWorldTemplates", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists worlds.
    public func listWorlds(_ input: ListWorldsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListWorldsResponse> {
        return self.client.execute(operation: "ListWorlds", path: "/listWorlds", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Registers a robot with a fleet.
    public func registerRobot(_ input: RegisterRobotRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RegisterRobotResponse> {
        return self.client.execute(operation: "RegisterRobot", path: "/registerRobot", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Restarts a running simulation job.
    public func restartSimulationJob(_ input: RestartSimulationJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RestartSimulationJobResponse> {
        return self.client.execute(operation: "RestartSimulationJob", path: "/restartSimulationJob", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts a new simulation job batch. The batch is defined using one or more SimulationJobRequest objects.
    public func startSimulationJobBatch(_ input: StartSimulationJobBatchRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartSimulationJobBatchResponse> {
        return self.client.execute(operation: "StartSimulationJobBatch", path: "/startSimulationJobBatch", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Syncrhonizes robots in a fleet to the latest deployment. This is helpful if robots were added after a deployment.
    public func syncDeploymentJob(_ input: SyncDeploymentJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<SyncDeploymentJobResponse> {
        return self.client.execute(operation: "SyncDeploymentJob", path: "/syncDeploymentJob", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds or edits tags for a AWS RoboMaker resource. Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty strings.  For information about the rules that apply to tag keys and tag values, see User-Defined Tag Restrictions in the AWS Billing and Cost Management User Guide.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes the specified tags from the specified AWS RoboMaker resource. To remove a tag, specify the tag key. To change the tag value of an existing tag key, use  TagResource .
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a robot application.
    public func updateRobotApplication(_ input: UpdateRobotApplicationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateRobotApplicationResponse> {
        return self.client.execute(operation: "UpdateRobotApplication", path: "/updateRobotApplication", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a simulation application.
    public func updateSimulationApplication(_ input: UpdateSimulationApplicationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateSimulationApplicationResponse> {
        return self.client.execute(operation: "UpdateSimulationApplication", path: "/updateSimulationApplication", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a world template.
    public func updateWorldTemplate(_ input: UpdateWorldTemplateRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateWorldTemplateResponse> {
        return self.client.execute(operation: "UpdateWorldTemplate", path: "/updateWorldTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }
}
