public with sharing class OfferPostProcessingJob implements Queueable {

    private Id applicationId;

    public OfferPostProcessingJob(Id applicationId){
        this.applicationId = applicationId;
    }

    public void execute(QueueableContext context){

        System.debug('Queueable Job Started');

        Application__c app = [

            SELECT Id,
                   Status__c
            FROM Application__c
            WHERE Id = :applicationId
            LIMIT 1
        ];

        System.debug('Processing Application : ' + app.Id);

        // Future background processing
        System.debug('Queueable Job Completed');

    }
}
