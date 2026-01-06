public class SOQLClass4 {
	public static void myMethod()
    {
        //***SOQL Keyword***
        
        //IN - compare a single value with multiple values ie a collection at once
        //With LIST
        List<String> namelist = new List<String>{'John','Max','Jeff'};
        List<Contact> conlist1 = [SELECT firstname, lastname, email from Contact where name IN :namelist];    
        
        //With SET
        Set<ID> idset = new Set<ID>{'0036F00002bDj7DQAS','0036F00002bDj7KQAS'};
        List<Contact> conlist2 = [SELECT firstname, lastname , email from Contact where ID IN :idset];   
        
        //Note: Map cannot be used with IN keyword because it is not an iterable collection.
        
        //NOT - complements the result
        List<Contact> conlist3 = [SELECT firstname,lastname,email from Contact where name NOT IN :namelist];
        List<Contact> conlist4 = [SELECT firstname,lastname,email from Contact where ID NOT IN :idset];
        
        //LIKE - match a pattern
        List<Account> acclist = [SELECT Name from Account where name LIKE 'GenePoint'];
        
        //WILDCARDS:
        //1. % (Percentage) => 0 or multiple characters
        //2. _ (underscore) => single character
        List<Account> acclist1 = [SELECT Name from Account where name LIKE 'Burlington%'];
        List<Account> acclist2 = [SELECT Name from Account where name LIKE '%Oil%'];
        List<Account> acclist3 = [SELECT Name from Account where name LIKE '_Force'];

		//AND/OR
		List<Opportunity> opplist1 = [SELECT Name, Amount from Opportunity where Amount>100000 AND StageName = 'Closed - Won'];
		List<Opportunity> opplist2 = [SELECT Name, Amount from Opportunity where Amount>100000 OR StageName = 'Closed - Won'];

        //ORDER BY - Sorts the result and default = ASC
        List<Opportunity> opplist3 = [SELECT Name, Amount from Opportunity Order By Amount];
		//returns the list of opportunities sorted by the amount in ascending order
        
        List<Opportunity> opplist4 = [SELECT Name, Amount from Opportunity Order By Amount ASC];
        //same as above

        List<Opportunity> opplist5 = [SELECT Name, Amount from Opportunity Order By Amount DESC];
		//returns the list of opportunities sorted by the amount in descending order

		List<Opportunity> opplist6 = [SELECT Name, Amount from Opportunity Order By Amount NULLS FIRST];
		//returns the list of opportunities sorted by the amount and having nulls first(default)
        
        List<Opportunity> opplist7 = [SELECT Name, Amount from Opportunity Order By Amount NULLS LAST];
		//returns the list of opportunities sorted by the amount and having nulls last
		
        //GROUP BY - return type = list of aggregate result
        List<AggregateResult> agropp1 = [SELECT Stagename from opportunity GROUP BY stagename];
    	//return all the values we have in stagename field of opportunity
    	
		List<AggregateResult> agropp2 = [SELECT Count(ID) from opportunity GROUP BY stagename];
    	//return the total no of opportunities grouped by stage
    	 
        //COUNT() cannot be used with group by we need to put ID or any other field in it
        
		List<AggregateResult> agropp3 = [SELECT Count(ID),Stagename from opportunity GROUP BY stagename];
    	//we can only include the field in the query by which we are grouping the result
    	
		List<AggregateResult> agropp4 = [SELECT Max(Amount),Stagename from opportunity GROUP BY stagename];
    	//return the maximum amount within that particular stage
    	
		//We can use below mentioned aggregate functions with GROUP BY, like:
		//1.AVG()
		//2.COUNT()
		//3.MIN()
		//4.MAX()
		//5.SUM()
		//6.COUNT_DISTINCT()
		
        //LIMIT
        
		List<Account> acclist4 = [SELECT Name from Account LIMIT 10];
		//returns only 10 accounts
		
		List<Account> acclist5 = [SELECT Name from Account LIMIT 1];
		//list will have only 1 sobject
		
        Account a = [SELECT Name from Account LIMIT 1];
		//returns only one sobject
		
        //FOR UPDATE - semaphores - update the record fetching via the SOQL query
        
        List<Account> acclist6 = [SELECT name from account FOR UPDATE];
        
        //ALL ROWS - includes deleted records also in the SOQL Query
        List<Account> acclist7 = [SELECT Name from Account ALL ROWS];
        //returns all the account object records including the deleted ones
        
        List<Account> acclist8 = [SELECT Name from Account where isDeleted = true ALL ROWS];
        //returns all the deleted account object records only
        
        List<Account> acclist9 = [SELECT Name from Account where isDeleted = true];
        //will not return any record as we have not used ALL ROWS keyword
    }
}