// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension CloudHSMV2 {

    ///  Gets information about backups of AWS CloudHSM clusters. This is a paginated operation, which means that each response might contain only a subset of all the backups. When the response contains only a subset of backups, it includes a NextToken value. Use this value in a subsequent DescribeBackups request to get more backups. When you receive a response with no NextToken (or an empty or null value), that means there are no more backups to get.
    public func describeBackupsPaginator(_ input: DescribeBackupsRequest) -> EventLoopFuture<[Backup]> {
        return client.paginate(input: input, command: describeBackups, resultKey: "backups", tokenKey: "nextToken")
    }
    
    ///  Gets information about AWS CloudHSM clusters. This is a paginated operation, which means that each response might contain only a subset of all the clusters. When the response contains only a subset of clusters, it includes a NextToken value. Use this value in a subsequent DescribeClusters request to get more clusters. When you receive a response with no NextToken (or an empty or null value), that means there are no more clusters to get.
    public func describeClustersPaginator(_ input: DescribeClustersRequest) -> EventLoopFuture<[Cluster]> {
        return client.paginate(input: input, command: describeClusters, resultKey: "clusters", tokenKey: "nextToken")
    }
    
    ///  Gets a list of tags for the specified AWS CloudHSM cluster. This is a paginated operation, which means that each response might contain only a subset of all the tags. When the response contains only a subset of tags, it includes a NextToken value. Use this value in a subsequent ListTags request to get more tags. When you receive a response with no NextToken (or an empty or null value), that means there are no more tags to get.
    public func listTagsPaginator(_ input: ListTagsRequest) -> EventLoopFuture<[Tag]> {
        return client.paginate(input: input, command: listTags, resultKey: "tagList", tokenKey: "nextToken")
    }
    
}

extension CloudHSMV2.DescribeBackupsRequest: AWSPaginateable {
    public init(_ original: CloudHSMV2.DescribeBackupsRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token, 
            sortAscending: original.sortAscending
        )
    }
}

extension CloudHSMV2.DescribeClustersRequest: AWSPaginateable {
    public init(_ original: CloudHSMV2.DescribeClustersRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension CloudHSMV2.ListTagsRequest: AWSPaginateable {
    public init(_ original: CloudHSMV2.ListTagsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            resourceId: original.resourceId
        )
    }
}


