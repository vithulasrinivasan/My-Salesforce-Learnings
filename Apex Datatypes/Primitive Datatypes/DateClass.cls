public class DateClass {
	public static void myMethod()
    {
        //***DATE DATATYPE***
        
        Date d1;
        d1= Date.today(); //Current Date using static method
        
        d1= Date.newInstance(2018,01,01); //(YYYY,MM,DD)
        
        System.debug(d1.toStartOfMonth()); //2018-01-01
        System.debug(d1.toStartOfWeek()); //2017-12-31
      
        System.debug(d1=d1.addDays(5)); //2018-01-06
        System.debug(d1=d1+5); //2018-01-11
        
        System.debug(d1=d1.addMonths(4)); //2018-05-11
        System.debug(d1=d1.addYears(6)); //2024-05-11
        
        //***TIME DATATYPE***
        
        //Declaring a variable
        time t1;
        //Assigning a value to variable
        t1 = Time.newInstance(15,44,45,50); //(HH,MM,SS,MS)
        
        System.debug(t1.addHours(2)); //17:44:45:50
        System.debug(t1.addMinutes(20)); //18:04:45:50
        
        //***DATETIME DATATYPE***
        
        //Declaring and Assigning a variable
        
        Datetime dt1 = DateTime.newInstance(2018,05,15,09,20,30); //(YYYY,MM,DD,HH,MM,SS)
        System.debug(DateTime.now()); //Current date and time
    }
}