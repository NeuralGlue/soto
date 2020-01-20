// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Kendra {

    ///  Gets statistics about synchronizing Amazon Kendra with a data source.
    public func listDataSourceSyncJobsPaginator(_ input: ListDataSourceSyncJobsRequest) -> EventLoopFuture<[DataSourceSyncJob]> {
        return client.paginate(input: input, command: listDataSourceSyncJobs, resultKey: "history", tokenKey: "nextToken")
    }
    
    ///  Lists the data sources that you have created.
    public func listDataSourcesPaginator(_ input: ListDataSourcesRequest) -> EventLoopFuture<[DataSourceSummary]> {
        return client.paginate(input: input, command: listDataSources, resultKey: "summaryItems", tokenKey: "nextToken")
    }
    
    ///  Lists the Amazon Kendra indexes that you have created.
    public func listIndicesPaginator(_ input: ListIndicesRequest) -> EventLoopFuture<[IndexConfigurationSummary]> {
        return client.paginate(input: input, command: listIndices, resultKey: "indexConfigurationSummaryItems", tokenKey: "nextToken")
    }
    
}

extension Kendra.ListDataSourceSyncJobsRequest: AWSPaginateable {
    public init(_ original: Kendra.ListDataSourceSyncJobsRequest, token: String) {
        self.init(
            id: original.id, 
            indexId: original.indexId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            startTimeFilter: original.startTimeFilter, 
            statusFilter: original.statusFilter
        )
    }
}

extension Kendra.ListDataSourcesRequest: AWSPaginateable {
    public init(_ original: Kendra.ListDataSourcesRequest, token: String) {
        self.init(
            indexId: original.indexId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Kendra.ListIndicesRequest: AWSPaginateable {
    public init(_ original: Kendra.ListIndicesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


