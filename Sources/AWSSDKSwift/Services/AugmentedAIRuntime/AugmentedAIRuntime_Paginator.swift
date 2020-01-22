// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension AugmentedAIRuntime {

    ///  Returns information about human loops, given the specified parameters.
    public func listHumanLoopsPaginator(_ input: ListHumanLoopsRequest, onPage: @escaping (ListHumanLoopsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listHumanLoops, tokenKey: \ListHumanLoopsResponse.nextToken, onPage: onPage)
    }

}

extension AugmentedAIRuntime.ListHumanLoopsRequest: AWSPaginateStringToken {
    public init(_ original: AugmentedAIRuntime.ListHumanLoopsRequest, token: String) {
        self.init(
            creationTimeAfter: original.creationTimeAfter, 
            creationTimeBefore: original.creationTimeBefore, 
            maxResults: original.maxResults, 
            nextToken: token, 
            sortOrder: original.sortOrder
        )
    }
}


