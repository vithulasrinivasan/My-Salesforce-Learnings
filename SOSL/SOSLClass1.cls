public class SOSLClass1 {
	public static void myMethod()
    {
        // List<List<sObject>> l = [Find 'Volkswagen'];
        // The above statement will give an error
        // SOSL in Apex needs to have the entities/objects specified
        
        // 2D list
        List<List<sObject>> l1 = [Find 'Volkswagen' Returning Account,Contact];
        
        List<List<sObject>> l2 = [Find 'Volkswagen' Returning Account(Name,NumberOfEmployees) ,Contact(name,phone)];
        //Return specified fields
        
        //How to access the records in Apex returned by SOSL
        List<Account> acclist = l2[0];
        List<Contact> conlist = l2[1];
        for(Account a:acclist)
        {
            System.debug(a.Name);
            System.debug(a.NumberOfEmployees);
        }
        for(Contact c:conlist)
        {
            System.debug(c.name);
            System.debug(c.phone);
        }

    }
}