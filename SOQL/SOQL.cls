public class SOQL {
	public static void myMethod()
    {
        //Query Editor
        //***SELECT STATEMENT***
        //Basic Syntax of SOQL
        
        // SELECT {field API Name List} from {Object API Name}
        
        //Querying records from standard objects
        //Select Name from Account
        
        //Querying records from custom objects
        //Select Name from Student__c
        
        //Querying multiple fields together
        //Select Name, NumberOfEmployees, Active__c from Account
        //Select Name, Student_Name__c, Student_Email__c from Student__c
        //Select Student_Name__c, Registration_Fees__c from Student__c
        
        //Select * from Account - WILL NOT WORK IN APEX
        
        //***WHERE CLAUSE*** - To specify the conditions or criteria to fetch the records
        //Select Name from Account where NumberOfEmployees > 50
        
        //***OR***
        //Select Name, NumberOfEmployees from Account where Type='Prospect' OR Rating='Hot'
        //***AND***
    	//Select Name, NumberOfEmployees from Account where Type='Prospect' AND Rating='Hot'

        
    }
}