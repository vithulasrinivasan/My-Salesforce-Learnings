public class SOQLClass5 {
	public static void myMethod()
    {
        //***DATE LITERALS***
        List<Account> acclist;
        
        //yesterday
        acclist = [SELECT Name from Account where createdDate = yesterday];
        
        //today
        acclist = [SELECT Name from Account where createdDate= today];
        
        //Traditional way
        Date d = Date.today() - 1;
        acclist = [SELECT Name from Account where createdDate = :d];

        //tomorrow
        acclist = [SELECT Name from Account where createdDate = tomorrow];
		
        //last_week / last_month - complete range instead of startdate >= d >=lastdate
        acclist = [SELECT Name from Account where createdDate = last_week];
        acclist = [SELECT Name from Account where createdDate = last_month];

    }
}