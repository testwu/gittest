public class Allsearchdata1 {

    public list<Account> allacc { get; set; }

    public void searchdata() {
        system.debug('value to check===>'+ searchvalue );
        allacc = [select id,name,AccountNumber,AnnualRevenue,Active__c from Account where name=:searchvalue ];
        system.debug('OUT PUT VALUE============>'+allacc.size());
        outputtext = allacc.size();

            }
    public pagereference linkMethod()
    {
        String recordId=apexpages.currentpage().getparameters().get('txt');
        pagereference pageRef=new pagereference ('/'+recordId);
        return pageRef;
    }



    public integer outputtext { get; set; }

    public String searchvalue { get; set; }
}