public class StandardControllerClass {

    public Account accObj;
    public StandardControllerClass(ApexPages.StandardController controller) {
        accObj=(Account)controller.getrecord();
    }
    
    public pageReference CustomSave()
    {
        system.debug('Check All Records=====>'+accObj.name);
        Account accNEWObj=new Account();
        accNEWObj.name=accObj.name;
        accNEWObj.Active__c=accObj.Active__c;
        insert accNEWObj;
        
        
        pageReference pagref=new pageReference('/'+accNEWObj.id);
        return pagref;
    }
    
    public void CustomCancel()
    {
    
    }

}