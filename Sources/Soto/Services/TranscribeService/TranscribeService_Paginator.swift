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

extension TranscribeService {
    ///  Provides more information about the custom language models you've created. You can use the information in this list to find a specific custom language model. You can then use the operation to get more information about it.
    public func listLanguageModelsPaginator(
        _ input: ListLanguageModelsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListLanguageModelsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listLanguageModels,
            tokenKey: \ListLanguageModelsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists medical transcription jobs with a specified status or substring that matches their names.
    public func listMedicalTranscriptionJobsPaginator(
        _ input: ListMedicalTranscriptionJobsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListMedicalTranscriptionJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMedicalTranscriptionJobs,
            tokenKey: \ListMedicalTranscriptionJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of vocabularies that match the specified criteria. If you don't enter a value in any of the request parameters, returns the entire list of vocabularies.
    public func listMedicalVocabulariesPaginator(
        _ input: ListMedicalVocabulariesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListMedicalVocabulariesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMedicalVocabularies,
            tokenKey: \ListMedicalVocabulariesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists transcription jobs with the specified status.
    public func listTranscriptionJobsPaginator(
        _ input: ListTranscriptionJobsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTranscriptionJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTranscriptionJobs,
            tokenKey: \ListTranscriptionJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of vocabularies that match the specified criteria. If no criteria are specified, returns the entire list of vocabularies.
    public func listVocabulariesPaginator(
        _ input: ListVocabulariesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListVocabulariesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listVocabularies,
            tokenKey: \ListVocabulariesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets information about vocabulary filters.
    public func listVocabularyFiltersPaginator(
        _ input: ListVocabularyFiltersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListVocabularyFiltersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listVocabularyFilters,
            tokenKey: \ListVocabularyFiltersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension TranscribeService.ListLanguageModelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> TranscribeService.ListLanguageModelsRequest {
        return .init(
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            statusEquals: self.statusEquals
        )
    }
}

extension TranscribeService.ListMedicalTranscriptionJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> TranscribeService.ListMedicalTranscriptionJobsRequest {
        return .init(
            jobNameContains: self.jobNameContains,
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )
    }
}

extension TranscribeService.ListMedicalVocabulariesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> TranscribeService.ListMedicalVocabulariesRequest {
        return .init(
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            stateEquals: self.stateEquals
        )
    }
}

extension TranscribeService.ListTranscriptionJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> TranscribeService.ListTranscriptionJobsRequest {
        return .init(
            jobNameContains: self.jobNameContains,
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )
    }
}

extension TranscribeService.ListVocabulariesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> TranscribeService.ListVocabulariesRequest {
        return .init(
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            stateEquals: self.stateEquals
        )
    }
}

extension TranscribeService.ListVocabularyFiltersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> TranscribeService.ListVocabularyFiltersRequest {
        return .init(
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token
        )
    }
}
