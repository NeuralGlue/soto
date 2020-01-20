// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension QuickSight {

    ///  Lists all the versions of the dashboards in the QuickSight subscription.
    public func listDashboardVersionsPaginator(_ input: ListDashboardVersionsRequest) -> EventLoopFuture<[DashboardVersionSummary]> {
        return client.paginate(input: input, command: listDashboardVersions, resultKey: "dashboardVersionSummaryList", tokenKey: "nextToken")
    }
    
    ///  Lists dashboards in an AWS account.
    public func listDashboardsPaginator(_ input: ListDashboardsRequest) -> EventLoopFuture<[DashboardSummary]> {
        return client.paginate(input: input, command: listDashboards, resultKey: "dashboardSummaryList", tokenKey: "nextToken")
    }
    
    ///  Lists all of the datasets belonging to the current AWS account in an AWS Region. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/*.
    public func listDataSetsPaginator(_ input: ListDataSetsRequest) -> EventLoopFuture<[DataSetSummary]> {
        return client.paginate(input: input, command: listDataSets, resultKey: "dataSetSummaries", tokenKey: "nextToken")
    }
    
    ///  Lists data sources in current AWS Region that belong to this AWS account.
    public func listDataSourcesPaginator(_ input: ListDataSourcesRequest) -> EventLoopFuture<[DataSource]> {
        return client.paginate(input: input, command: listDataSources, resultKey: "dataSources", tokenKey: "nextToken")
    }
    
    ///  Lists the history of SPICE ingestions for a dataset.
    public func listIngestionsPaginator(_ input: ListIngestionsRequest) -> EventLoopFuture<[Ingestion]> {
        return client.paginate(input: input, command: listIngestions, resultKey: "ingestions", tokenKey: "nextToken")
    }
    
    ///  Lists all the aliases of a template.
    public func listTemplateAliasesPaginator(_ input: ListTemplateAliasesRequest) -> EventLoopFuture<[TemplateAlias]> {
        return client.paginate(input: input, command: listTemplateAliases, resultKey: "templateAliasList", tokenKey: "nextToken")
    }
    
    ///  Lists all the versions of the templates in the current Amazon QuickSight account.
    public func listTemplateVersionsPaginator(_ input: ListTemplateVersionsRequest) -> EventLoopFuture<[TemplateVersionSummary]> {
        return client.paginate(input: input, command: listTemplateVersions, resultKey: "templateVersionSummaryList", tokenKey: "nextToken")
    }
    
    ///  Lists all the templates in the current Amazon QuickSight account.
    public func listTemplatesPaginator(_ input: ListTemplatesRequest) -> EventLoopFuture<[TemplateSummary]> {
        return client.paginate(input: input, command: listTemplates, resultKey: "templateSummaryList", tokenKey: "nextToken")
    }
    
}

extension QuickSight.ListDashboardVersionsRequest: AWSPaginateable {
    public init(_ original: QuickSight.ListDashboardVersionsRequest, token: String) {
        self.init(
            awsAccountId: original.awsAccountId, 
            dashboardId: original.dashboardId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension QuickSight.ListDashboardsRequest: AWSPaginateable {
    public init(_ original: QuickSight.ListDashboardsRequest, token: String) {
        self.init(
            awsAccountId: original.awsAccountId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension QuickSight.ListDataSetsRequest: AWSPaginateable {
    public init(_ original: QuickSight.ListDataSetsRequest, token: String) {
        self.init(
            awsAccountId: original.awsAccountId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension QuickSight.ListDataSourcesRequest: AWSPaginateable {
    public init(_ original: QuickSight.ListDataSourcesRequest, token: String) {
        self.init(
            awsAccountId: original.awsAccountId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension QuickSight.ListIngestionsRequest: AWSPaginateable {
    public init(_ original: QuickSight.ListIngestionsRequest, token: String) {
        self.init(
            awsAccountId: original.awsAccountId, 
            dataSetId: original.dataSetId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension QuickSight.ListTemplateAliasesRequest: AWSPaginateable {
    public init(_ original: QuickSight.ListTemplateAliasesRequest, token: String) {
        self.init(
            awsAccountId: original.awsAccountId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            templateId: original.templateId
        )
    }
}

extension QuickSight.ListTemplateVersionsRequest: AWSPaginateable {
    public init(_ original: QuickSight.ListTemplateVersionsRequest, token: String) {
        self.init(
            awsAccountId: original.awsAccountId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            templateId: original.templateId
        )
    }
}

extension QuickSight.ListTemplatesRequest: AWSPaginateable {
    public init(_ original: QuickSight.ListTemplatesRequest, token: String) {
        self.init(
            awsAccountId: original.awsAccountId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


