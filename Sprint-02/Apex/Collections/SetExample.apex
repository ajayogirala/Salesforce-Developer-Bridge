
Set<Id> bookIds = new Set<Id>();

for(Book__c b : [SELECT Id FROM Book__c]){
    bookIds.add(b.Id);
}

System.debug(bookIds.size());
