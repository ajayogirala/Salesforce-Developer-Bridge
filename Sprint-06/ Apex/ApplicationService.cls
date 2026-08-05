public with sharing class ApplicationService {

    // Sprint 13 - Validate Applications
    public static void validateApplications(List<Application__c> applications) {

        for (Application__c app : applications) {

            if (hasAlreadyApplied(app.Student__c, app.Job__c)) {

                app.addError('Student has already applied for this job.');

            }

        }
    }

    // Sprint 9
    public static Boolean hasAlreadyApplied(Id studentId, Id jobId) {

        List<Application__c> applications = [
            SELECT Id
            FROM Application__c
            WHERE Student__c = :studentId
            AND Job__c = :jobId
        ];

        return !applications.isEmpty();
    }

    // Sprint 10
    public static String createApplication(Id studentId, Id jobId) {

        if (hasAlreadyApplied(studentId, jobId)) {
            return 'Student has already applied for this job.';
        }

        Application__c app = new Application__c();

        app.Student__c = studentId;
        app.Job__c = jobId;
        app.Status__c = 'Applied';
        app.Application_Date__c = Date.today();

        insert app;

        return 'Application created successfully.';
    }

    // Sprint 11
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
