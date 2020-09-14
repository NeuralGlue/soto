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

// MARK: Paginators

extension ElasticBeanstalk {
    ///  Lists an environment's completed and failed managed actions.
    public func describeEnvironmentManagedActionHistoryPaginator(
        _ input: DescribeEnvironmentManagedActionHistoryRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeEnvironmentManagedActionHistoryResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeEnvironmentManagedActionHistory,
            tokenKey: \DescribeEnvironmentManagedActionHistoryResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns list of event descriptions matching criteria up to the last 6 weeks.  This action returns the most recent 1,000 events from the specified NextToken.
    public func describeEventsPaginator(
        _ input: DescribeEventsMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (EventDescriptionsMessage, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeEvents,
            tokenKey: \EventDescriptionsMessage.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the platform branches available for your account in an AWS Region. Provides summary information about each platform branch. For definitions of platform branch and other platform-related terms, see AWS Elastic Beanstalk Platforms Glossary.
    public func listPlatformBranchesPaginator(
        _ input: ListPlatformBranchesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPlatformBranchesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPlatformBranches,
            tokenKey: \ListPlatformBranchesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the platform versions available for your account in an AWS Region. Provides summary information about each platform version. Compare to DescribePlatformVersion, which provides full details about a single platform version. For definitions of platform version and other platform-related terms, see AWS Elastic Beanstalk Platforms Glossary.
    public func listPlatformVersionsPaginator(
        _ input: ListPlatformVersionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPlatformVersionsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPlatformVersions,
            tokenKey: \ListPlatformVersionsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ElasticBeanstalk.DescribeEnvironmentManagedActionHistoryRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticBeanstalk.DescribeEnvironmentManagedActionHistoryRequest {
        return .init(
            environmentId: self.environmentId,
            environmentName: self.environmentName,
            maxItems: self.maxItems,
            nextToken: token
        )
    }
}

extension ElasticBeanstalk.DescribeEventsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticBeanstalk.DescribeEventsMessage {
        return .init(
            applicationName: self.applicationName,
            endTime: self.endTime,
            environmentId: self.environmentId,
            environmentName: self.environmentName,
            maxRecords: self.maxRecords,
            nextToken: token,
            platformArn: self.platformArn,
            requestId: self.requestId,
            severity: self.severity,
            startTime: self.startTime,
            templateName: self.templateName,
            versionLabel: self.versionLabel
        )
    }
}

extension ElasticBeanstalk.ListPlatformBranchesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticBeanstalk.ListPlatformBranchesRequest {
        return .init(
            filters: self.filters,
            maxRecords: self.maxRecords,
            nextToken: token
        )
    }
}

extension ElasticBeanstalk.ListPlatformVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticBeanstalk.ListPlatformVersionsRequest {
        return .init(
            filters: self.filters,
            maxRecords: self.maxRecords,
            nextToken: token
        )
    }
}
