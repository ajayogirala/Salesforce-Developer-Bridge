Student__c student = [
    SELECT Id
    FROM Student__c
    LIMIT 1
];

Job__c job = [
    SELECT Id
    FROM Job__c
    LIMIT 1
];

String result = ApplicationService.createApplication(
    student.Id,
    job.Id
);

System.debug(result);
