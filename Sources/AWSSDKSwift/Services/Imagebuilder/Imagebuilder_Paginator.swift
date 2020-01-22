// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Imagebuilder {

    ///   Returns the list of component build versions for the specified semantic version. 
    public func listComponentBuildVersionsPaginator(_ input: ListComponentBuildVersionsRequest, onPage: @escaping (ListComponentBuildVersionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listComponentBuildVersions, tokenKey: \ListComponentBuildVersionsResponse.nextToken, onPage: onPage)
    }

    ///   Returns the list of component build versions for the specified semantic version. 
    public func listComponentsPaginator(_ input: ListComponentsRequest, onPage: @escaping (ListComponentsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listComponents, tokenKey: \ListComponentsResponse.nextToken, onPage: onPage)
    }

    ///   Returns a list of distribution configurations. 
    public func listDistributionConfigurationsPaginator(_ input: ListDistributionConfigurationsRequest, onPage: @escaping (ListDistributionConfigurationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDistributionConfigurations, tokenKey: \ListDistributionConfigurationsResponse.nextToken, onPage: onPage)
    }

    ///   Returns a list of distribution configurations. 
    public func listImageBuildVersionsPaginator(_ input: ListImageBuildVersionsRequest, onPage: @escaping (ListImageBuildVersionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listImageBuildVersions, tokenKey: \ListImageBuildVersionsResponse.nextToken, onPage: onPage)
    }

    ///   Returns a list of images created by the specified pipeline. 
    public func listImagePipelineImagesPaginator(_ input: ListImagePipelineImagesRequest, onPage: @escaping (ListImagePipelineImagesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listImagePipelineImages, tokenKey: \ListImagePipelineImagesResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of image pipelines. 
    public func listImagePipelinesPaginator(_ input: ListImagePipelinesRequest, onPage: @escaping (ListImagePipelinesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listImagePipelines, tokenKey: \ListImagePipelinesResponse.nextToken, onPage: onPage)
    }

    ///   Returns a list of image recipes. 
    public func listImageRecipesPaginator(_ input: ListImageRecipesRequest, onPage: @escaping (ListImageRecipesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listImageRecipes, tokenKey: \ListImageRecipesResponse.nextToken, onPage: onPage)
    }

    ///   Returns the list of image build versions for the specified semantic version. 
    public func listImagesPaginator(_ input: ListImagesRequest, onPage: @escaping (ListImagesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listImages, tokenKey: \ListImagesResponse.nextToken, onPage: onPage)
    }

    ///   Returns a list of infrastructure configurations. 
    public func listInfrastructureConfigurationsPaginator(_ input: ListInfrastructureConfigurationsRequest, onPage: @escaping (ListInfrastructureConfigurationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listInfrastructureConfigurations, tokenKey: \ListInfrastructureConfigurationsResponse.nextToken, onPage: onPage)
    }

}

extension Imagebuilder.ListComponentBuildVersionsRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListComponentBuildVersionsRequest, token: String) {
        self.init(
            componentVersionArn: original.componentVersionArn, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Imagebuilder.ListComponentsRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListComponentsRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token, 
            owner: original.owner
        )
    }
}

extension Imagebuilder.ListDistributionConfigurationsRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListDistributionConfigurationsRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Imagebuilder.ListImageBuildVersionsRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListImageBuildVersionsRequest, token: String) {
        self.init(
            filters: original.filters, 
            imageVersionArn: original.imageVersionArn, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Imagebuilder.ListImagePipelineImagesRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListImagePipelineImagesRequest, token: String) {
        self.init(
            filters: original.filters, 
            imagePipelineArn: original.imagePipelineArn, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Imagebuilder.ListImagePipelinesRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListImagePipelinesRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Imagebuilder.ListImageRecipesRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListImageRecipesRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token, 
            owner: original.owner
        )
    }
}

extension Imagebuilder.ListImagesRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListImagesRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token, 
            owner: original.owner
        )
    }
}

extension Imagebuilder.ListInfrastructureConfigurationsRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListInfrastructureConfigurationsRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


