public with sharing class appinfo {
    


public list<Job_Application__c> jobapp{get; set;}
id canrec = apexpages.currentpage().getparameters().get('id');

public appinfo ()
{
  system.debug('id in constructot=========>'+canrec);
  jobapp=[select id, Candidate__c, Position__r.name from Job_Application__c where Candidate__c=:canrec];
}
}