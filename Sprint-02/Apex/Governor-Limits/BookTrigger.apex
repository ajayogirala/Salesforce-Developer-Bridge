
trigger BookTrigger on Book__c (before insert) {

    for (Book__c b : Trigger.new) {

        List<Book__c> books =
            [SELECT Id FROM Book__c];

        System.debug(books.size());

    }

}
