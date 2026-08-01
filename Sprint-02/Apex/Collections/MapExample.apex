Map<Id,Book__c> bookMap =
new Map<Id,Book__c>(
    [SELECT Id, Name FROM Book__c]
);

Id recordId = bookMap.keySet().iterator().next();

System.debug(bookMap.get(recordId).Name);
