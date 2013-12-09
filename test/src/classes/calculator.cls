public class calculator {
    public calculator()
        {
        
            boolvalue = false;
        }
        
    
    public boolean boolvalue { get; set; }


    public integer res { get; set; }
    public integer num1 { get; set; }
    public integer num2 { get; set; }

    
    public void div() {
        boolvalue = true;
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
        boolvalue = true;
        res=num1*num2;
    }


    public void sub() {
        boolvalue = true;
        res=num1-num2;
    }


    public void add() {
        boolvalue = true;
        res=num1+num2;
    }

   }