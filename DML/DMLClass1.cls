public class DMLClass1 {
	public static void myMethod()
    {
        //***DML STANDALONE STATEMENTS***
        //1.INSERT - insert new records inside the DB
        //2.UPDATE - update the existing records if records exists in the DB
        //3.UPSERT - insert the record if record not exists in the DB and update the record if record already exists in the DB(update + insert)
        //4.DELETE - delete the record from the DB
        //5.UNDELETE - restore the record from the recycle bin to the DB
        //6.MERGE - merge 2 or 3 records together
        
        //Syntax
        // DMLStatement sObject / List of sObject
        
        //Insert
        List<Account> acclist = new List<Account>();
        for(integer i=1; i<=20; i++)
        {
            Account a = new Account(Name='Test Account'+i);
            acclist.add(a); //alt is - insert a -> Raises governor limits of the apex // NO DML or SOQL QUERIES INSIDE THE LOOP
        }
        insert acclist;
        acclist = [SELECT Name,NumberOfEmployees from Account where name like 'test%' order by name ];
		
		//Update
        for(Account a:acclist){
            a.name = 'update' + a.name;           
        }
		update acclist;        
        
        //Upsert
        //Record ID will determine if the record is already existing or not and ID will always be returned whether we mention it or not in the query
        for (Account a:acclist){
            a.NumberOfEmployees=10500;
        }
        for (integer i=1;i<=10;i++){
            Account a = new Account(Name = 'Upsert Account'+i); 
        }
        upsert acclist;
        
        //Delete
        delete acclist;
        
        //Undelete
        //To get the deleted sObjects from the recycle bin - use ALL ROWS from SOQL
        List<Account> acclist1 = [SELECT Name,NumberOfemployees from Account where name like 'up%' and isdeleted = true ALL ROWS];
        
        undelete acclist;
        
        //Merge - 2 operations
        //1.reparenting of all the records from the 2nd parent to the 1st parent
        //2.delete the 2nd parent
        Account a = acclist[0];
        Account b = acclist[1];
        merge a b;
    }
}