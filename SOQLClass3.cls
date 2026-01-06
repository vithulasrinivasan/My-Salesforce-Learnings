public class SOQLClass3 {
	public static void myMethod()
    {
        //***SOQL RETURN TYPES***
        //1.List<sObjects>
        //2.sObject
        //3.Integer - for eg: count the records
        //4.AggregateResult
        
        //***SOQL AGGREGATE FUNCTIONS***
        //Return type of aggregate function is a key value pair
        
        //***SUM***
        AggregateResult ar1 = [SELECT SUM(Amount) from Opportunity];
        System.debug('Result is '+ar1);
        
        //***MAX***
        AggregateResult ar2 = [SELECT MAX(Amount) from Opportunity];
        System.debug('Maximum is '+ar2);
        
        //***MIN***
        AggregateResult ar3 = [SELECT MIN(Amount) from Opportunity];
        System.debug('Minimum is '+ar3);
        
        //***COUNT***
        Integer i = [SELECT Count() from Opportunity];
        //will return the tot no of opportunities
        
        AggregateResult ar4 = [SELECT Count(ID) from Opportunity];
        //Same as above
        
        AggregateResult ar5 = [SELECT Count(Amount) from Opportunity];
        //will return the no of opportunities having value in amount field
        //and will not include the opportunity records having amount as null
        
        //***AVG***
        AggregateResult ar6 = [SELECT AVG(Amount) from Opportunity];
        System.debug('Average is '+ar6);
        
        //***COUNT DISTINCT***
        AggregateResult ar7 = [SELECT Count_Distinct(Amount) from Opportunity];
        
        //will return the no of opportunity records having unique amount value
        //and will also not include opportunities having null value in amount field
        
        //To access the value from aggregateresult object
        Integer i2 = (Integer)ar7.get('expr0');
    }
}