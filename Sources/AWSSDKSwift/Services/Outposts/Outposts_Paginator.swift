// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Outposts {

    ///  List the Outposts for your AWS account.
    public func listOutpostsPaginator(_ input: ListOutpostsInput, onPage: @escaping (ListOutpostsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listOutposts, tokenKey: \ListOutpostsOutput.nextToken, onPage: onPage)
    }

    ///  Lists the sites for the specified AWS account.
    public func listSitesPaginator(_ input: ListSitesInput, onPage: @escaping (ListSitesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSites, tokenKey: \ListSitesOutput.nextToken, onPage: onPage)
    }

}

extension Outposts.ListOutpostsInput: AWSPaginateStringToken {
    public init(_ original: Outposts.ListOutpostsInput, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Outposts.ListSitesInput: AWSPaginateStringToken {
    public init(_ original: Outposts.ListSitesInput, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


