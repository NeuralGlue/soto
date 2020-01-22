// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Health {

    ///  Returns a list of accounts in the organization from AWS Organizations that are affected by the provided event. Before you can call this operation, you must first enable AWS Health to work with AWS Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's master account.
    public func describeAffectedAccountsForOrganizationPaginator(_ input: DescribeAffectedAccountsForOrganizationRequest, onPage: @escaping (DescribeAffectedAccountsForOrganizationResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeAffectedAccountsForOrganization, tokenKey: \DescribeAffectedAccountsForOrganizationResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of entities that have been affected by the specified events, based on the specified filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service. Events that have impact beyond that of the affected entities, or where the extent of impact is unknown, include at least one entity indicating this. At least one event ARN is required. Results are sorted by the lastUpdatedTime of the entity, starting with the most recent.
    public func describeAffectedEntitiesPaginator(_ input: DescribeAffectedEntitiesRequest, onPage: @escaping (DescribeAffectedEntitiesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeAffectedEntities, tokenKey: \DescribeAffectedEntitiesResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of entities that have been affected by one or more events for one or more accounts in your organization in AWS Organizations, based on the filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service. At least one event ARN and account ID are required. Results are sorted by the lastUpdatedTime of the entity, starting with the most recent. Before you can call this operation, you must first enable AWS Health to work with AWS Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's master account. 
    public func describeAffectedEntitiesForOrganizationPaginator(_ input: DescribeAffectedEntitiesForOrganizationRequest, onPage: @escaping (DescribeAffectedEntitiesForOrganizationResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeAffectedEntitiesForOrganization, tokenKey: \DescribeAffectedEntitiesForOrganizationResponse.nextToken, onPage: onPage)
    }

    ///  Returns the number of events of each event type (issue, scheduled change, and account notification). If no filter is specified, the counts of all events in each category are returned.
    public func describeEventAggregatesPaginator(_ input: DescribeEventAggregatesRequest, onPage: @escaping (DescribeEventAggregatesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEventAggregates, tokenKey: \DescribeEventAggregatesResponse.nextToken, onPage: onPage)
    }

    ///  Returns the event types that meet the specified filter criteria. If no filter criteria are specified, all event types are returned, in no particular order.
    public func describeEventTypesPaginator(_ input: DescribeEventTypesRequest, onPage: @escaping (DescribeEventTypesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEventTypes, tokenKey: \DescribeEventTypesResponse.nextToken, onPage: onPage)
    }

    ///  Returns information about events that meet the specified filter criteria. Events are returned in a summary form and do not include the detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the DescribeEventDetails and DescribeAffectedEntities operations. If no filter criteria are specified, all events are returned. Results are sorted by lastModifiedTime, starting with the most recent.
    public func describeEventsPaginator(_ input: DescribeEventsRequest, onPage: @escaping (DescribeEventsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEvents, tokenKey: \DescribeEventsResponse.nextToken, onPage: onPage)
    }

    ///  Returns information about events across your organization in AWS Organizations, meeting the specified filter criteria. Events are returned in a summary form and do not include the accounts impacted, detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the DescribeAffectedAccountsForOrganization, DescribeEventDetailsForOrganization, and DescribeAffectedEntitiesForOrganization operations. If no filter criteria are specified, all events across your organization are returned. Results are sorted by lastModifiedTime, starting with the most recent. Before you can call this operation, you must first enable Health to work with AWS Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's master account.
    public func describeEventsForOrganizationPaginator(_ input: DescribeEventsForOrganizationRequest, onPage: @escaping (DescribeEventsForOrganizationResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEventsForOrganization, tokenKey: \DescribeEventsForOrganizationResponse.nextToken, onPage: onPage)
    }

}

extension Health.DescribeAffectedAccountsForOrganizationRequest: AWSPaginateStringToken {
    public init(_ original: Health.DescribeAffectedAccountsForOrganizationRequest, token: String) {
        self.init(
            eventArn: original.eventArn, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Health.DescribeAffectedEntitiesRequest: AWSPaginateStringToken {
    public init(_ original: Health.DescribeAffectedEntitiesRequest, token: String) {
        self.init(
            filter: original.filter, 
            locale: original.locale, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Health.DescribeAffectedEntitiesForOrganizationRequest: AWSPaginateStringToken {
    public init(_ original: Health.DescribeAffectedEntitiesForOrganizationRequest, token: String) {
        self.init(
            locale: original.locale, 
            maxResults: original.maxResults, 
            nextToken: token, 
            organizationEntityFilters: original.organizationEntityFilters
        )
    }
}

extension Health.DescribeEventAggregatesRequest: AWSPaginateStringToken {
    public init(_ original: Health.DescribeEventAggregatesRequest, token: String) {
        self.init(
            aggregateField: original.aggregateField, 
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Health.DescribeEventTypesRequest: AWSPaginateStringToken {
    public init(_ original: Health.DescribeEventTypesRequest, token: String) {
        self.init(
            filter: original.filter, 
            locale: original.locale, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Health.DescribeEventsRequest: AWSPaginateStringToken {
    public init(_ original: Health.DescribeEventsRequest, token: String) {
        self.init(
            filter: original.filter, 
            locale: original.locale, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Health.DescribeEventsForOrganizationRequest: AWSPaginateStringToken {
    public init(_ original: Health.DescribeEventsForOrganizationRequest, token: String) {
        self.init(
            filter: original.filter, 
            locale: original.locale, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


