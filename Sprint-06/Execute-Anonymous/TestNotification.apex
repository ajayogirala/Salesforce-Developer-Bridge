Application__c app=[
SELECT Id,Status__c
FROM Application__c
LIMIT 1
];

app.Status__c='Rejected';

update app;
