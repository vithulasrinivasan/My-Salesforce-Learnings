public class SOQLClass7 {
	public static void myMethod()
    {
        //***DYNAMIC SOQL***
        
        String s = 'Select Name from Account';
        List<sObject> aclist = Database.query(s);
        
        //Creating the query string dynamically
        String qr = 'Select ID';
        String []fieldlist = new List<String>();
        
        fieldlist.add('Name');
        fieldlist.add('NumberOfEmployees');
        fieldlist.add('Phone');
        
        String objname = 'Account';
        
        for (String f: fieldlist)
        {
            qr += ',' + f;
        } // qr = SELECT id, name, numberofemployees,phone
        
        qr += ' from ' + objname;
        // qr = SELECT id, name, numberofemployees,phone from account
        
        String s1 = String.escapeSingleQuotes(qr);
        List<sObject> list2 = Database.query(s1);
        System.debug(list2);
        
        //***QUERY EXCEPTION***
        String s2 = 'Select Name,Phonenumber from Account';
        List<sObject> list3 = Database.query(s2);
        //This will throw a query exception
    }
}