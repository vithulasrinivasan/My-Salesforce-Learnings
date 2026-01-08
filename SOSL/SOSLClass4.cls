public class SOSLClass4 {
	public static void myMethod()
    {
        //***CLAUSES IN SOSL***
        
        // WHERE CLAUSE
        List<List<sObject>> slist1 = [FIND 'Univ*' IN NAME FIELDS RETURNING Account(Name,BillingCountry WHERE NumberOfEmployees>500 AND CreatedDate<Today), Contact(firstname,lastname where firstname != null)];
        //NOTE: While using any clause, you must include a field list with at least one specific field
        
        //ORDER BY CLAUSE
        List<List<sObject>> slist2 = [FIND 'test' RETURNING Account(Name,Phone WHERE website!=null ORDER BY Name DESC), Contact(Name ORDER BY Name)];

        //LIMIT CLAUSE
		List<List<sObject>> slist3 = [FIND 'test' RETURNING Account(Name,Phone LIMIT 50)];
    }
}