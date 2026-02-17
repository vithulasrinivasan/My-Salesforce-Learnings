public class ExceptionHandling5 {
    public static void myMethod(integer i){
        //***CUSTOM EXCEPTIONS***
        
        try{
            if(i<0){
                throw new MyException(); //create an object of the custom exception and throw it
            }
            else{
                i=i*i*10;
            }
        }
        catch(MyException e){
            System.debug('The number is negative');
        }
    }
}