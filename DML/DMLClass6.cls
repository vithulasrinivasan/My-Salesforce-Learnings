public class DMLClass6 {
    public static void myMethod(){
        //***MERGE***
        //merge only works with Accounts, Leads and Contacts
        //Different Merging combinations:-
        //1.sobject with sobject
        //2.sobject with list<sobject>
        //3.sobject with ID
        //4.sobject with list<ID>
        
        //NOTE:list<sobject> or list<ID> in above combinations can have maximum 2 sobjects or IDs in it, not more than that.
        
        List<Account> acclist = [SELECT Name from account where name like 'merg%' limit 3];
        Account a = acclist[0];
        Account b = acclist[1];
        Account c = acclist[2];
        
        List<Account> mergelist = new List<Account>();
        mergelist.add(b);
        mergelist.add(c);
        
        //merge a b;  //for 2 records
        
        merge a mergelist; //for 3 records
        
        //merge a c.id; //with ID
            
        
    }
}