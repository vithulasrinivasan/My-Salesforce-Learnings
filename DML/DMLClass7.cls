public class DMLClass7 {
    public static void myMethod(){
        //***BEST PRACTICES***
        //1.Not exceeding the total number of allowed SOQL Queries.
        
        //Not Appropriate - DO NOT WRITE A SOQL QUERY INSIDE A LOOP
        //EXCEEDS THE GOVERNOR LIMITS
        
        list<account> aclist = [SELECT ID,Name from account where createddate= this_week];
        for(Account a:aclist){
            list<opportunity> oplist = [SELECT Name from opportunity where accountID= :a.id];
            for (opportunity o: oplist){
                system.debug('opportunity : '+ o.name + 'is on stage : '+ o.stagename);
            }
        }
        
        //Appropriate
        
        list<account> aclist2 = [SELECT ID,Name from account where createddate= this_week];
        list<opportunity> oplist2 = [SELECT Name from opportunity where accountID IN :aclist2];
		for (opportunity o: oplist2){
                system.debug('opportunity : '+ o.name + 'is on stage : '+ o.stagename);
            }
        
        //2.Exceeding the number of allowed DML statements.
        
        //Not Appropriate
        //COUNT OF DML STATEMENTS = 100
        for(integer i=0;i<100;i++){
            Account a = new Account(Name='acc'+i);
            insert a;
        }
        
        //Appropriate
        //COUNT OF DML STATEMENTS = 1
        List<account> acclist = new list<account>();
        for(integer i=0;i<100;i++){
            Account a = new Account(Name='acc'+i);
            acclist.add(a);
        }
        insert aclist;
    }
}