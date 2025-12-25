public class sObjectClass {
	public static void myMethod()
    {
        //***STANDARD OBJECTS***
        //Create an account sObject
        Account a1 = new Account(); //account-predefined
        
        //Create a contact sObject
        Contact c1 = new Contact();
        
        //***Assign field values to Account and Contact sObject***
        //Through constructor (Label , fieldname , apiname)
        
        Account a2 = new Account(Name='Amazon',NumberOfEmployees=120);
        Contact c2 = new Contact(firstName='Vithula',lastName='S',Languages__c='Tamil');
               
        //Through dot notation
        
        a2.Name='Flipkart';
        a2.NumberOfEmployees=3000;
        
        c2.firstName='Vithula';
        c2.lastName='S';
        c2.Languages__c='Tamil';
        
        //***CUSTOM OBJECTS***
        //Create a Student sObject
        
        //Student__c st1 = new Student__c(Student_Name__c='Vithula');
        //st1.Student_Name__c = 'Ajay';
        
        //Account a3;
        //a3=new Contact(); //WILL NOT WORK
        
        //***GENERIC sObjects*** - Multipurpose datatype
        
        sObject s1; //sObject is the SUPERCLASS for all the Object class
        s1 = new Account(); //WORKS
        s1 = new Contact(); //WORKS
        //s1 = new Student__c(); //WORKS
        
        sObject s4 = new Account(Name='Amazon');
        sObject s2 = new Contact(lastName='S');
        //sObject s3 = new Student__c(Student_Name__c='Vithula');
        
        //***TWIST with GENERIC sObjects***
        //SET A FIELD

        //s1.NumberOfEmployees = 50; //WILL NOT WORK
        //sObject class doesn't have NumberOfEmployees
        //put(fieldname, fieldvalue); - method
        
        s1.put('NumberOfEmployees',50);
        
        //ACCESS A FIELD VALUE
        //integer a = s1.NumberOfEmployees; //WILL NOT WORK
        
        Object objvalue = s1.get('NumberOfEmployees');
        System.debug((integer)objvalue);
    }
}