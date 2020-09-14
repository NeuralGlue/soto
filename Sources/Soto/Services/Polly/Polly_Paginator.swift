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

extension Polly {
    ///  Returns a list of SpeechSynthesisTask objects ordered by their creation date. This operation can filter the tasks by their status, for example, allowing users to list only tasks that are completed.
    public func listSpeechSynthesisTasksPaginator(
        _ input: ListSpeechSynthesisTasksInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSpeechSynthesisTasksOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSpeechSynthesisTasks,
            tokenKey: \ListSpeechSynthesisTasksOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Polly.ListSpeechSynthesisTasksInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Polly.ListSpeechSynthesisTasksInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )
    }
}
