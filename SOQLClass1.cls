public class SOQLClass1 {
	public static void myMethod()
    {
        List<Account> acclist = [Select Name, NumberOfEmployees from Account];
        
        // For Loop
        for(integer i=0; i<acclist.size(); i++)
        {
            System.debug(acclist[i].numberOfEmployees);
        }
        
        // For each Loop
        for(Account a:acclist)
        {
            System.debug('Acc Name = '+ a.Name + ' NumOfEmp = '+a.NumberOfEmployees);
        }    
    }
}