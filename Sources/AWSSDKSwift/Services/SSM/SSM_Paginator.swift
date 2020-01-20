// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension SSM {

    ///  Describes details about the activation, such as the date and time the activation was created, its expiration date, the IAM role assigned to the instances in the activation, and the number of instances registered by using this activation.
    public func describeActivationsPaginator(_ input: DescribeActivationsRequest) -> EventLoopFuture<[Activation]> {
        return client.paginate(input: input, command: describeActivations, resultKey: "activationList", tokenKey: "nextToken")
    }
    
    ///  Describes one or more of your instances. You can use this to get information about instances like the operating system platform, the SSM Agent version (Linux), status etc. If you specify one or more instance IDs, it returns information for those instances. If you do not specify instance IDs, it returns information for all your instances. If you specify an instance ID that is not valid or an instance that you do not own, you receive an error.   The IamRole field for this API action is the Amazon Identity and Access Management (IAM) role assigned to on-premises instances. This call does not return the IAM role for Amazon EC2 instances. 
    public func describeInstanceInformationPaginator(_ input: DescribeInstanceInformationRequest) -> EventLoopFuture<[InstanceInformation]> {
        return client.paginate(input: input, command: describeInstanceInformation, resultKey: "instanceInformationList", tokenKey: "nextToken")
    }
    
    ///  Get information about a parameter.  Request results are returned on a best-effort basis. If you specify MaxResults in the request, the response includes information up to the limit specified. The number of items returned, however, can be between zero and the value of MaxResults. If the service reaches an internal limit while processing the results, it stops the operation and returns the matching values up to that point and a NextToken. You can specify the NextToken in a subsequent call to get the next set of results. 
    public func describeParametersPaginator(_ input: DescribeParametersRequest) -> EventLoopFuture<[ParameterMetadata]> {
        return client.paginate(input: input, command: describeParameters, resultKey: "parameters", tokenKey: "nextToken")
    }
    
    ///  Query a list of all parameters used by the AWS account.
    public func getParameterHistoryPaginator(_ input: GetParameterHistoryRequest) -> EventLoopFuture<[ParameterHistory]> {
        return client.paginate(input: input, command: getParameterHistory, resultKey: "parameters", tokenKey: "nextToken")
    }
    
    ///  Retrieve information about one or more parameters in a specific hierarchy.   Request results are returned on a best-effort basis. If you specify MaxResults in the request, the response includes information up to the limit specified. The number of items returned, however, can be between zero and the value of MaxResults. If the service reaches an internal limit while processing the results, it stops the operation and returns the matching values up to that point and a NextToken. You can specify the NextToken in a subsequent call to get the next set of results. 
    public func getParametersByPathPaginator(_ input: GetParametersByPathRequest) -> EventLoopFuture<[Parameter]> {
        return client.paginate(input: input, command: getParametersByPath, resultKey: "parameters", tokenKey: "nextToken")
    }
    
    ///  Returns all State Manager associations in the current AWS account and Region. You can limit the results to a specific State Manager association document or instance by specifying a filter.
    public func listAssociationsPaginator(_ input: ListAssociationsRequest) -> EventLoopFuture<[Association]> {
        return client.paginate(input: input, command: listAssociations, resultKey: "associations", tokenKey: "nextToken")
    }
    
    ///  An invocation is copy of a command sent to a specific instance. A command can apply to one or more instances. A command invocation applies to one instance. For example, if a user runs SendCommand against three instances, then a command invocation is created for each requested instance ID. ListCommandInvocations provide status about command execution.
    public func listCommandInvocationsPaginator(_ input: ListCommandInvocationsRequest) -> EventLoopFuture<[CommandInvocation]> {
        return client.paginate(input: input, command: listCommandInvocations, resultKey: "commandInvocations", tokenKey: "nextToken")
    }
    
    ///  Lists the commands requested by users of the AWS account.
    public func listCommandsPaginator(_ input: ListCommandsRequest) -> EventLoopFuture<[Command]> {
        return client.paginate(input: input, command: listCommands, resultKey: "commands", tokenKey: "nextToken")
    }
    
    ///  Returns all Systems Manager (SSM) documents in the current AWS account and Region. You can limit the results of this request by using a filter.
    public func listDocumentsPaginator(_ input: ListDocumentsRequest) -> EventLoopFuture<[DocumentIdentifier]> {
        return client.paginate(input: input, command: listDocuments, resultKey: "documentIdentifiers", tokenKey: "nextToken")
    }
    
}

extension SSM.DescribeActivationsRequest: AWSPaginateable {
    public init(_ original: SSM.DescribeActivationsRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension SSM.DescribeInstanceInformationRequest: AWSPaginateable {
    public init(_ original: SSM.DescribeInstanceInformationRequest, token: String) {
        self.init(
            filters: original.filters, 
            instanceInformationFilterList: original.instanceInformationFilterList, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension SSM.DescribeParametersRequest: AWSPaginateable {
    public init(_ original: SSM.DescribeParametersRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token, 
            parameterFilters: original.parameterFilters
        )
    }
}

extension SSM.GetParameterHistoryRequest: AWSPaginateable {
    public init(_ original: SSM.GetParameterHistoryRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            name: original.name, 
            nextToken: token, 
            withDecryption: original.withDecryption
        )
    }
}

extension SSM.GetParametersByPathRequest: AWSPaginateable {
    public init(_ original: SSM.GetParametersByPathRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            parameterFilters: original.parameterFilters, 
            path: original.path, 
            recursive: original.recursive, 
            withDecryption: original.withDecryption
        )
    }
}

extension SSM.ListAssociationsRequest: AWSPaginateable {
    public init(_ original: SSM.ListAssociationsRequest, token: String) {
        self.init(
            associationFilterList: original.associationFilterList, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension SSM.ListCommandInvocationsRequest: AWSPaginateable {
    public init(_ original: SSM.ListCommandInvocationsRequest, token: String) {
        self.init(
            commandId: original.commandId, 
            details: original.details, 
            filters: original.filters, 
            instanceId: original.instanceId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension SSM.ListCommandsRequest: AWSPaginateable {
    public init(_ original: SSM.ListCommandsRequest, token: String) {
        self.init(
            commandId: original.commandId, 
            filters: original.filters, 
            instanceId: original.instanceId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension SSM.ListDocumentsRequest: AWSPaginateable {
    public init(_ original: SSM.ListDocumentsRequest, token: String) {
        self.init(
            documentFilterList: original.documentFilterList, 
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


