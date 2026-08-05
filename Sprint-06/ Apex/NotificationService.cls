
public with sharing class NotificationService {

    public static void sendNotifications(

        List<Application__c> newList,

        Map<Id,Application__c> oldMap){

        for(Application__c app:newList){

            if(app.Status__c!=oldMap.get(app.Id).Status__c){

                System.debug('Notification sent.');

            }

        }

    }

}
