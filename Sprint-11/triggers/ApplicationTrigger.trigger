trigger ApplicationTrigger on Application__c (after update) {

    List<Id> applicationsToSync = new List<Id>();

    for (Application__c newRecord : Trigger.new) {

        Application__c oldRecord =
            Trigger.oldMap.get(newRecord.Id);

        Boolean statusChangedToSelected =
            newRecord.Status__c == 'Selected' &&
            oldRecord.Status__c != 'Selected';

        if (statusChangedToSelected) {

            applicationsToSync.add(newRecord.Id);
        }
    }

    for (Id applicationId : applicationsToSync) {

        System.enqueueJob(
            new CandidateSyncQueueable(applicationId)
        );
    }
}
