Application__c app = [
    SELECT Id
    FROM Application__c
    LIMIT 1
];

String result = ApplicationService.updateApplicationStatus(
    app.Id,
    'Selected'
);

System.debug(result);
