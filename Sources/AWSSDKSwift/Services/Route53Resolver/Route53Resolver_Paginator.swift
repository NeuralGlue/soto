// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Route53Resolver {

    ///  Gets the IP addresses for a specified resolver endpoint.
    public func listResolverEndpointIpAddressesPaginator(_ input: ListResolverEndpointIpAddressesRequest, onPage: @escaping (ListResolverEndpointIpAddressesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResolverEndpointIpAddresses, tokenKey: \ListResolverEndpointIpAddressesResponse.nextToken, onPage: onPage)
    }

    ///  Lists all the resolver endpoints that were created using the current AWS account.
    public func listResolverEndpointsPaginator(_ input: ListResolverEndpointsRequest, onPage: @escaping (ListResolverEndpointsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResolverEndpoints, tokenKey: \ListResolverEndpointsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the associations that were created between resolver rules and VPCs using the current AWS account.
    public func listResolverRuleAssociationsPaginator(_ input: ListResolverRuleAssociationsRequest, onPage: @escaping (ListResolverRuleAssociationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResolverRuleAssociations, tokenKey: \ListResolverRuleAssociationsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the resolver rules that were created using the current AWS account.
    public func listResolverRulesPaginator(_ input: ListResolverRulesRequest, onPage: @escaping (ListResolverRulesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResolverRules, tokenKey: \ListResolverRulesResponse.nextToken, onPage: onPage)
    }

}

extension Route53Resolver.ListResolverEndpointIpAddressesRequest: AWSPaginateStringToken {
    public init(_ original: Route53Resolver.ListResolverEndpointIpAddressesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            resolverEndpointId: original.resolverEndpointId
        )
    }
}

extension Route53Resolver.ListResolverEndpointsRequest: AWSPaginateStringToken {
    public init(_ original: Route53Resolver.ListResolverEndpointsRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Route53Resolver.ListResolverRuleAssociationsRequest: AWSPaginateStringToken {
    public init(_ original: Route53Resolver.ListResolverRuleAssociationsRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Route53Resolver.ListResolverRulesRequest: AWSPaginateStringToken {
    public init(_ original: Route53Resolver.ListResolverRulesRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


