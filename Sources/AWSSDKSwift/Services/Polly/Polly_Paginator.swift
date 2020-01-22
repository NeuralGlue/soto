// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Polly {

    ///  Returns a list of SpeechSynthesisTask objects ordered by their creation date. This operation can filter the tasks by their status, for example, allowing users to list only tasks that are completed.
    public func listSpeechSynthesisTasksPaginator(_ input: ListSpeechSynthesisTasksInput, onPage: @escaping (ListSpeechSynthesisTasksOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSpeechSynthesisTasks, tokenKey: \ListSpeechSynthesisTasksOutput.nextToken, onPage: onPage)
    }

}

extension Polly.ListSpeechSynthesisTasksInput: AWSPaginateStringToken {
    public init(_ original: Polly.ListSpeechSynthesisTasksInput, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            status: original.status
        )
    }
}


