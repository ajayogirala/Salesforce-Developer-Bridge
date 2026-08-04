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

Boolean result = ApplicationService.hasAlreadyApplied(
    student.Id,
    job.Id
);

System.debug(result);
