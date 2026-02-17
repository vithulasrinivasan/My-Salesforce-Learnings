public class ExceptionHandling3 {
    public static void myMethod(integer i){
        
        //***GENERIC EXCEPTION***
        // If you do not know which exception might occur in the try block then in that case use generic exception
        // Generic Exception "EXCEPTION" is a super class of all the exception classes which can catch any type of exception
        
        try{
            List<Account> acclist = [select name from account];
            for(account a:acclist){
                a.numberofemployees=1000;
            }
            update acclist;
        }
        catch(exception e){
            system.debug('This is a generic exception '+e.getmessage());
        }
        
        //NOTE: if you are using generic exception catch block then make sure it is the last catch block in the list of catch blocks
        // otherwise the catch block that you will write down after it will never be executed and will be considered as unreachable code which is not allowed in apex
        
        try{
            if(i==0){
                integer a; // a is not initialised before using a * operator
                integer b=a*5; // throws nullpointer exception
            }
            else{
                Account acc= new Account();
                insert acc; // throws DMLException
            }
        }
        catch(NullPointerException npe){
            System.debug('I execute when there is a NullPointerException occur in the try block');
        }
        catch(DMLException d){
            System.debug('I execute when there is a DMLException occur in the try block');
        }
        catch(Exception e){
            System.debug('I execute when there is any other exception except NullPointerException & DMLException occur in the try block');
        }
        
        
        
    }
}