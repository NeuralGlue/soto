//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension AlexaForBusiness {
    ///  Lists the details of the schedules that a user configured. A download URL of the report associated with each schedule is returned every time this action is called. A new download URL is returned each time, and is valid for 24 hours.
    public func listBusinessReportSchedulesPaginator(
        _ input: ListBusinessReportSchedulesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListBusinessReportSchedulesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBusinessReportSchedules,
            tokenKey: \ListBusinessReportSchedulesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists conference providers under a specific AWS account.
    public func listConferenceProvidersPaginator(
        _ input: ListConferenceProvidersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListConferenceProvidersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listConferenceProviders,
            tokenKey: \ListConferenceProvidersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the device event history, including device connection status, for up to 30 days.
    public func listDeviceEventsPaginator(
        _ input: ListDeviceEventsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDeviceEventsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDeviceEvents,
            tokenKey: \ListDeviceEventsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of gateway group summaries. Use GetGatewayGroup to retrieve details of a specific gateway group.
    public func listGatewayGroupsPaginator(
        _ input: ListGatewayGroupsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListGatewayGroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGatewayGroups,
            tokenKey: \ListGatewayGroupsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of gateway summaries. Use GetGateway to retrieve details of a specific gateway. An optional gateway group ARN can be provided to only retrieve gateway summaries of gateways that are associated with that gateway group ARN.
    public func listGatewaysPaginator(
        _ input: ListGatewaysRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListGatewaysResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGateways,
            tokenKey: \ListGatewaysResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all enabled skills in a specific skill group.
    public func listSkillsPaginator(
        _ input: ListSkillsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSkillsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSkills,
            tokenKey: \ListSkillsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all categories in the Alexa skill store.
    public func listSkillsStoreCategoriesPaginator(
        _ input: ListSkillsStoreCategoriesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSkillsStoreCategoriesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSkillsStoreCategories,
            tokenKey: \ListSkillsStoreCategoriesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all skills in the Alexa skill store by category.
    public func listSkillsStoreSkillsByCategoryPaginator(
        _ input: ListSkillsStoreSkillsByCategoryRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSkillsStoreSkillsByCategoryResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSkillsStoreSkillsByCategory,
            tokenKey: \ListSkillsStoreSkillsByCategoryResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all of the smart home appliances associated with a room.
    public func listSmartHomeAppliancesPaginator(
        _ input: ListSmartHomeAppliancesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSmartHomeAppliancesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSmartHomeAppliances,
            tokenKey: \ListSmartHomeAppliancesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all tags for the specified resource.
    public func listTagsPaginator(
        _ input: ListTagsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTagsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTags,
            tokenKey: \ListTagsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Searches address books and lists the ones that meet a set of filter and sort criteria.
    public func searchAddressBooksPaginator(
        _ input: SearchAddressBooksRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (SearchAddressBooksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchAddressBooks,
            tokenKey: \SearchAddressBooksResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Searches contacts and lists the ones that meet a set of filter and sort criteria.
    public func searchContactsPaginator(
        _ input: SearchContactsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (SearchContactsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchContacts,
            tokenKey: \SearchContactsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Searches devices and lists the ones that meet a set of filter criteria.
    public func searchDevicesPaginator(
        _ input: SearchDevicesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (SearchDevicesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchDevices,
            tokenKey: \SearchDevicesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Searches network profiles and lists the ones that meet a set of filter and sort criteria.
    public func searchNetworkProfilesPaginator(
        _ input: SearchNetworkProfilesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (SearchNetworkProfilesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchNetworkProfiles,
            tokenKey: \SearchNetworkProfilesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Searches room profiles and lists the ones that meet a set of filter criteria.
    public func searchProfilesPaginator(
        _ input: SearchProfilesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (SearchProfilesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchProfiles,
            tokenKey: \SearchProfilesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Searches rooms and lists the ones that meet a set of filter and sort criteria.
    public func searchRoomsPaginator(
        _ input: SearchRoomsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (SearchRoomsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchRooms,
            tokenKey: \SearchRoomsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Searches skill groups and lists the ones that meet a set of filter and sort criteria.
    public func searchSkillGroupsPaginator(
        _ input: SearchSkillGroupsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (SearchSkillGroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchSkillGroups,
            tokenKey: \SearchSkillGroupsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Searches users and lists the ones that meet a set of filter and sort criteria.
    public func searchUsersPaginator(
        _ input: SearchUsersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (SearchUsersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchUsers,
            tokenKey: \SearchUsersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension AlexaForBusiness.ListBusinessReportSchedulesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListBusinessReportSchedulesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AlexaForBusiness.ListConferenceProvidersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListConferenceProvidersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AlexaForBusiness.ListDeviceEventsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListDeviceEventsRequest {
        return .init(
            deviceArn: self.deviceArn,
            eventType: self.eventType,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AlexaForBusiness.ListGatewayGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListGatewayGroupsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AlexaForBusiness.ListGatewaysRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListGatewaysRequest {
        return .init(
            gatewayGroupArn: self.gatewayGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AlexaForBusiness.ListSkillsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListSkillsRequest {
        return .init(
            enablementType: self.enablementType,
            maxResults: self.maxResults,
            nextToken: token,
            skillGroupArn: self.skillGroupArn,
            skillType: self.skillType
        )
    }
}

extension AlexaForBusiness.ListSkillsStoreCategoriesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListSkillsStoreCategoriesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AlexaForBusiness.ListSkillsStoreSkillsByCategoryRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListSkillsStoreSkillsByCategoryRequest {
        return .init(
            categoryId: self.categoryId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AlexaForBusiness.ListSmartHomeAppliancesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListSmartHomeAppliancesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            roomArn: self.roomArn
        )
    }
}

extension AlexaForBusiness.ListTagsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.ListTagsRequest {
        return .init(
            arn: self.arn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AlexaForBusiness.SearchAddressBooksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.SearchAddressBooksRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )
    }
}

extension AlexaForBusiness.SearchContactsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.SearchContactsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )
    }
}

extension AlexaForBusiness.SearchDevicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.SearchDevicesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )
    }
}

extension AlexaForBusiness.SearchNetworkProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.SearchNetworkProfilesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )
    }
}

extension AlexaForBusiness.SearchProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.SearchProfilesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )
    }
}

extension AlexaForBusiness.SearchRoomsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.SearchRoomsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )
    }
}

extension AlexaForBusiness.SearchSkillGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.SearchSkillGroupsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )
    }
}

extension AlexaForBusiness.SearchUsersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AlexaForBusiness.SearchUsersRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )
    }
}
