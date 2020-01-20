// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension MTurk {

    ///   The ListAssignmentsForHIT operation retrieves completed assignments for a HIT. You can use this operation to retrieve the results for a HIT.   You can get assignments for a HIT at any time, even if the HIT is not yet Reviewable. If a HIT requested multiple assignments, and has received some results but has not yet become Reviewable, you can still retrieve the partial results with this operation.   Use the AssignmentStatus parameter to control which set of assignments for a HIT are returned. The ListAssignmentsForHIT operation can return submitted assignments awaiting approval, or it can return assignments that have already been approved or rejected. You can set AssignmentStatus=Approved,Rejected to get assignments that have already been approved and rejected together in one result set.   Only the Requester who created the HIT can retrieve the assignments for that HIT.   Results are sorted and divided into numbered pages and the operation returns a single page of results. You can use the parameters of the operation to control sorting and pagination. 
    public func listAssignmentsForHITPaginator(_ input: ListAssignmentsForHITRequest) -> EventLoopFuture<[Assignment]> {
        return client.paginate(input: input, command: listAssignmentsForHIT, resultKey: "assignments", tokenKey: "nextToken")
    }
    
    ///   The ListBonusPayments operation retrieves the amounts of bonuses you have paid to Workers for a given HIT or assignment. 
    public func listBonusPaymentsPaginator(_ input: ListBonusPaymentsRequest) -> EventLoopFuture<[BonusPayment]> {
        return client.paginate(input: input, command: listBonusPayments, resultKey: "bonusPayments", tokenKey: "nextToken")
    }
    
    ///   The ListHITs operation returns all of a Requester's HITs. The operation returns HITs of any status, except for HITs that have been deleted of with the DeleteHIT operation or that have been auto-deleted. 
    public func listHITsPaginator(_ input: ListHITsRequest) -> EventLoopFuture<[HIT]> {
        return client.paginate(input: input, command: listHITs, resultKey: "hITs", tokenKey: "nextToken")
    }
    
    ///   The ListHITsForQualificationType operation returns the HITs that use the given Qualification type for a Qualification requirement. The operation returns HITs of any status, except for HITs that have been deleted with the DeleteHIT operation or that have been auto-deleted. 
    public func listHITsForQualificationTypePaginator(_ input: ListHITsForQualificationTypeRequest) -> EventLoopFuture<[HIT]> {
        return client.paginate(input: input, command: listHITsForQualificationType, resultKey: "hITs", tokenKey: "nextToken")
    }
    
    ///   The ListQualificationRequests operation retrieves requests for Qualifications of a particular Qualification type. The owner of the Qualification type calls this operation to poll for pending requests, and accepts them using the AcceptQualification operation. 
    public func listQualificationRequestsPaginator(_ input: ListQualificationRequestsRequest) -> EventLoopFuture<[QualificationRequest]> {
        return client.paginate(input: input, command: listQualificationRequests, resultKey: "qualificationRequests", tokenKey: "nextToken")
    }
    
    ///   The ListQualificationTypes operation returns a list of Qualification types, filtered by an optional search term. 
    public func listQualificationTypesPaginator(_ input: ListQualificationTypesRequest) -> EventLoopFuture<[QualificationType]> {
        return client.paginate(input: input, command: listQualificationTypes, resultKey: "qualificationTypes", tokenKey: "nextToken")
    }
    
    ///   The ListReviewableHITs operation retrieves the HITs with Status equal to Reviewable or Status equal to Reviewing that belong to the Requester calling the operation. 
    public func listReviewableHITsPaginator(_ input: ListReviewableHITsRequest) -> EventLoopFuture<[HIT]> {
        return client.paginate(input: input, command: listReviewableHITs, resultKey: "hITs", tokenKey: "nextToken")
    }
    
    ///  The ListWorkersBlocks operation retrieves a list of Workers who are blocked from working on your HITs.
    public func listWorkerBlocksPaginator(_ input: ListWorkerBlocksRequest) -> EventLoopFuture<[WorkerBlock]> {
        return client.paginate(input: input, command: listWorkerBlocks, resultKey: "workerBlocks", tokenKey: "nextToken")
    }
    
    ///   The ListWorkersWithQualificationType operation returns all of the Workers that have been associated with a given Qualification type. 
    public func listWorkersWithQualificationTypePaginator(_ input: ListWorkersWithQualificationTypeRequest) -> EventLoopFuture<[Qualification]> {
        return client.paginate(input: input, command: listWorkersWithQualificationType, resultKey: "qualifications", tokenKey: "nextToken")
    }
    
}

extension MTurk.ListAssignmentsForHITRequest: AWSPaginateable {
    public init(_ original: MTurk.ListAssignmentsForHITRequest, token: String) {
        self.init(
            assignmentStatuses: original.assignmentStatuses, 
            hITId: original.hITId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension MTurk.ListBonusPaymentsRequest: AWSPaginateable {
    public init(_ original: MTurk.ListBonusPaymentsRequest, token: String) {
        self.init(
            assignmentId: original.assignmentId, 
            hITId: original.hITId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension MTurk.ListHITsRequest: AWSPaginateable {
    public init(_ original: MTurk.ListHITsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension MTurk.ListHITsForQualificationTypeRequest: AWSPaginateable {
    public init(_ original: MTurk.ListHITsForQualificationTypeRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            qualificationTypeId: original.qualificationTypeId
        )
    }
}

extension MTurk.ListQualificationRequestsRequest: AWSPaginateable {
    public init(_ original: MTurk.ListQualificationRequestsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            qualificationTypeId: original.qualificationTypeId
        )
    }
}

extension MTurk.ListQualificationTypesRequest: AWSPaginateable {
    public init(_ original: MTurk.ListQualificationTypesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            mustBeOwnedByCaller: original.mustBeOwnedByCaller, 
            mustBeRequestable: original.mustBeRequestable, 
            nextToken: token, 
            query: original.query
        )
    }
}

extension MTurk.ListReviewableHITsRequest: AWSPaginateable {
    public init(_ original: MTurk.ListReviewableHITsRequest, token: String) {
        self.init(
            hITTypeId: original.hITTypeId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            status: original.status
        )
    }
}

extension MTurk.ListWorkerBlocksRequest: AWSPaginateable {
    public init(_ original: MTurk.ListWorkerBlocksRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension MTurk.ListWorkersWithQualificationTypeRequest: AWSPaginateable {
    public init(_ original: MTurk.ListWorkersWithQualificationTypeRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            qualificationTypeId: original.qualificationTypeId, 
            status: original.status
        )
    }
}


