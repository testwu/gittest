public with sharing class appinfo1 {
    public appinfo1(ApexPages.StandardController controller) {
        system.debug('id in constructot=========>'+canrec);
        jobapp=[select id, Candidate__c, Position__c,Position__r.name from Job_Application__c where Candidate__c=:canrec];

    }



public list<Job_Application__c> jobapp{get; set;}
id canrec = apexpages.currentpage().getparameters().get('id');

}