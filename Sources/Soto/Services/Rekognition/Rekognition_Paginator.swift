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

extension Rekognition {
    ///  Lists and describes the models in an Amazon Rekognition Custom Labels project. You can specify up to 10 model versions in ProjectVersionArns. If you don't specify a value, descriptions for all models are returned. This operation requires permissions to perform the rekognition:DescribeProjectVersions action.
    public func describeProjectVersionsPaginator(
        _ input: DescribeProjectVersionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeProjectVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeProjectVersions,
            tokenKey: \DescribeProjectVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists and gets information about your Amazon Rekognition Custom Labels projects. This operation requires permissions to perform the rekognition:DescribeProjects action.
    public func describeProjectsPaginator(
        _ input: DescribeProjectsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeProjectsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeProjects,
            tokenKey: \DescribeProjectsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets the celebrity recognition results for a Amazon Rekognition Video analysis started by StartCelebrityRecognition. Celebrity recognition in a video is an asynchronous operation. Analysis is started by a call to StartCelebrityRecognition which returns a job identifier (JobId). When the celebrity recognition operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to StartCelebrityRecognition. To get the results of the celebrity recognition analysis, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetCelebrityDetection and pass the job identifier (JobId) from the initial call to StartCelebrityDetection.  For more information, see Working With Stored Videos in the Amazon Rekognition Developer Guide.  GetCelebrityRecognition returns detected celebrities and the time(s) they are detected in an array (Celebrities) of CelebrityRecognition objects. Each CelebrityRecognition contains information about the celebrity in a CelebrityDetail object and the time, Timestamp, the celebrity was detected.    GetCelebrityRecognition only returns the default facial attributes (BoundingBox, Confidence, Landmarks, Pose, and Quality). The other facial attributes listed in the Face object of the following response syntax are not returned. For more information, see FaceDetail in the Amazon Rekognition Developer Guide.   By default, the Celebrities array is sorted by time (milliseconds from the start of the video). You can also sort the array by celebrity by specifying the value ID in the SortBy input parameter. The CelebrityDetail object includes the celebrity identifer and additional information urls. If you don't store the additional information urls, you can get them later by calling GetCelebrityInfo with the celebrity identifer. No information is returned for faces not recognized as celebrities. Use MaxResults parameter to limit the number of labels returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetCelebrityDetection and populate the NextToken request parameter with the token value returned from the previous call to GetCelebrityRecognition.
    public func getCelebrityRecognitionPaginator(
        _ input: GetCelebrityRecognitionRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetCelebrityRecognitionResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getCelebrityRecognition,
            tokenKey: \GetCelebrityRecognitionResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets the unsafe content analysis results for a Amazon Rekognition Video analysis started by StartContentModeration. Unsafe content analysis of a video is an asynchronous operation. You start analysis by calling StartContentModeration which returns a job identifier (JobId). When analysis finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to StartContentModeration. To get the results of the unsafe content analysis, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetContentModeration and pass the job identifier (JobId) from the initial call to StartContentModeration.  For more information, see Working with Stored Videos in the Amazon Rekognition Devlopers Guide.  GetContentModeration returns detected unsafe content labels, and the time they are detected, in an array, ModerationLabels, of ContentModerationDetection objects.  By default, the moderated labels are returned sorted by time, in milliseconds from the start of the video. You can also sort them by moderated label by specifying NAME for the SortBy input parameter.  Since video analysis can return a large number of results, use the MaxResults parameter to limit the number of labels returned in a single call to GetContentModeration. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetContentModeration and populate the NextToken request parameter with the value of NextToken returned from the previous call to GetContentModeration. For more information, see Detecting Unsafe Content in the Amazon Rekognition Developer Guide.
    public func getContentModerationPaginator(
        _ input: GetContentModerationRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetContentModerationResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getContentModeration,
            tokenKey: \GetContentModerationResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets face detection results for a Amazon Rekognition Video analysis started by StartFaceDetection. Face detection with Amazon Rekognition Video is an asynchronous operation. You start face detection by calling StartFaceDetection which returns a job identifier (JobId). When the face detection operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to StartFaceDetection. To get the results of the face detection operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetFaceDetection and pass the job identifier (JobId) from the initial call to StartFaceDetection.  GetFaceDetection returns an array of detected faces (Faces) sorted by the time the faces were detected.  Use MaxResults parameter to limit the number of labels returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetFaceDetection and populate the NextToken request parameter with the token value returned from the previous call to GetFaceDetection.
    public func getFaceDetectionPaginator(
        _ input: GetFaceDetectionRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetFaceDetectionResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getFaceDetection,
            tokenKey: \GetFaceDetectionResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets the face search results for Amazon Rekognition Video face search started by StartFaceSearch. The search returns faces in a collection that match the faces of persons detected in a video. It also includes the time(s) that faces are matched in the video. Face search in a video is an asynchronous operation. You start face search by calling to StartFaceSearch which returns a job identifier (JobId). When the search operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to StartFaceSearch. To get the search results, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetFaceSearch and pass the job identifier (JobId) from the initial call to StartFaceSearch. For more information, see Searching Faces in a Collection in the Amazon Rekognition Developer Guide. The search results are retured in an array, Persons, of PersonMatch objects. EachPersonMatch element contains details about the matching faces in the input collection, person information (facial attributes, bounding boxes, and person identifer) for the matched person, and the time the person was matched in the video.   GetFaceSearch only returns the default facial attributes (BoundingBox, Confidence, Landmarks, Pose, and Quality). The other facial attributes listed in the Face object of the following response syntax are not returned. For more information, see FaceDetail in the Amazon Rekognition Developer Guide.   By default, the Persons array is sorted by the time, in milliseconds from the start of the video, persons are matched. You can also sort by persons by specifying INDEX for the SORTBY input parameter.
    public func getFaceSearchPaginator(
        _ input: GetFaceSearchRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetFaceSearchResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getFaceSearch,
            tokenKey: \GetFaceSearchResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets the label detection results of a Amazon Rekognition Video analysis started by StartLabelDetection.  The label detection operation is started by a call to StartLabelDetection which returns a job identifier (JobId). When the label detection operation finishes, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to StartlabelDetection. To get the results of the label detection operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetLabelDetection and pass the job identifier (JobId) from the initial call to StartLabelDetection.  GetLabelDetection returns an array of detected labels (Labels) sorted by the time the labels were detected. You can also sort by the label name by specifying NAME for the SortBy input parameter. The labels returned include the label name, the percentage confidence in the accuracy of the detected label, and the time the label was detected in the video. The returned labels also include bounding box information for common objects, a hierarchical taxonomy of detected labels, and the version of the label model used for detection. Use MaxResults parameter to limit the number of labels returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetlabelDetection and populate the NextToken request parameter with the token value returned from the previous call to GetLabelDetection.
    public func getLabelDetectionPaginator(
        _ input: GetLabelDetectionRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetLabelDetectionResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getLabelDetection,
            tokenKey: \GetLabelDetectionResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets the path tracking results of a Amazon Rekognition Video analysis started by StartPersonTracking. The person path tracking operation is started by a call to StartPersonTracking which returns a job identifier (JobId). When the operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to StartPersonTracking. To get the results of the person path tracking operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetPersonTracking and pass the job identifier (JobId) from the initial call to StartPersonTracking.  GetPersonTracking returns an array, Persons, of tracked persons and the time(s) their paths were tracked in the video.    GetPersonTracking only returns the default facial attributes (BoundingBox, Confidence, Landmarks, Pose, and Quality). The other facial attributes listed in the Face object of the following response syntax are not returned.  For more information, see FaceDetail in the Amazon Rekognition Developer Guide.  By default, the array is sorted by the time(s) a person's path is tracked in the video. You can sort by tracked persons by specifying INDEX for the SortBy input parameter. Use the MaxResults parameter to limit the number of items returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetPersonTracking and populate the NextToken request parameter with the token value returned from the previous call to GetPersonTracking.
    public func getPersonTrackingPaginator(
        _ input: GetPersonTrackingRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetPersonTrackingResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getPersonTracking,
            tokenKey: \GetPersonTrackingResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets the segment detection results of a Amazon Rekognition Video analysis started by StartSegmentDetection. Segment detection with Amazon Rekognition Video is an asynchronous operation. You start segment detection by calling StartSegmentDetection which returns a job identifier (JobId). When the segment detection operation finishes, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to StartSegmentDetection. To get the results of the segment detection operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. if so, call GetSegmentDetection and pass the job identifier (JobId) from the initial call of StartSegmentDetection.  GetSegmentDetection returns detected segments in an array (Segments) of SegmentDetection objects. Segments is sorted by the segment types specified in the SegmentTypes input parameter of StartSegmentDetection. Each element of the array includes the detected segment, the precentage confidence in the acuracy of the detected segment, the type of the segment, and the frame in which the segment was detected. Use SelectedSegmentTypes to find out the type of segment detection requested in the call to StartSegmentDetection. Use the MaxResults parameter to limit the number of segment detections returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetSegmentDetection and populate the NextToken request parameter with the token value returned from the previous call to GetSegmentDetection. For more information, see Detecting Video Segments in Stored Video in the Amazon Rekognition Developer Guide.
    public func getSegmentDetectionPaginator(
        _ input: GetSegmentDetectionRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetSegmentDetectionResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getSegmentDetection,
            tokenKey: \GetSegmentDetectionResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets the text detection results of a Amazon Rekognition Video analysis started by StartTextDetection. Text detection with Amazon Rekognition Video is an asynchronous operation. You start text detection by calling StartTextDetection which returns a job identifier (JobId) When the text detection operation finishes, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to StartTextDetection. To get the results of the text detection operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. if so, call GetTextDetection and pass the job identifier (JobId) from the initial call of StartLabelDetection.  GetTextDetection returns an array of detected text (TextDetections) sorted by the time the text was detected, up to 50 words per frame of video. Each element of the array includes the detected text, the precentage confidence in the acuracy of the detected text, the time the text was detected, bounding box information for where the text was located, and unique identifiers for words and their lines. Use MaxResults parameter to limit the number of text detections returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetTextDetection and populate the NextToken request parameter with the token value returned from the previous call to GetTextDetection.
    public func getTextDetectionPaginator(
        _ input: GetTextDetectionRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetTextDetectionResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getTextDetection,
            tokenKey: \GetTextDetectionResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns list of collection IDs in your account. If the result is truncated, the response also provides a NextToken that you can use in the subsequent request to fetch the next set of collection IDs. For an example, see Listing Collections in the Amazon Rekognition Developer Guide. This operation requires permissions to perform the rekognition:ListCollections action.
    public func listCollectionsPaginator(
        _ input: ListCollectionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListCollectionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCollections,
            tokenKey: \ListCollectionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns metadata for faces in the specified collection. This metadata includes information such as the bounding box coordinates, the confidence (that the bounding box contains a face), and face ID. For an example, see Listing Faces in a Collection in the Amazon Rekognition Developer Guide. This operation requires permissions to perform the rekognition:ListFaces action.
    public func listFacesPaginator(
        _ input: ListFacesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListFacesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFaces,
            tokenKey: \ListFacesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of stream processors that you have created with CreateStreamProcessor.
    public func listStreamProcessorsPaginator(
        _ input: ListStreamProcessorsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListStreamProcessorsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listStreamProcessors,
            tokenKey: \ListStreamProcessorsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Rekognition.DescribeProjectVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Rekognition.DescribeProjectVersionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            projectArn: self.projectArn,
            versionNames: self.versionNames
        )
    }
}

extension Rekognition.DescribeProjectsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Rekognition.DescribeProjectsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Rekognition.GetCelebrityRecognitionRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Rekognition.GetCelebrityRecognitionRequest {
        return .init(
            jobId: self.jobId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )
    }
}

extension Rekognition.GetContentModerationRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Rekognition.GetContentModerationRequest {
        return .init(
            jobId: self.jobId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )
    }
}

extension Rekognition.GetFaceDetectionRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Rekognition.GetFaceDetectionRequest {
        return .init(
            jobId: self.jobId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Rekognition.GetFaceSearchRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Rekognition.GetFaceSearchRequest {
        return .init(
            jobId: self.jobId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )
    }
}

extension Rekognition.GetLabelDetectionRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Rekognition.GetLabelDetectionRequest {
        return .init(
            jobId: self.jobId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )
    }
}

extension Rekognition.GetPersonTrackingRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Rekognition.GetPersonTrackingRequest {
        return .init(
            jobId: self.jobId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )
    }
}

extension Rekognition.GetSegmentDetectionRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Rekognition.GetSegmentDetectionRequest {
        return .init(
            jobId: self.jobId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Rekognition.GetTextDetectionRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Rekognition.GetTextDetectionRequest {
        return .init(
            jobId: self.jobId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Rekognition.ListCollectionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Rekognition.ListCollectionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Rekognition.ListFacesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Rekognition.ListFacesRequest {
        return .init(
            collectionId: self.collectionId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Rekognition.ListStreamProcessorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Rekognition.ListStreamProcessorsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
