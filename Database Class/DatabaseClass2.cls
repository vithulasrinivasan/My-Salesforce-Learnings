public class DatabaseClass2 {
    public static void myMethod(){
        //***TRANSACTION CONTROL & ROLLBACK***
        
        Savepoint sp1 = Database.setSavepoint(); //state of the DB at this point of time in my code
        
        try{
            Opportunity o = [SELECT name,account.id, amount,ownerid from opportunity where name like 'V%' limit 1];
            decimal commision = o.amount * 0.20; //calculating the commision of the agent
            o.amount = o.amount + commision; //updating the amount of opportunity
            update o; //1st DB operation - updating the opportunity record in database
            
            Commision__c c = new Commision__c();
            c.Commision_amount__c = commision;
            c.agent__c = o.OwnerId; // to whom am i giving the commision and how much
            
            insert c; // 2nd DB operation
            
            Account acc2 = [select name from account where id= :o.AccountId];
            acc2.discount_percentage__c = 20;
            
            update acc2; //3rd DB operation
			
        }
        
        catch(exception e){
            Database.rollback(sp1);
        }
    }
}
