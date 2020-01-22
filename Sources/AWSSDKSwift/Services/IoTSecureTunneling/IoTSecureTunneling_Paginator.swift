// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension IoTSecureTunneling {

    ///  List all tunnels for an AWS account. Tunnels are listed by creation time in descending order, newer tunnels will be listed before older tunnels.
    public func listTunnelsPaginator(_ input: ListTunnelsRequest, onPage: @escaping (ListTunnelsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTunnels, tokenKey: \ListTunnelsResponse.nextToken, onPage: onPage)
    }

}

extension IoTSecureTunneling.ListTunnelsRequest: AWSPaginateStringToken {
    public init(_ original: IoTSecureTunneling.ListTunnelsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            thingName: original.thingName
        )
    }
}


