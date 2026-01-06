public class SOQLClass2 {
	public static void myMethod(String str)
    {
        //***SOQL Variable Binding***
        
        //Comparing static value
        List<Contact> conlist= [Select firstName,lastName, email from Contact where firstName='John'];
        
        //Comparing value dynamically
        List<Contact> conlist2= [Select firstName,lastName, email from Contact where firstName= :str];
		for(Contact c:conlist2)
        {
            System.debug(c.firstName+ c.lastName + c.email);
        }
    }
}