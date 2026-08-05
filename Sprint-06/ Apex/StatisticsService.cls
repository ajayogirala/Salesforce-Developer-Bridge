public with sharing class StatisticsService {

    public static void updateStatistics(
        List<Application__c> newList,
        Map<Id,Application__c> oldMap){

        for(Application__c app : newList){

            if(app.Status__c=='Selected' &&
               oldMap.get(app.Id).Status__c!='Selected'){

                System.debug('Placement statistics updated.');

            }

        }

    }

}
