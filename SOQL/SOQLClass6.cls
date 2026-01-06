public class SOQLClass6 {
	public static void myMethod()
    {
        //***RELATIONSHIP QUERIES***
        //There are 2 types of relationship queries:-
		//1.Child to Parent relationship queries
		//2.Parent to Child relationship queries
		
        //***CHILD TO PARENT***
        //*STANDARD OBJECT
        //Fetch contact object records with name of the account with which it is associated along with numberofemployees with the account with which they are associated
        
        //NO JOINS IN SOQL
        //USE DOT NOTATION
        
        List<Contact> conlist = [SELECT firstname, lastname , Account.Name, Account.NumberOfEmployees from Contact];
        //Here Account is the parent object's reference which is relationship field's name on child object
        //Account is not the parent object's name , it is the relationship field's name which is created on to the contact object inorder to establish the relationship 
        
        //*CUSTOM OBJECT
        //List<Rating__c> ratlist = [SELECT Name, Rating_For__c, Rating_Out_Of_10__c, Student__r.Name, Student__r.Student_Email__c from Rating__c];
        //Here Student__r is the parent object's reference which is relationship field's name on child object + __r
        
        //***PARENT TO CHILD***
        //*STANDARD OBJECT
        List<Account> acclist = [SELECT Name, NumberOfEmployees, (SELECT lastName,Phone from CONTACTS) from ACCOUNT];
        //Here CONTACTS is the Child Relationship Name 
        //&
        //(SELECT lastName,Phone from CONTACTS) is a subquery/ innerquery
        
        //*CUSTOM OBJECT
        //List<Student__c> studentlist = [SELECT Name, Student_Name__c, (SELECT Rating_out_of_10__c, Rating_for__c from Ratings__r) from Student__c];
        //Here Ratings__r is the Child Relationship Name with __r
        //&
        //(SELECT Rating_out_of_10__c, Rating_for__c from Ratings__r) is the innerquery
        
        //Can we write more than 1 inner query?
        
        //***MULTILEVEL RELATIONSHIPS***
        
        //***CHILD TO PARENT***
        //*STANDARD OBJECT
        //1st Option
        List<OpportunityLineItem> opplinelist = [SELECT Name , Quantity, Opportunity.Name, Opportunity.Amount, Opportunity.Account.Name, Opportunity.Account.NumberOfEmployees from OpportunityLineItem];
        
        //2nd Option
        //List<Opportunity> oplist = [SELECT Name, Amount, Account.Name, Account.NumberOfEmployees, (SELECT Name, Quantity from OpportunityListItems) from Opportunity];
        //NOTE: A subquery cannot have a subquery inside it.
        //[SELECT Name, (SELECT Name,Amount,(SELECT Name from OpportunityLineItems)from Opportunities)from Account];
        //Above Query is not allowed
        
        //NOTE: In SOQL, From CHILD to PARENT, you can traverse upto a maximum of 5 levels when querying data from child object to parent
        //From PARENT to CHILD, only one level
            
        
        //*CUSTOM OBJECT
        //1st Option
        //List<BatchAttended__c> batattlist = [SELECT Name, Batch__r.Name, Batch__r.Course__r.Name, Batch__r.Course__r.Faculty__r.Name from BatchAttended__c];
        
        //2nd Option
        //List<Batch__c> batlist = [SELECT Name, Course__r.Name, Course__r.Faculty__r.Name, (SELECT Name from BatchesAttended__r) from Batch__c];
        //BatchesAttended__r is the Child Relationship Name
        
        //***PARENT TO CHILD***
        
        
    }
}