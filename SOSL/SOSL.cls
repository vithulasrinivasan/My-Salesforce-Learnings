public class SOSL {
	public static void myMethod()
    {
        //In Apex
        //Find 'What' IN [What type] Returning [Where]
        
        //In Query Editor
        //Find {What} IN [What type] Returning [Where]
        
        //eg
        // Find 'John' - Apex and Find {John} - QE
        
        // WHERE ?
        // Find {John} RETURNING Account, Contact
        
        // WHAT TYPE (Search Group) ?
        // Find {John} in Name Fields
        // Find {John} in Email Fields
        // Find {John} in Phone Fields
        // Find {John} in ALL Fields -> DEFAULT

        // RETURN WHICH FIELDS ? 
        // Find {JOHN} RETURNING Account(Name,Phone,NumberOfEmployees), Contact(Email,lastname), Student__c(Name, Student_Name__c)

    }
}