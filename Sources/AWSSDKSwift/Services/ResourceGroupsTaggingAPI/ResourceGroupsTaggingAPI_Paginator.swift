// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension ResourceGroupsTaggingAPI {

    ///  Returns a table that shows counts of resources that are noncompliant with their tag policies. For more information on tag policies, see Tag Policies in the AWS Organizations User Guide.  You can call this operation only from the organization's master account and from the us-east-1 Region.
    public func getComplianceSummaryPaginator(_ input: GetComplianceSummaryInput, onPage: @escaping (GetComplianceSummaryOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getComplianceSummary, tokenKey: \GetComplianceSummaryOutput.paginationToken, onPage: onPage)
    }

    ///  Returns all the tagged or previously tagged resources that are located in the specified Region for the AWS account. Depending on what information you want returned, you can also specify the following:    Filters that specify what tags and resource types you want returned. The response includes all tags that are associated with the requested resources.   Information about compliance with the account's effective tag policy. For more information on tag policies, see Tag Policies in the AWS Organizations User Guide.     You can check the PaginationToken response parameter to determine if a query is complete. Queries occasionally return fewer results on a page than allowed. The PaginationToken response parameter value is null only when there are no more results to display.  
    public func getResourcesPaginator(_ input: GetResourcesInput, onPage: @escaping (GetResourcesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getResources, tokenKey: \GetResourcesOutput.paginationToken, onPage: onPage)
    }

    ///  Returns all tag keys in the specified Region for the AWS account.
    public func getTagKeysPaginator(_ input: GetTagKeysInput, onPage: @escaping (GetTagKeysOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getTagKeys, tokenKey: \GetTagKeysOutput.paginationToken, onPage: onPage)
    }

    ///  Returns all tag values for the specified key in the specified Region for the AWS account.
    public func getTagValuesPaginator(_ input: GetTagValuesInput, onPage: @escaping (GetTagValuesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getTagValues, tokenKey: \GetTagValuesOutput.paginationToken, onPage: onPage)
    }

}

extension ResourceGroupsTaggingAPI.GetComplianceSummaryInput: AWSPaginateStringToken {
    public init(_ original: ResourceGroupsTaggingAPI.GetComplianceSummaryInput, token: String) {
        self.init(
            groupBy: original.groupBy, 
            maxResults: original.maxResults, 
            paginationToken: token, 
            regionFilters: original.regionFilters, 
            resourceTypeFilters: original.resourceTypeFilters, 
            tagKeyFilters: original.tagKeyFilters, 
            targetIdFilters: original.targetIdFilters
        )
    }
}

extension ResourceGroupsTaggingAPI.GetResourcesInput: AWSPaginateStringToken {
    public init(_ original: ResourceGroupsTaggingAPI.GetResourcesInput, token: String) {
        self.init(
            excludeCompliantResources: original.excludeCompliantResources, 
            includeComplianceDetails: original.includeComplianceDetails, 
            paginationToken: token, 
            resourcesPerPage: original.resourcesPerPage, 
            resourceTypeFilters: original.resourceTypeFilters, 
            tagFilters: original.tagFilters, 
            tagsPerPage: original.tagsPerPage
        )
    }
}

extension ResourceGroupsTaggingAPI.GetTagKeysInput: AWSPaginateStringToken {
    public init(_ original: ResourceGroupsTaggingAPI.GetTagKeysInput, token: String) {
        self.init(
            paginationToken: token
        )
    }
}

extension ResourceGroupsTaggingAPI.GetTagValuesInput: AWSPaginateStringToken {
    public init(_ original: ResourceGroupsTaggingAPI.GetTagValuesInput, token: String) {
        self.init(
            key: original.key, 
            paginationToken: token
        )
    }
}


