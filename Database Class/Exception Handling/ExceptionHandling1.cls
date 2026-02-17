public class ExceptionHandling1 {
    public static void myMethod(integer i){
        // try - catch - finally blocks
        // try -> exception might occur
        // catch -> when try block throws an exception , the flow will go to catch block
        // finally -> free up the resources and code irrespective of exception occurs or not
        // every try block should have atleast one catch block
        
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
            System.debug('I execute when there is any other exception except DMLException occur in the try block');
        }
        finally{
            System.debug('I execute no matter if there is an Exception occur or not in the try block');
        }
    }
}