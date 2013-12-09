public class wraperclass{
    public boolean passbooleanvalue;
    public list<Candidate__c> passallcan;
    public list<subclass> alldatatoshow{get;set;}
    public wraperclass(){
        alldatatoshow = new list<subclass>();
        passbooleanvalue = false;
        passallcan = [select id,name, First_Name__c from Candidate__c limit 1];
        for(integer i=0; i<passallcan.size(); i++){
            subclass singlerecord = new subclass(passbooleanvalue, passallcan[i]);
            alldatatoshow.add(singlerecord );
            }
        }
     public void deleterecords(){
         for(integer i=0;i<alldatatoshow.size();i++){
             if(alldatatoshow[i].trueorfalse == true){
                 system.debug('number of cadidates selected to delete=========>'+i);
                 //delete alldatatoshow[i].allcandidates;
                 }
             }
         }
     }