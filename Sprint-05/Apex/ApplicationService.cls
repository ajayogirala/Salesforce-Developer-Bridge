public with sharing class ApplicationService {

    // Sprint 9 - Check Duplicate Application
    public static Boolean hasAlreadyApplied(Id studentId, Id jobId) {

        List<Application__c> applications = [
            SELECT Id
            FROM Application__c
            WHERE Student__c = :studentId
            AND Job__c = :jobId
        ];

        return !applications.isEmpty();
    }

    // Sprint 10 - Create Application
    public static String createApplication(Id studentId, Id jobId) {

        // Check duplicate application
        if (hasAlreadyApplied(studentId, jobId)) {
            return 'Student has already applied for this job.';
        }

        // Create new Application record
        Application__c app = new Application__c();

        app.Student__c = studentId;
        app.Job__c = jobId;
        app.Status__c = 'Applied';
        app.Application_Date__c = Date.today();

        insert app;

        return 'Application created successfully.';
    }

    // Sprint 11 - Update Application Status
    public static String updateApplicationStatus(Id applicationId, String newStatus) {

        Application__c app = [
            SELECT Id, Status__c
            FROM Application__c
            WHERE Id = :applicationId
            LIMIT 1
        ];

        app.Status__c = newStatus;

        update app;

        return 'Application status updated successfully.';
    }

}
