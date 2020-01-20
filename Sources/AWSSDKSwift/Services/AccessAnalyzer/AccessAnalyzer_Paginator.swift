// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension AccessAnalyzer {

    ///  Retrieves a list of resources of the specified type that have been analyzed by the specified analyzer..
    public func listAnalyzedResourcesPaginator(_ input: ListAnalyzedResourcesRequest) -> EventLoopFuture<[AnalyzedResourceSummary]> {
        return client.paginate(input: input, command: listAnalyzedResources, resultKey: "analyzedResources", tokenKey: "nextToken")
    }
    
    ///  Retrieves a list of analyzers.
    public func listAnalyzersPaginator(_ input: ListAnalyzersRequest) -> EventLoopFuture<[AnalyzerSummary]> {
        return client.paginate(input: input, command: listAnalyzers, resultKey: "analyzers", tokenKey: "nextToken")
    }
    
    ///  Retrieves a list of archive rules created for the specified analyzer.
    public func listArchiveRulesPaginator(_ input: ListArchiveRulesRequest) -> EventLoopFuture<[ArchiveRuleSummary]> {
        return client.paginate(input: input, command: listArchiveRules, resultKey: "archiveRules", tokenKey: "nextToken")
    }
    
    ///  Retrieves a list of findings generated by the specified analyzer.
    public func listFindingsPaginator(_ input: ListFindingsRequest) -> EventLoopFuture<[FindingSummary]> {
        return client.paginate(input: input, command: listFindings, resultKey: "findings", tokenKey: "nextToken")
    }
    
}

extension AccessAnalyzer.ListAnalyzedResourcesRequest: AWSPaginateable {
    public init(_ original: AccessAnalyzer.ListAnalyzedResourcesRequest, token: String) {
        self.init(
            analyzerArn: original.analyzerArn, 
            maxResults: original.maxResults, 
            nextToken: token, 
            resourceType: original.resourceType
        )
    }
}

extension AccessAnalyzer.ListAnalyzersRequest: AWSPaginateable {
    public init(_ original: AccessAnalyzer.ListAnalyzersRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            type: original.type
        )
    }
}

extension AccessAnalyzer.ListArchiveRulesRequest: AWSPaginateable {
    public init(_ original: AccessAnalyzer.ListArchiveRulesRequest, token: String) {
        self.init(
            analyzerName: original.analyzerName, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension AccessAnalyzer.ListFindingsRequest: AWSPaginateable {
    public init(_ original: AccessAnalyzer.ListFindingsRequest, token: String) {
        self.init(
            analyzerArn: original.analyzerArn, 
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token, 
            sort: original.sort
        )
    }
}


