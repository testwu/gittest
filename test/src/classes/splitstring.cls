public with sharing class splitstring {

    public String allsearch { get; set; }
    
    public list<Candidate__c> allcan { get; set; }

    public void checkdatainaccount() {
    
        list<string> allstrs = allsearch.split(',');
        
        system.debug('all data size==========>'+allstrs.size());
        
        allcan = [select id, name, First_Name__c from Candidate__c where name=:allstrs];
        
        system.debug('number of candidates========>'+allcan.size());
               
    }


    }