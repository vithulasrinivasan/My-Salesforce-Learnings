public class ExceptionHandling4 {
	public static void myMethod(integer i){
        
        //***COMMON EXCEPTION METHODS***
        // get different info from the exception thrown
        
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
        catch(Exception e){
            System.debug(e.getcause()); //returns the cause of the exception
            System.debug(e.getLineNumber()); //returns the line number from where the exception was thrown
            System.debug(e.getMessage()); //returns the error message that displays for the user
            System.debug(e.getStackTraceString()); //returns the stack trace as a string
            //complete flow in detail from where the program got executed , which method got called and everything
            
            System.debug(e.getTypeName()); //returns the type of the exception
        }
    }
}