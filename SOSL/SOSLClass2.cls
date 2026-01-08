public class SOSLClass2 {
	public static void myMethod()
    {
        /*
         Search in specified fields (SEARCH GROUP)
         1. ALL FIELDS (BY DEFAULT)
         2. NAME FIELDS
         3. EMAIL FIELDS
         4. PHONE FIELDS
         5. SIDEBAR FIELDS
        */
         
		//***ALL FIELDS***
		List<List<sObject>> solist = [FIND 'test' in ALL FIELDS RETURNING Account,Contact];
        List<Account> alist = solist[0];
        List<Contact> clist = solist[1];
        
        for(Account a:alist){
            System.debug(a);
        }
        for(Contact c:clist){
            System.debug(c);
        }
        
        //***NAME FIELDS*** -> salesforce by default creates when object is created or already there
        List<List<sObject>> results = [FIND 'Univ*' in NAME FIELDS RETURNING Account(Name,BillingCountry),Contact(firstname,lastname)];
        List<Account> acclist = results[0];        
        System.debug(acclist[0].Name); //University of Arizona
        
        //***EMAIL FIELDS***
        List<List<sObject>> slist = [FIND '*com' in EMAIL FIELDS RETURNING Contact(firstname,lastname,email)];
        List<Contact> con = slist[0];        
        System.debug(con[0].email); 
        
        //***PHONE FIELDS***
        List<List<sObject>> soblist = [FIND '(336) 222-7000' in PHONE FIELDS RETURNING Contact(firstname,lastname,phone)];      
        System.debug(soblist);
        
        //***SIDEBAR FIELDS***
        List<List<sObject>> soblist2 = [FIND '(336) 222-7000' in SIDEBAR FIELDS RETURNING Contact(firstname,lastname,phone)];      
        System.debug(soblist2);
    }
}