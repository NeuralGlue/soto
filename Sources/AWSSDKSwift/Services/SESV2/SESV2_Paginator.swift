// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension SESV2 {

    ///  List the dedicated IP addresses that are associated with your AWS account.
    public func getDedicatedIpsPaginator(_ input: GetDedicatedIpsRequest, onPage: @escaping (GetDedicatedIpsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getDedicatedIps, tokenKey: \GetDedicatedIpsResponse.nextToken, onPage: onPage)
    }

    ///  List all of the configuration sets associated with your account in the current region.  Configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
    public func listConfigurationSetsPaginator(_ input: ListConfigurationSetsRequest, onPage: @escaping (ListConfigurationSetsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listConfigurationSets, tokenKey: \ListConfigurationSetsResponse.nextToken, onPage: onPage)
    }

    ///  List all of the dedicated IP pools that exist in your AWS account in the current Region.
    public func listDedicatedIpPoolsPaginator(_ input: ListDedicatedIpPoolsRequest, onPage: @escaping (ListDedicatedIpPoolsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDedicatedIpPools, tokenKey: \ListDedicatedIpPoolsResponse.nextToken, onPage: onPage)
    }

    ///  Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses. For predictive inbox placement tests that are complete, you can use the GetDeliverabilityTestReport operation to view the results.
    public func listDeliverabilityTestReportsPaginator(_ input: ListDeliverabilityTestReportsRequest, onPage: @escaping (ListDeliverabilityTestReportsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDeliverabilityTestReports, tokenKey: \ListDeliverabilityTestReportsResponse.nextToken, onPage: onPage)
    }

    ///  Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range. This data is available for a domain only if you enabled the Deliverability dashboard for the domain.
    public func listDomainDeliverabilityCampaignsPaginator(_ input: ListDomainDeliverabilityCampaignsRequest, onPage: @escaping (ListDomainDeliverabilityCampaignsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDomainDeliverabilityCampaigns, tokenKey: \ListDomainDeliverabilityCampaignsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of all of the email identities that are associated with your AWS account. An identity can be either an email address or a domain. This operation returns identities that are verified as well as those that aren't. This operation returns identities that are associated with Amazon SES and Amazon Pinpoint.
    public func listEmailIdentitiesPaginator(_ input: ListEmailIdentitiesRequest, onPage: @escaping (ListEmailIdentitiesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listEmailIdentities, tokenKey: \ListEmailIdentitiesResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves a list of email addresses that are on the suppression list for your account.
    public func listSuppressedDestinationsPaginator(_ input: ListSuppressedDestinationsRequest, onPage: @escaping (ListSuppressedDestinationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSuppressedDestinations, tokenKey: \ListSuppressedDestinationsResponse.nextToken, onPage: onPage)
    }

}

extension SESV2.GetDedicatedIpsRequest: AWSPaginateStringToken {
    public init(_ original: SESV2.GetDedicatedIpsRequest, token: String) {
        self.init(
            nextToken: token, 
            pageSize: original.pageSize, 
            poolName: original.poolName
        )
    }
}

extension SESV2.ListConfigurationSetsRequest: AWSPaginateStringToken {
    public init(_ original: SESV2.ListConfigurationSetsRequest, token: String) {
        self.init(
            nextToken: token, 
            pageSize: original.pageSize
        )
    }
}

extension SESV2.ListDedicatedIpPoolsRequest: AWSPaginateStringToken {
    public init(_ original: SESV2.ListDedicatedIpPoolsRequest, token: String) {
        self.init(
            nextToken: token, 
            pageSize: original.pageSize
        )
    }
}

extension SESV2.ListDeliverabilityTestReportsRequest: AWSPaginateStringToken {
    public init(_ original: SESV2.ListDeliverabilityTestReportsRequest, token: String) {
        self.init(
            nextToken: token, 
            pageSize: original.pageSize
        )
    }
}

extension SESV2.ListDomainDeliverabilityCampaignsRequest: AWSPaginateStringToken {
    public init(_ original: SESV2.ListDomainDeliverabilityCampaignsRequest, token: String) {
        self.init(
            endDate: original.endDate, 
            nextToken: token, 
            pageSize: original.pageSize, 
            startDate: original.startDate, 
            subscribedDomain: original.subscribedDomain
        )
    }
}

extension SESV2.ListEmailIdentitiesRequest: AWSPaginateStringToken {
    public init(_ original: SESV2.ListEmailIdentitiesRequest, token: String) {
        self.init(
            nextToken: token, 
            pageSize: original.pageSize
        )
    }
}

extension SESV2.ListSuppressedDestinationsRequest: AWSPaginateStringToken {
    public init(_ original: SESV2.ListSuppressedDestinationsRequest, token: String) {
        self.init(
            endDate: original.endDate, 
            nextToken: token, 
            pageSize: original.pageSize, 
            reasons: original.reasons, 
            startDate: original.startDate
        )
    }
}


