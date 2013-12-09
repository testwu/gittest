public class calculator1 {
           
    
    
    public integer res { get; set; }
    public integer num1 { get; set; }
    public integer num2 { get; set; }

    
    public void div() {
        if(num2!=0)
        {
                res=num1/num2;
                }
                else
                {
                    ApexPages.addMessage(new ApexPages.message(ApexPages.severity.warning,'<====Please dont provide Zero in Num2====>'));
                    }            
    }


    public void mul() {
       res=num1*num2;
    }


    public void sub() {
        res=num1-num2;
    }


    public void add() {
        res=num1+num2;
    }

   }