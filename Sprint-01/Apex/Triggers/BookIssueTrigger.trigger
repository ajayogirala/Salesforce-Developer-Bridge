
trigger BookIssueTrigger on Book_Issue__c (after update) {

    if (Trigger.isAfter && Trigger.isUpdate) {

        BookTriggerHandler.updateBookStatus(Trigger.new);

    }

}
