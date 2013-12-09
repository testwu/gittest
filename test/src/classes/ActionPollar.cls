public with sharing class ActionPollar {


    public void callmethod() {
    
        numberincreasedto = numberincreasedto + 1;
        
    }
    
    public ActionPollar(){
    
         numberincreasedto = 1;
    }
         
   
    public integer numberincreasedto { get; set; }

    }