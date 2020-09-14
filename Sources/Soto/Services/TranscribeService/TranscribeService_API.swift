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
 Client object for interacting with AWS TranscribeService service.

 Operations and objects for transcribing speech to text.
 */
public struct TranscribeService: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the TranscribeService client
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
            amzTarget: "Transcribe",
            service: "transcribe",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-10-26",
            endpoint: endpoint,
            serviceEndpoints: ["cn-north-1": "cn.transcribe.cn-north-1.amazonaws.com.cn", "cn-northwest-1": "cn.transcribe.cn-northwest-1.amazonaws.com.cn"],
            possibleErrorTypes: [TranscribeServiceErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Creates a new custom language model. Use Amazon S3 prefixes to provide the location of your input files. The time it takes to create your model depends on the size of your training data.
    public func createLanguageModel(_ input: CreateLanguageModelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateLanguageModelResponse> {
        return self.client.execute(operation: "CreateLanguageModel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new custom vocabulary that you can use to change how Amazon Transcribe Medical transcribes your audio file.
    public func createMedicalVocabulary(_ input: CreateMedicalVocabularyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateMedicalVocabularyResponse> {
        return self.client.execute(operation: "CreateMedicalVocabulary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new custom vocabulary that you can use to change the way Amazon Transcribe handles transcription of an audio file.
    public func createVocabulary(_ input: CreateVocabularyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateVocabularyResponse> {
        return self.client.execute(operation: "CreateVocabulary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new vocabulary filter that you can use to filter words, such as profane words, from the output of a transcription job.
    public func createVocabularyFilter(_ input: CreateVocabularyFilterRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateVocabularyFilterResponse> {
        return self.client.execute(operation: "CreateVocabularyFilter", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a custom language model using its name.
    @discardableResult public func deleteLanguageModel(_ input: DeleteLanguageModelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteLanguageModel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a transcription job generated by Amazon Transcribe Medical and any related information.
    @discardableResult public func deleteMedicalTranscriptionJob(_ input: DeleteMedicalTranscriptionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteMedicalTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a vocabulary from Amazon Transcribe Medical.
    @discardableResult public func deleteMedicalVocabulary(_ input: DeleteMedicalVocabularyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteMedicalVocabulary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a previously submitted transcription job along with any other generated results such as the transcription, models, and so on.
    @discardableResult public func deleteTranscriptionJob(_ input: DeleteTranscriptionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a vocabulary from Amazon Transcribe.
    @discardableResult public func deleteVocabulary(_ input: DeleteVocabularyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteVocabulary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes a vocabulary filter.
    @discardableResult public func deleteVocabularyFilter(_ input: DeleteVocabularyFilterRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteVocabularyFilter", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about a single custom language model. Use this information to see details about the language model in your AWS account. You can also see whether the base language model used to create your custom language model has been updated. If Amazon Transcribe has updated the base model, you can create a new custom language model using the updated base model. If the language model wasn't created, you can use this operation to understand why Amazon Transcribe couldn't create it.
    public func describeLanguageModel(_ input: DescribeLanguageModelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeLanguageModelResponse> {
        return self.client.execute(operation: "DescribeLanguageModel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about a transcription job from Amazon Transcribe Medical. To see the status of the job, check the TranscriptionJobStatus field. If the status is COMPLETED, the job is finished. You find the results of the completed job in the TranscriptFileUri field.
    public func getMedicalTranscriptionJob(_ input: GetMedicalTranscriptionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetMedicalTranscriptionJobResponse> {
        return self.client.execute(operation: "GetMedicalTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves information about a medical vocabulary.
    public func getMedicalVocabulary(_ input: GetMedicalVocabularyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetMedicalVocabularyResponse> {
        return self.client.execute(operation: "GetMedicalVocabulary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about a transcription job. To see the status of the job, check the TranscriptionJobStatus field. If the status is COMPLETED, the job is finished and you can find the results at the location specified in the TranscriptFileUri field. If you enable content redaction, the redacted transcript appears in RedactedTranscriptFileUri.
    public func getTranscriptionJob(_ input: GetTranscriptionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetTranscriptionJobResponse> {
        return self.client.execute(operation: "GetTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about a vocabulary.
    public func getVocabulary(_ input: GetVocabularyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetVocabularyResponse> {
        return self.client.execute(operation: "GetVocabulary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about a vocabulary filter.
    public func getVocabularyFilter(_ input: GetVocabularyFilterRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetVocabularyFilterResponse> {
        return self.client.execute(operation: "GetVocabularyFilter", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Provides more information about the custom language models you've created. You can use the information in this list to find a specific custom language model. You can then use the operation to get more information about it.
    public func listLanguageModels(_ input: ListLanguageModelsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListLanguageModelsResponse> {
        return self.client.execute(operation: "ListLanguageModels", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists medical transcription jobs with a specified status or substring that matches their names.
    public func listMedicalTranscriptionJobs(_ input: ListMedicalTranscriptionJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListMedicalTranscriptionJobsResponse> {
        return self.client.execute(operation: "ListMedicalTranscriptionJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of vocabularies that match the specified criteria. If you don't enter a value in any of the request parameters, returns the entire list of vocabularies.
    public func listMedicalVocabularies(_ input: ListMedicalVocabulariesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListMedicalVocabulariesResponse> {
        return self.client.execute(operation: "ListMedicalVocabularies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists transcription jobs with the specified status.
    public func listTranscriptionJobs(_ input: ListTranscriptionJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTranscriptionJobsResponse> {
        return self.client.execute(operation: "ListTranscriptionJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of vocabularies that match the specified criteria. If no criteria are specified, returns the entire list of vocabularies.
    public func listVocabularies(_ input: ListVocabulariesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListVocabulariesResponse> {
        return self.client.execute(operation: "ListVocabularies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about vocabulary filters.
    public func listVocabularyFilters(_ input: ListVocabularyFiltersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListVocabularyFiltersResponse> {
        return self.client.execute(operation: "ListVocabularyFilters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts a batch job to transcribe medical speech to text.
    public func startMedicalTranscriptionJob(_ input: StartMedicalTranscriptionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartMedicalTranscriptionJobResponse> {
        return self.client.execute(operation: "StartMedicalTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts an asynchronous job to transcribe speech to text.
    public func startTranscriptionJob(_ input: StartTranscriptionJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartTranscriptionJobResponse> {
        return self.client.execute(operation: "StartTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a vocabulary with new values that you provide in a different text file from the one you used to create the vocabulary. The UpdateMedicalVocabulary operation overwrites all of the existing information with the values that you provide in the request.
    public func updateMedicalVocabulary(_ input: UpdateMedicalVocabularyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateMedicalVocabularyResponse> {
        return self.client.execute(operation: "UpdateMedicalVocabulary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an existing vocabulary with new values. The UpdateVocabulary operation overwrites all of the existing information with the values that you provide in the request.
    public func updateVocabulary(_ input: UpdateVocabularyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateVocabularyResponse> {
        return self.client.execute(operation: "UpdateVocabulary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a vocabulary filter with a new list of filtered words.
    public func updateVocabularyFilter(_ input: UpdateVocabularyFilterRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateVocabularyFilterResponse> {
        return self.client.execute(operation: "UpdateVocabularyFilter", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }
}
