public class ExceptionHandling2 {
    public static void myMethod(){
        //***SYSTEM EXCEPTIONS***
        
        //*** 1.) DMLException ***
        
        try{
        	Account a = new Account();		// name field is null - some validation errors
            insert a; 						// throws dml exception class object
        }
        catch(DMLException de){ 
            System.debug('Record cannot be inserted '+de.getMessage());
        }
        
        // dml exception class is a subclass of exception class
        
        //*** 2.) ListException ***
        //List index out of bound
        
        try{
            List<String> stlist = new List<String>{'Vithula','Sangeetha','Javeed'};
            System.debug(stlist[0]); // vithula
            System.debug(stlist[1]); // sangeetha
            System.debug(stlist[2]); // javeed
            System.debug(stlist[3]); // throws a listexception as there is no element on index 3
            						 // or the index 3 does not exist in the list
        }
        catch(ListException le){
            System.debug('There is no value on this index: '+le.getMessage());
        }
        
        //*** 3.) NullPointerException ***
        
        try{
            
            // eg 1
            integer a;
            integer b = a*8; // will throw a nullpointer exception. we are trying to get the value of 'a' which is null
            				 // 'a' which is null hence whenever we try to de-reference a variable which stores null then apex throws nullpointerexception
            
            // eg 2
            List<Integer> ilist; // List<Integer> ilist = new List<Integer>();
            ilist.add(30); // throws nullpointer exception as ilist does not refere to any object
            
            // eg 3
            Account acc;
            acc.name = 'vithula'; // throws nullpointer exception as acc does not refere to any sobject
        }
        catch(NullPointerException npe){
            System.debug('There is no object in the reference variable : '+npe.getMessage());
        }
        
        //*** 4.) QueryException ***
        
        try{
            Account a = [Select name from account where name='vithula']; // this query will return more than one record but we are assigning it to a single sobject. hence it will throw a query exception
            Account b = [select name from account where name = 'any company']; // this will return no record and will throw a query exception
        }
        catch(QueryException qe){
            System.debug('There is a problem with the query: '+qe.getMessage());
        }
        
        
        //*** 5.) sobjectException ***
        
        try{
            List<Account> acclist = [select name from account];
            for(account a:acclist){
                system.debug(a.NumberOfEmployees); //you are trying to access the field which is not retrieved in the query. hence it will throw a sobject exception
            }
        }
        catch(sobjectException se){
            System.debug('There is a problem with the query: '+se.getMessage());
        }
    }
}