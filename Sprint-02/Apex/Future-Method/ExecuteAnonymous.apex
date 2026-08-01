Book__c b = [
    SELECT Id
    FROM Book__c
    LIMIT 1
];

FutureExample.updateBook(b.Id);
