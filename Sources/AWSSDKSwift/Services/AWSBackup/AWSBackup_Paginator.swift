// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension AWSBackup {

    ///  Returns metadata about your backup jobs.
    public func listBackupJobsPaginator(_ input: ListBackupJobsInput) -> EventLoopFuture<[BackupJob]> {
        return client.paginate(input: input, command: listBackupJobs, resultKey: "backupJobs", tokenKey: "nextToken")
    }
    
    ///  Returns metadata of your saved backup plan templates, including the template ID, name, and the creation and deletion dates.
    public func listBackupPlanTemplatesPaginator(_ input: ListBackupPlanTemplatesInput) -> EventLoopFuture<[BackupPlanTemplatesListMember]> {
        return client.paginate(input: input, command: listBackupPlanTemplates, resultKey: "backupPlanTemplatesList", tokenKey: "nextToken")
    }
    
    ///  Returns version metadata of your backup plans, including Amazon Resource Names (ARNs), backup plan IDs, creation and deletion dates, plan names, and version IDs.
    public func listBackupPlanVersionsPaginator(_ input: ListBackupPlanVersionsInput) -> EventLoopFuture<[BackupPlansListMember]> {
        return client.paginate(input: input, command: listBackupPlanVersions, resultKey: "backupPlanVersionsList", tokenKey: "nextToken")
    }
    
    ///  Returns metadata of your saved backup plans, including Amazon Resource Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan names, and creator request IDs.
    public func listBackupPlansPaginator(_ input: ListBackupPlansInput) -> EventLoopFuture<[BackupPlansListMember]> {
        return client.paginate(input: input, command: listBackupPlans, resultKey: "backupPlansList", tokenKey: "nextToken")
    }
    
    ///  Returns an array containing metadata of the resources associated with the target backup plan.
    public func listBackupSelectionsPaginator(_ input: ListBackupSelectionsInput) -> EventLoopFuture<[BackupSelectionsListMember]> {
        return client.paginate(input: input, command: listBackupSelections, resultKey: "backupSelectionsList", tokenKey: "nextToken")
    }
    
    ///  Returns a list of recovery point storage containers along with information about them.
    public func listBackupVaultsPaginator(_ input: ListBackupVaultsInput) -> EventLoopFuture<[BackupVaultListMember]> {
        return client.paginate(input: input, command: listBackupVaults, resultKey: "backupVaultList", tokenKey: "nextToken")
    }
    
    ///  Returns metadata about your copy jobs.
    public func listCopyJobsPaginator(_ input: ListCopyJobsInput) -> EventLoopFuture<[CopyJob]> {
        return client.paginate(input: input, command: listCopyJobs, resultKey: "copyJobs", tokenKey: "nextToken")
    }
    
    ///  Returns an array of resources successfully backed up by AWS Backup, including the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource type.
    public func listProtectedResourcesPaginator(_ input: ListProtectedResourcesInput) -> EventLoopFuture<[ProtectedResource]> {
        return client.paginate(input: input, command: listProtectedResources, resultKey: "results", tokenKey: "nextToken")
    }
    
    ///  Returns detailed information about the recovery points stored in a backup vault.
    public func listRecoveryPointsByBackupVaultPaginator(_ input: ListRecoveryPointsByBackupVaultInput) -> EventLoopFuture<[RecoveryPointByBackupVault]> {
        return client.paginate(input: input, command: listRecoveryPointsByBackupVault, resultKey: "recoveryPoints", tokenKey: "nextToken")
    }
    
    ///  Returns detailed information about recovery points of the type specified by a resource Amazon Resource Name (ARN).
    public func listRecoveryPointsByResourcePaginator(_ input: ListRecoveryPointsByResourceInput) -> EventLoopFuture<[RecoveryPointByResource]> {
        return client.paginate(input: input, command: listRecoveryPointsByResource, resultKey: "recoveryPoints", tokenKey: "nextToken")
    }
    
    ///  Returns a list of jobs that AWS Backup initiated to restore a saved resource, including metadata about the recovery process.
    public func listRestoreJobsPaginator(_ input: ListRestoreJobsInput) -> EventLoopFuture<[RestoreJobsListMember]> {
        return client.paginate(input: input, command: listRestoreJobs, resultKey: "restoreJobs", tokenKey: "nextToken")
    }
    
}

extension AWSBackup.ListBackupJobsInput: AWSPaginateable {
    public init(_ original: AWSBackup.ListBackupJobsInput, token: String) {
        self.init(
            byBackupVaultName: original.byBackupVaultName, 
            byCreatedAfter: original.byCreatedAfter, 
            byCreatedBefore: original.byCreatedBefore, 
            byResourceArn: original.byResourceArn, 
            byResourceType: original.byResourceType, 
            byState: original.byState, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension AWSBackup.ListBackupPlanTemplatesInput: AWSPaginateable {
    public init(_ original: AWSBackup.ListBackupPlanTemplatesInput, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension AWSBackup.ListBackupPlanVersionsInput: AWSPaginateable {
    public init(_ original: AWSBackup.ListBackupPlanVersionsInput, token: String) {
        self.init(
            backupPlanId: original.backupPlanId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension AWSBackup.ListBackupPlansInput: AWSPaginateable {
    public init(_ original: AWSBackup.ListBackupPlansInput, token: String) {
        self.init(
            includeDeleted: original.includeDeleted, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension AWSBackup.ListBackupSelectionsInput: AWSPaginateable {
    public init(_ original: AWSBackup.ListBackupSelectionsInput, token: String) {
        self.init(
            backupPlanId: original.backupPlanId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension AWSBackup.ListBackupVaultsInput: AWSPaginateable {
    public init(_ original: AWSBackup.ListBackupVaultsInput, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension AWSBackup.ListCopyJobsInput: AWSPaginateable {
    public init(_ original: AWSBackup.ListCopyJobsInput, token: String) {
        self.init(
            byCreatedAfter: original.byCreatedAfter, 
            byCreatedBefore: original.byCreatedBefore, 
            byDestinationVaultArn: original.byDestinationVaultArn, 
            byResourceArn: original.byResourceArn, 
            byResourceType: original.byResourceType, 
            byState: original.byState, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension AWSBackup.ListProtectedResourcesInput: AWSPaginateable {
    public init(_ original: AWSBackup.ListProtectedResourcesInput, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension AWSBackup.ListRecoveryPointsByBackupVaultInput: AWSPaginateable {
    public init(_ original: AWSBackup.ListRecoveryPointsByBackupVaultInput, token: String) {
        self.init(
            backupVaultName: original.backupVaultName, 
            byBackupPlanId: original.byBackupPlanId, 
            byCreatedAfter: original.byCreatedAfter, 
            byCreatedBefore: original.byCreatedBefore, 
            byResourceArn: original.byResourceArn, 
            byResourceType: original.byResourceType, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension AWSBackup.ListRecoveryPointsByResourceInput: AWSPaginateable {
    public init(_ original: AWSBackup.ListRecoveryPointsByResourceInput, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            resourceArn: original.resourceArn
        )
    }
}

extension AWSBackup.ListRestoreJobsInput: AWSPaginateable {
    public init(_ original: AWSBackup.ListRestoreJobsInput, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


