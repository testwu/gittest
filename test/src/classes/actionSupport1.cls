public class actionSupport1 {

    public Contact allvalues;
    public actionSupport1(ApexPages.StandardController controller) {
        allValues = (Contact)controller.getRecord();
        
    }
    public void actionSupportmethod()
    {
        system.debug('ALL ACOUNT FROM VF PAGE=====>'+allValues);
        Account allAcc=[select id,name,phone from Account where id=:allValues.AccountID];
        allvalues.phone = allAcc.phone;
        
    }
    
}