public with sharing class Addingnoaccs {
    public list<account> allaccs { get; set; }
    
    public Addingnoaccs()
    {
        allaccs = new list<account>();
        account acc1 = new account();
        account acc2 = new account();
        account acc3 = new account();
        allaccs.add(acc1);
        allaccs.add(acc2);
        allaccs.add(acc3);
        }

    public void save() {
        for(integer i=0; i<allaccs.size(); i++)
           {
               if(allaccs[i].name!=' ')
               {
                   insert allaccs[i];
                    }
            }
         }
                   


    public void removerow() {
        integer allaccsize = allaccs.size();
        if(allaccsize > 3)
        {
            allaccs.remove(allaccsize - 1);
            }
         }


    public void addrow() {
        account acc= new account();
        allaccs.add(acc);
            }
    }