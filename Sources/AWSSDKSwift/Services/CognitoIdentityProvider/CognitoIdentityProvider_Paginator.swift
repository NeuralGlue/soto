// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension CognitoIdentityProvider {

    ///  Lists the groups that the user belongs to. Calling this action requires developer credentials.
    public func adminListGroupsForUserPaginator(_ input: AdminListGroupsForUserRequest, onPage: @escaping (AdminListGroupsForUserResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: adminListGroupsForUser, tokenKey: \AdminListGroupsForUserResponse.nextToken, onPage: onPage)
    }

    ///  Lists a history of user activity and any risks detected as part of Amazon Cognito advanced security.
    public func adminListUserAuthEventsPaginator(_ input: AdminListUserAuthEventsRequest, onPage: @escaping (AdminListUserAuthEventsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: adminListUserAuthEvents, tokenKey: \AdminListUserAuthEventsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the groups associated with a user pool. Calling this action requires developer credentials.
    public func listGroupsPaginator(_ input: ListGroupsRequest, onPage: @escaping (ListGroupsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listGroups, tokenKey: \ListGroupsResponse.nextToken, onPage: onPage)
    }

    ///  Lists information about all identity providers for a user pool.
    public func listIdentityProvidersPaginator(_ input: ListIdentityProvidersRequest, onPage: @escaping (ListIdentityProvidersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listIdentityProviders, tokenKey: \ListIdentityProvidersResponse.nextToken, onPage: onPage)
    }

    ///  Lists the resource servers for a user pool.
    public func listResourceServersPaginator(_ input: ListResourceServersRequest, onPage: @escaping (ListResourceServersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResourceServers, tokenKey: \ListResourceServersResponse.nextToken, onPage: onPage)
    }

    ///  Lists the clients that have been created for the specified user pool.
    public func listUserPoolClientsPaginator(_ input: ListUserPoolClientsRequest, onPage: @escaping (ListUserPoolClientsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listUserPoolClients, tokenKey: \ListUserPoolClientsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the user pools associated with an AWS account.
    public func listUserPoolsPaginator(_ input: ListUserPoolsRequest, onPage: @escaping (ListUserPoolsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listUserPools, tokenKey: \ListUserPoolsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the users in the Amazon Cognito user pool.
    public func listUsersPaginator(_ input: ListUsersRequest, onPage: @escaping (ListUsersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listUsers, tokenKey: \ListUsersResponse.paginationToken, onPage: onPage)
    }

    ///  Lists the users in the specified group. Calling this action requires developer credentials.
    public func listUsersInGroupPaginator(_ input: ListUsersInGroupRequest, onPage: @escaping (ListUsersInGroupResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listUsersInGroup, tokenKey: \ListUsersInGroupResponse.nextToken, onPage: onPage)
    }

}

extension CognitoIdentityProvider.AdminListGroupsForUserRequest: AWSPaginateStringToken {
    public init(_ original: CognitoIdentityProvider.AdminListGroupsForUserRequest, token: String) {
        self.init(
            limit: original.limit, 
            nextToken: token, 
            username: original.username, 
            userPoolId: original.userPoolId
        )
    }
}

extension CognitoIdentityProvider.AdminListUserAuthEventsRequest: AWSPaginateStringToken {
    public init(_ original: CognitoIdentityProvider.AdminListUserAuthEventsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            username: original.username, 
            userPoolId: original.userPoolId
        )
    }
}

extension CognitoIdentityProvider.ListGroupsRequest: AWSPaginateStringToken {
    public init(_ original: CognitoIdentityProvider.ListGroupsRequest, token: String) {
        self.init(
            limit: original.limit, 
            nextToken: token, 
            userPoolId: original.userPoolId
        )
    }
}

extension CognitoIdentityProvider.ListIdentityProvidersRequest: AWSPaginateStringToken {
    public init(_ original: CognitoIdentityProvider.ListIdentityProvidersRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            userPoolId: original.userPoolId
        )
    }
}

extension CognitoIdentityProvider.ListResourceServersRequest: AWSPaginateStringToken {
    public init(_ original: CognitoIdentityProvider.ListResourceServersRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            userPoolId: original.userPoolId
        )
    }
}

extension CognitoIdentityProvider.ListUserPoolClientsRequest: AWSPaginateStringToken {
    public init(_ original: CognitoIdentityProvider.ListUserPoolClientsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            userPoolId: original.userPoolId
        )
    }
}

extension CognitoIdentityProvider.ListUserPoolsRequest: AWSPaginateStringToken {
    public init(_ original: CognitoIdentityProvider.ListUserPoolsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension CognitoIdentityProvider.ListUsersRequest: AWSPaginateStringToken {
    public init(_ original: CognitoIdentityProvider.ListUsersRequest, token: String) {
        self.init(
            attributesToGet: original.attributesToGet, 
            filter: original.filter, 
            limit: original.limit, 
            paginationToken: token, 
            userPoolId: original.userPoolId
        )
    }
}

extension CognitoIdentityProvider.ListUsersInGroupRequest: AWSPaginateStringToken {
    public init(_ original: CognitoIdentityProvider.ListUsersInGroupRequest, token: String) {
        self.init(
            groupName: original.groupName, 
            limit: original.limit, 
            nextToken: token, 
            userPoolId: original.userPoolId
        )
    }
}


