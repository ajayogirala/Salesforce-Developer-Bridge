public with sharing class ApplicationController {

    @AuraEnabled(cacheable=true)
    public static List<Job__c> getEligibleJobs(Id studentId) {

        return [
            SELECT Id, Name
            FROM Job__c
            ORDER BY CreatedDate DESC
        ];
    }

    @AuraEnabled
    public static String submitApplication(Id studentId, Id jobId) {

        return ApplicationService.createApplication(
            studentId,
            jobId
        );
    }
}
